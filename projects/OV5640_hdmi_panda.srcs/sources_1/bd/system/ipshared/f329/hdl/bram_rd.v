module bram_rd(
    input   wire             clk         , //时钟信号
    input   wire             rst_n       , //复位信号
    input   wire             start_rd    , //读开始信号
    input   wire [31:0]      start_addr  , //读起始地址  
    input   wire [31:0]      rd_len      , //读数据的长度
    output  wire [31:0]      the_rd_data , //读出的数据
    
    //RAM端口
    output  wire             ram_clk     , //RAM时钟
    input   wire [31:0]      ram_rd_data , //RAM中读出的数据
    output  reg              ram_en      , //RAM使能信号
    output  reg  [31:0]      ram_addr    , //RAM地址
    output  reg  [3:0]       ram_we      , //RAM读写控制信号
    output  reg  [31:0]      ram_wr_data , //RAM写数据
    output  wire             ram_rst       //RAM复位信号,高电平有效
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

//延时两拍，采start_rd信号的上升沿
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

//根据读开始信号,从RAM中读出数据
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
                if(ram_addr - start_addr == rd_len - 4) begin  //数据读完
                    ram_en <= 1'b0;
                    flow_cnt <= flow_cnt + 2'd1;
                end
                else
                    ram_addr <= ram_addr + 32'd4;              //地址累加4
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
