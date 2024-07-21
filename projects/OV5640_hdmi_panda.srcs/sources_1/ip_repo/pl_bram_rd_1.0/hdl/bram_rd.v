module bram_rd(
    input   wire             clk         , //ʱ���ź�
    input   wire             rst_n       , //��λ�ź�
    input   wire             start_rd    , //����ʼ�ź�
    input   wire [31:0]      start_addr  , //����ʼ��ַ  
    input   wire [31:0]      rd_len      , //�����ݵĳ���
    output  wire [31:0]      the_rd_data , //����������
    
    //RAM�˿�
    output  wire             ram_clk     , //RAMʱ��
    input   wire [31:0]      ram_rd_data , //RAM�ж���������
    output  reg              ram_en      , //RAMʹ���ź�
    output  reg  [31:0]      ram_addr    , //RAM��ַ
    output  reg  [3:0]       ram_we      , //RAM��д�����ź�
    output  reg  [31:0]      ram_wr_data , //RAMд����
    output  wire             ram_rst       //RAM��λ�ź�,�ߵ�ƽ��Ч
);

//reg define
reg  [1:0]   flow_cnt;
reg          start_rd_d0;
reg          start_rd_d1;

//wire define
wire         pos_start_rd;

//*****************************************************
//**                  main code
//*****************************************************

assign  ram_rst = 1'b0;
assign  ram_clk = clk ;
assign pos_start_rd = ~start_rd_d1 & start_rd_d0;

//��ʱ���ģ���start_rd�źŵ�������
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        start_rd_d0 <= 1'b0;   
        start_rd_d1 <= 1'b0; 
    end
    else begin
        start_rd_d0 <= start_rd;   
        start_rd_d1 <= start_rd_d0;     
    end
end

//���ݶ���ʼ�ź�,��RAM�ж�������
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        flow_cnt <= 2'd0;
        ram_en <= 1'b0;
        ram_addr <= 32'd0;
        ram_we <= 4'd0;
    end
    else begin
        case(flow_cnt)
            2'd0 : begin
                if(pos_start_rd) begin
                    ram_en <= 1'b1;
                    ram_addr <= start_addr;
                    flow_cnt <= flow_cnt + 2'd1;
                end
            end
            2'd1 : begin
                if(ram_addr - start_addr == rd_len - 4) begin  //���ݶ���
                    ram_en <= 1'b0;
                    flow_cnt <= flow_cnt + 2'd1;
                end
                else
                    ram_addr <= ram_addr + 32'd4;              //��ַ�ۼ�4
            end
            2'd2 : begin
                ram_addr <= 32'd0; 
                flow_cnt <= 2'd0;
            end
        endcase    
    end
end

    assign  the_rd_data = ram_rd_data;
    
    
endmodule
