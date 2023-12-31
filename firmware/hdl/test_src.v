module const_out (
    input in_test,
    output out_test
);
    
    always @(*) begin 
        if (in_test)
            out_test = 0;
    end
endmodule 