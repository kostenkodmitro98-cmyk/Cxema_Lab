library verilog;
use verilog.vl_types.all;
entity demux_1_to_5_4bit is
    port(
        in_data         : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        y0              : out    vl_logic_vector(3 downto 0);
        y1              : out    vl_logic_vector(3 downto 0);
        y2              : out    vl_logic_vector(3 downto 0);
        y3              : out    vl_logic_vector(3 downto 0);
        y4              : out    vl_logic_vector(3 downto 0)
    );
end demux_1_to_5_4bit;
