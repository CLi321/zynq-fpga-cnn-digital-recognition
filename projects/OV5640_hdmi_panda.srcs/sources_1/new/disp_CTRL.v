
module disp_CTRL #(
  parameter IMAGE_WIDTH     = 640,
  parameter IMAGE_HEIGHT    = 480
)(
    input   Clk,
    input   Reset_n,
    input    wire        [3:0]  rd_the_data, 
    input   Data_Req,
    input [11:0]  H_Addr,  
    input [11:0]  V_Addr,
    output  disp_ram_en,
    output reg [23:0]  Disp_Data
);

assign  disp_ram_en = (Data_Req && ( (H_Addr >= IMAGE_WIDTH - 64) && (H_Addr < IMAGE_WIDTH)) && ( (V_Addr >= 0) && (V_Addr < 64)) ) ? 1 : 0;
    
    reg [10:0] ram_en;
    initial  ram_en = 10'd0;
    always @ (*) begin
        case (rd_the_data)
            0 : ram_en[0] = disp_ram_en;
            1 : ram_en[1] = disp_ram_en;            
            2 : ram_en[2] = disp_ram_en;
            3 : ram_en[3] = disp_ram_en;  
            4 : ram_en[4] = disp_ram_en;
            5 : ram_en[5] = disp_ram_en;            
            6 : ram_en[6] = disp_ram_en;
            7 : ram_en[7] = disp_ram_en;           
            8 : ram_en[8] = disp_ram_en;    
            9 : ram_en[9] = disp_ram_en;  
            default : ram_en[10] = disp_ram_en;  
        endcase
    end 
    
    
    reg  [23:0]  disp_ram_dout;
    wire  [23:0]  ram_dout[10:0];
    always @ (*) begin
        case (rd_the_data)
            0 : disp_ram_dout = ram_dout[0];
            1 : disp_ram_dout = ram_dout[1];            
            2 : disp_ram_dout = ram_dout[2];
            3 : disp_ram_dout = ram_dout[3];  
            4 : disp_ram_dout = ram_dout[4];
            5 : disp_ram_dout = ram_dout[5];            
            6 : disp_ram_dout = ram_dout[6];
            7 : disp_ram_dout = ram_dout[7];           
            8 : disp_ram_dout = ram_dout[8];    
            9 : disp_ram_dout = ram_dout[9]; 
            default : disp_ram_dout = ram_dout[10];  
        endcase
    end
    
    reg  [11:0]  disp_ram_addr;
    reg  [11:0]  ram_addr[10:0];
    always @ (*) begin
        case (rd_the_data)
            0 : ram_addr[0] = disp_ram_addr;
            1 : ram_addr[1] = disp_ram_addr;            
            2 : ram_addr[2] = disp_ram_addr;
            3 : ram_addr[3] = disp_ram_addr;  
            4 : ram_addr[4] = disp_ram_addr;
            5 : ram_addr[5] = disp_ram_addr;            
            6 : ram_addr[6] = disp_ram_addr;
            7 : ram_addr[7] = disp_ram_addr;           
            8 : ram_addr[8] = disp_ram_addr;    
            9 : ram_addr[9] = disp_ram_addr; 
            default : ram_addr[10] = disp_ram_addr;  
        endcase
    end    
            
ROM_0 ROM_0 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[0]),      // input wire ena
  .addra(ram_addr[0]),  // input wire [11 : 0] addra
  .douta(ram_dout[0])  // output wire [23 : 0] douta
);
ROM_1 ROM_1 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[1]),      // input wire ena
  .addra(ram_addr[1]),  // input wire [11 : 0] addra
  .douta(ram_dout[1])  // output wire [23 : 0] douta
);
ROM_2 ROM_2 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[2]),      // input wire ena
  .addra(ram_addr[2]),  // input wire [11 : 0] addra
  .douta(ram_dout[2])  // output wire [23 : 0] douta
);
ROM_3 ROM_3 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[3]),      // input wire ena
  .addra(ram_addr[3]),  // input wire [11 : 0] addra
  .douta(ram_dout[3])  // output wire [23 : 0] douta
);    
ROM_4 ROM_4 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[4]),      // input wire ena
  .addra(ram_addr[4]),  // input wire [11 : 0] addra
  .douta(ram_dout[4])  // output wire [23 : 0] douta
);
ROM_5 ROM_5 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[5]),      // input wire ena
  .addra(ram_addr[5]),  // input wire [11 : 0] addra
  .douta(ram_dout[5])  // output wire [23 : 0] douta
);
ROM_6 ROM_6 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[6]),      // input wire ena
  .addra(ram_addr[6]),  // input wire [11 : 0] addra
  .douta(ram_dout[6])  // output wire [23 : 0] douta
);
ROM_7 ROM_7 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[7]),      // input wire ena
  .addra(ram_addr[7]),  // input wire [11 : 0] addra
  .douta(ram_dout[7])  // output wire [23 : 0] douta
);   
ROM_8 ROM_8 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[8]),      // input wire ena
  .addra(ram_addr[8]),  // input wire [11 : 0] addra
  .douta(ram_dout[8])  // output wire [23 : 0] douta
);
ROM_9 ROM_9 (
  .clka(Clk),    // input wire clka
  .ena(ram_en[9]),      // input wire ena
  .addra(ram_addr[9]),  // input wire [11 : 0] addra
  .douta(ram_dout[9])  // output wire [23 : 0] douta
);   
ROM_empty ROM_empty (
  .clka(Clk),    // input wire clka
  .ena(ram_en[10]),      // input wire ena
  .addra(ram_addr[10]),  // input wire [11 : 0] addra
  .douta(ram_dout[10])  // output wire [23 : 0] douta
);   
   
//定义颜色编码
localparam 
    BLACK       = 24'h000000,   //黑色
    BLUE        = 24'h0000FF,   //蓝色
    RED         = 24'hFF0000,   //红色
    PURPPLE     = 24'hFF00FF,   //紫色
    GREEN       = 24'h00FF00,   //绿色
    CYAN        = 24'h00FFFF,   //青色
    YELLOW      = 24'hFFFF00,   //黄色
    WHITE       = 24'hFFFFFF;   //白色   

    always @ (posedge Clk or negedge Reset_n) begin
        if (!Reset_n)
            disp_ram_addr <= 0;
        else if (disp_ram_en)
            disp_ram_addr <= disp_ram_addr + 1;
		else          
            disp_ram_addr <= disp_ram_addr; 
    end   
     
    always @ (posedge Clk or negedge Reset_n) begin
		if (!Reset_n) 
            Disp_Data <= BLACK;
        else if (disp_ram_en)
            Disp_Data <= disp_ram_dout;  
		else          
            Disp_Data <= BLACK;
    end
    
    
endmodule
