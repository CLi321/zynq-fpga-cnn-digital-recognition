/*
 * main.c
 *
 *  Created on: 2024年7月22日
 *      Author: 51721
 */



// 系统头文件
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>


// Xilinx头文件
#include "xil_types.h"
#include "sleep.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "xscutimer.h"


#include "xparameters_ps.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"


#include "xaxidma.h"
#include "pl_bram_rd.h"
#include "xbram.h"
#include "param_init.h"





#define  DDR_BASEARDDR      		(XPAR_DDR_MEM_BASEADDR + 0x01800000)

#define  DMA_DEV_ID					XPAR_AXIDMA_0_DEVICE_ID
#define  DMA_RX_BUFFER_BASE			(XPAR_DDR_MEM_BASEADDR + 0x10000000)

#define	 BRAM_BASEADDR				0x40000000


#define  PL_BRAM_BASE        		XPAR_PL_BRAM_RD_0_S00_AXI_BASEADDR   //PL_RAM_RD基地址
#define  PL_BRAM_START       		PL_BRAM_RD_S00_AXI_SLV_REG0_OFFSET   //RAM读开始寄存器地址
#define  PL_BRAM_START_ADDR  		PL_BRAM_RD_S00_AXI_SLV_REG1_OFFSET   //RAM起始寄存器地址
#define  PL_BRAM_LEN         		PL_BRAM_RD_S00_AXI_SLV_REG2_OFFSET   //PL读RAM的深度


//////////////////////////////////////////////////////////////////////////////////////////////


#define  IMAGE_WIDTH            	800
#define  IMAGE_HEIGHT           	600

#define  BRAM_START_ADDR          	0  //RAM起始地址 范围:0~1023
#define  BRAM_DATA_BYTE      	 	4  //BRAM数据字节个数

#define	 DMA_DATA_BYTE				4  //32位的数据,4个字节
#define	 DMA_BUF_SIZE				(1024 + 5)


XAxiDma  axi_dma_0_inst;
XScuGic  scugic_inst;

uint8_t  dma_rx_done;
static uint32_t *DMA_RxBufferPtr;



//函数声明
void str_wr_bram(int predict_num);
void axi_dma_init();
void axi_dma_rx_intr_handler(void *CallBackRef);
void interrupt_init();

//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////


//main函数
int main()
{

    float *cnn_param_w = (float *)0x2000000;
	float *cnn_param_b = (float *)0x2000C00;


    conv_param_init();
    float *conv_rlst = (float *)0x2000D00;
    float conv_temp;

    float pool_temp = 0;
    float *pool_rslt = (float *)0x2020000;

    float *affine1_w = (float *)0x2025000;
    float *affine1_b = (float *)0x21CB000;
    affine1_param_init();
    float *affine1_rslt = (float *)0x21CC000;
    float affine1_temp;

    // 输出层参数地址
    float *affine2_w = (float *)0x21CC200;
    float *affine2_b = (float *)0x21CD200;
    float affine2_temp;
    affine2_param_init();
    float affine2_rslt[10];

    // 比较输出层的最大值
    float temp = -100;
    int predict_num;


//////////////////////////////////////////////////////////////////////////////////////////////

    DMA_RxBufferPtr = (uint32_t *)DMA_RX_BUFFER_BASE;

    int DMA_receive_index;
    uint32_t *cmos_data_28_28 = DMA_RxBufferPtr;
    uint8_t  DMA_receive_data[784];

	interrupt_init();
	axi_dma_init();

    while(1)
    {

    	XAxiDma_SimpleTransfer(&axi_dma_0_inst, (UINTPTR)DMA_RxBufferPtr, DMA_BUF_SIZE*DMA_DATA_BYTE, XAXIDMA_DEVICE_TO_DMA);
    	Xil_DCacheFlushRange((UINTPTR)DMA_RxBufferPtr, DMA_BUF_SIZE*DMA_DATA_BYTE); //刷新Data Cache
    	while(!dma_rx_done);


    	DMA_receive_index = 0;
        for(int v_cnt=0; v_cnt<28; v_cnt++)
        {
            for(int h_cnt=0; h_cnt<28; h_cnt++)
            {
            	DMA_receive_data[DMA_receive_index] = 0x000000ff & cmos_data_28_28[v_cnt*28+h_cnt];
            	DMA_receive_index++;
            }
        }


//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////

		///////////////////////////////////////////////
		// 卷积层计算
		///////////////////////////////////////////////
		for(int n=0; n<30; n++)
		{
			for(int row=0; row<=23; row++)
			{
				for(int col=0; col<=23; col++)
				{
					conv_temp = 0;
					for(int x=0; x<5; x++)
					{
						for(int y=0; y<5; y++)
						{
							conv_temp += DMA_receive_data[row*28+col+x*28+y] * cnn_param_w[x*5+y+n*25];
						}
					}
					conv_temp += cnn_param_b[n];

					// 激活函数
					if(conv_temp > 0)
						conv_rlst[row*24+col+n*24*24] = conv_temp;
					else
						conv_rlst[row*24+col+n*24*24] = 0;
				}
			}
		}
		///////////////////////////////////////////////
		// 池化层计算
		///////////////////////////////////////////////
	    // 池化层实现
		for(int n=0; n<30; n++)
		{
			for(int row=0; row<24; row=row+2)
			{
				for(int col=0; col<24; col=col+2)
				{
					pool_temp = 0;
					for(int x=0; x<2; x++)
					{
						for(int y=0; y<2; y++)
						{
							if(pool_temp <= conv_rlst[row*24+col+x*24+y+n*576])
								pool_temp = conv_rlst[row*24+col+x*24+y+n*576];
						}
					}
					pool_rslt[(row/2)*12+col/2+n*144] = pool_temp;
				}
			}
		}
		///////////////////////////////////////////////
		// 隐藏层计算
		///////////////////////////////////////////////
		// 隐藏层参数地址
		for(int n=0; n<100; n++)
		{
			affine1_temp = 0;
			for(int i=0; i<4320; i++)
			{
				affine1_temp = affine1_temp + pool_rslt[i] * affine1_w[i+4320*n];
			}
			affine1_temp = affine1_temp + affine1_b[n];
			// 激活函数
			if(affine1_temp > 0)
				affine1_rslt[n] = affine1_temp;
			else
				affine1_rslt[n]	= 0;
		}
		///////////////////////////////////////////////
		// 输出层计算
		///////////////////////////////////////////////
		temp = -100;
		for(int n=0; n<10; n++)
		{
			affine2_temp = 0;
			for(int i=0; i<100;i++)
			{
				affine2_temp = affine2_temp + affine2_w[i+100*n] * affine1_rslt[i];
			}
			affine2_rslt[n] = affine2_temp;

			if(temp <= affine2_rslt[n])
			{
				temp = affine2_rslt[n];
				predict_num = n;
			}
		}

		str_wr_bram(predict_num);

    }
    return 0;
}


// 写入BRAM
void str_wr_bram(int predict_num)
{

	XBram_WriteReg(BRAM_BASEADDR, BRAM_DATA_BYTE*BRAM_START_ADDR, predict_num) ;

    //设置BRAM写入的字符串长度
    PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_LEN , BRAM_DATA_BYTE*1) ;
    //设置BRAM的起始地址
    PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_START_ADDR, BRAM_DATA_BYTE*BRAM_START_ADDR) ;
    //拉高BRAM开始信号
    PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_START , 1) ;
    //拉低BRAM开始信号
    PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_START , 0) ;
}



void axi_dma_init()
{
	XAxiDma_Config *axi_dma_cfg_ptr;
	axi_dma_cfg_ptr = XAxiDma_LookupConfig(DMA_DEV_ID);
	XAxiDma_CfgInitialize(&axi_dma_0_inst, axi_dma_cfg_ptr);
	// interrupt
	XScuGic_SetPriorityTriggerType(&scugic_inst, XPAR_FABRIC_AXIDMA_0_VEC_ID, 0xA0, 0x3);
	XScuGic_Connect(&scugic_inst, XPAR_FABRIC_AXIDMA_0_VEC_ID, (Xil_InterruptHandler) axi_dma_rx_intr_handler, &axi_dma_0_inst);
	XScuGic_Enable(&scugic_inst, XPAR_FABRIC_AXIDMA_0_VEC_ID);
	XAxiDma_IntrEnable(&axi_dma_0_inst, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
}


void axi_dma_rx_intr_handler(void *CallBackRef)
{
	int timeout;
	u32 irq_status;
	XAxiDma *axidma_inst = (XAxiDma *)CallBackRef;
	irq_status = XAxiDma_IntrGetIrq(axidma_inst, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrAckIrq(axidma_inst, irq_status, XAXIDMA_DEVICE_TO_DMA);
	if ((irq_status & XAXIDMA_IRQ_ERROR_MASK))
	{
		XAxiDma_Reset(axidma_inst);
		timeout = 10000;
		while(timeout)
		{
			if (XAxiDma_ResetIsDone(axidma_inst)) break;
			timeout--;
		}
		return;
	}
	if ((irq_status & XAXIDMA_IRQ_IOC_MASK))
	{
		dma_rx_done = 1;
	}
}

void interrupt_init()
{
	XScuGic_Config *intc_cfg_ptr;
	intc_cfg_ptr = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
	XScuGic_CfgInitialize(&scugic_inst, intc_cfg_ptr, intc_cfg_ptr->CpuBaseAddress);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &scugic_inst);
	Xil_ExceptionEnable();
}





