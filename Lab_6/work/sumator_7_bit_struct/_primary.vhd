library verilog;
use verilog.vl_types.all;
entity sumator_7_bit_struct is
    port(
        A               : in     vl_logic_vector(6 downto 0);
        B               : in     vl_logic_vector(6 downto 0);
        Cin             : in     vl_logic;
        S               : out    vl_logic_vector(6 downto 0);
        Cout            : out    vl_logic
    );
end sumator_7_bit_struct;
