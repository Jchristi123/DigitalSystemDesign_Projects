`timescale 1ns / 1ps

module calculator(
input clk,

//keypad
input [3:0] row,
output [3:0] col,

//memory
input select_memory,

//add_sub
input rst,
output overflow,

//debouncer
input up,
input dn,
input load_btn,
input save_btn,

//keycheck
input select,
input selectsev,

//7 SEGMENT
output reg [6:0] seg,
output reg [3:0] an
);

wire rst_l;
assign rst_l = ~rst;
    

wire [15:0] keypad;
wire [3:0] check;
wire [7:0] q;

wire up_btn_db;
wire dn_btn_db;
wire load_btn_db;
wire save_btn_db;

wire [6:0] seg1;
wire [6:0] seg2;
wire [3:0] an1;
wire [3:0] an2;

reg [15:0] temp;
reg [7:0] a;
reg [7:0] b;


//up debouncer
debouncer debouncer1(
    .clk(clk),
    .btn(up),
    .rst_l(rst_l),
    .btn_db(up_btn_db)
);

//dn debouncer
debouncer debouncer2(
    .clk(clk),
    .btn(dn),
    .rst_l(rst_l),
    .btn_db(dn_btn_db)
);

//load debouncer
debouncer debouncer3(
    .clk(clk),
    .btn(load_btn),
    .rst_l(rst_l),
    .btn_db(load_btn_db)
);

//save debouncer
debouncer debouncer4(
    .clk(clk),
    .btn(save_btn),
    .rst_l(rst_l),
    .btn_db(save_btn_db)
);

//keypad
keypad #(.N(300_000)) kypd
 (
 .clk(clk),
 .rst_l(rst_l),
 .row(row),
 .col(col),
 .keys(keypad)
 );


keycheck keycheck1(
    .keys(keypad),
    .a(check)
);


//add or subtract
add_sub add_sub1(
    .clk(clk),
    .a(a),
    .b(b),
    .up(up),
    .dn(dn),
    .rst(rst),
    .q(q),
    .overflow(overflow)
);

//show output on 7 seg
seg_4_display seg_4_display1(
    .clk(clk),
    .rst_l(rst_l),
    .a1(q[3:0]),
    .a2(q[7:4]),
    .a3(4'b0000),
    .a4(4'b0000),
    .seg(seg1),
    .ANout(an1)
);

//show a or b on 7 seg
seg_4_display seg_4_display2(
    .clk(clk),
    .rst_l(rst_l),
    .a1(b[3:0]),
    .a2(b[7:4]),
    .a3(a[3:0]),
    .a4(a[7:4]),
    .seg(seg2),
    .ANout(an2)
);

//switch between output and input on 7 seg
always@(posedge clk) begin
    if(selectsev == 1) begin
        seg <= seg1;
        an <= an1;
    end
    else begin
        seg <= seg2;
        an <= an2;
    end
end

//memory
always @(posedge save_btn_db) begin
    if (save_btn_db == 1) begin
        temp <= q;
    end
end

always @(posedge clk, negedge rst_l) begin //load A or B with keypad or temp
        if (!rst_l) begin
            a <= 0;
            b <= 0;
        end
        else begin  
            if(select_memory == 0 && load_btn_db == 1) begin
                if (select == 1) begin
                    if (a == 0) begin
                        a[3:0] <= check;
                    end
                else begin
                    a <= {a[3:0], check};
                    end
                end
                else begin
                   if (b == 0) begin
                        b[3:0] <= check;
                   end
                    else begin
                        b <= {b[3:0],check};
                    end
                end
            end
            else if (select_memory == 1 && load_btn_db == 1) begin
                if (select) begin
                    a <= temp;
                end
                else begin
                    b <= temp;
                end
            end  
        end
    end


endmodule