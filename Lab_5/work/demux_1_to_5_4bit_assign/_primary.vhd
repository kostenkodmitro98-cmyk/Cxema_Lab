library verilog;
use verilog.vl_types.all;
entity demux_1_to_5_4bit_assign is
    port(
        D               : in     vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(2 downto 0);
        Q0              : out    vl_logic_vector(3 downto 0);
        Q1              : out    vl_logic_vector(3 downto 0);
        Q2              : out    vl_logic_vector(3 downto 0);
        Q3              : out    vl_logic_vector(3 downto 0);
        Q4              : out    vl_logic_vector(3 downto 0)
    );
end demux_1_to_5_4bit_assign;
