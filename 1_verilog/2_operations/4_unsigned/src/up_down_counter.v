module up_down_counter (
    input clk,
    input [7:0] a,
    input [7:0] b,
    input up,
    input dn,
    input rst,
    output reg [7:0] q
    //output reg overflow
);

reg [7:0] count;
reg overflow;

initial begin
    count = 0;
    overflow = 0;
    q = 0;
end

always @(posedge clk) begin
    if (rst) begin
        count <= a;
        overflow <= 0;
    end else begin
        if (up) begin
            if (count + b > 255) begin
                overflow <= 1;
            end else begin
                overflow <= 0;
                count <= count + b;
            end
        end else if (dn) begin
            if (count < b) begin
                overflow <= 1;
            end else begin
                overflow <= 0;
                count <= count - b;
            end
            
        end
    end
    q <= count;
end
  
    // reg [7:0] count;

    // always @(posedge clk) begin
    //     if (rst) begin
    //         count <= a;
    //     end else if (up) begin
    //         count <= count + b;
    //     end else if (dn) begin
    //         count <= count - b;
    //     end
    // end
    // assign q = count;

endmodule
