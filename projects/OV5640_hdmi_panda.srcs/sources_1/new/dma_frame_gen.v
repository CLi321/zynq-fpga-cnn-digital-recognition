
module dma_frame_gen #(
    parameter TRANS_NUM = 32'd1550336 //1514*1024
)(
    input resetn,
    input clk,
    input trans_start,
    input [31:0] the_data,
    // axi-stream
    output [31:0] m_axis_tdata,
    output [3:0] m_axis_tkeep,
    output m_axis_tlast,
    output m_axis_tvalid,
    input m_axis_tready
    );
    
    assign m_axis_tkeep = 4'b1111;
    reg trans_start_0, trans_start_1;
    wire pos_trans_start;
    assign pos_trans_start = trans_start_0 & (~trans_start_1);
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            trans_start_0 <= 1'd0;
            trans_start_1 <= 1'd0;
        end
        else begin
            trans_start_0 <= trans_start;
            trans_start_1 <= trans_start_0;
        end
    end
    localparam IDLE = 2'b00;
    localparam TRANS = 2'b01;
    localparam DONE = 2'b10;
    reg [1:0] state;
    reg [31:0] trans_cnt;
    reg [31:0] r_tdata;
    reg r_tvalid, r_tlast;
    always @(posedge clk or negedge resetn) begin
        if(!resetn) begin
            state <= IDLE;
            r_tdata <= 32'd0;
            r_tvalid <= 1'b0;
        end
        else begin
            r_tdata <= 32'd0;
            r_tvalid <= 1'b0;
            case(state)
                IDLE: begin
                    if(pos_trans_start && m_axis_tready) begin
                        state <= TRANS;
                    end
                    else begin
                        state <= IDLE;
                    end
                end
                TRANS: begin
                    if(trans_cnt < TRANS_NUM) begin
                        state <= TRANS;
                        r_tvalid <= 1'b1;
                        r_tdata <= the_data;
                    end
                    else begin
                        state <= DONE;
                    end
                end
                DONE: begin
                    state <= IDLE;
                end
                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end
    always @(posedge clk or negedge resetn) begin
        if(!resetn) begin
            r_tlast <= 1'b0;
        end
        else begin
            if(state == TRANS && trans_cnt == TRANS_NUM-1) begin
                r_tlast <= 1'b1;
            end
            else begin
                r_tlast <= 1'b0;
            end
        end
    end
    always @(posedge clk or negedge resetn) begin
        if(!resetn) begin
            trans_cnt <= 0;
        end
        else begin
            if(state == TRANS) begin
                trans_cnt <= trans_cnt + 1;
            end
            else begin
                trans_cnt <= 32'd0;
            end
        end
    end
    assign m_axis_tdata = r_tdata;
    assign m_axis_tlast = r_tlast;
    assign m_axis_tvalid = r_tvalid;
    
    
endmodule

