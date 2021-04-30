module latchsr( input wire Set, Reset, output reg m_on);
    always @(Set or Reset) begin
        if(Reset && !Set)
            begin
                m_on <= 0;
            end 
        else if(Set && !Reset)
            begin
                m_on<= 1;
            end
        else if(!Set && !Reset)
            begin
                m_on <= m_on;
            end
    end
endmodule
