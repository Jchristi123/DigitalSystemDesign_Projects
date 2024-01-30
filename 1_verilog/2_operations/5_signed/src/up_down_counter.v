module up_down_counter (
    input clk,
    input signed [7:0] a,
    input signed [7:0] b,
    input up,
    input dn,
    input rst,
    output reg signed [7:0] q
);

wire signed [7:0] overflow;

assign overflow = (up) ? (q+b) : (q-b);

always @(posedge clk) begin
    if (rst) begin
        q <= a;
    end else begin
        if (up) begin
            if (q[7] != b[7] || q[7] == overflow[7]) begin
                q <= overflow;
            end
        end 
        if (dn) begin
            if (q[7] == b[7] || q[7] == overflow[7]) begin
                q <= overflow;
            end
            
        end
    end
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
