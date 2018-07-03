library verilog;
use verilog.vl_types.all;
entity cpu is
    port(
        rst             : in     vl_logic;
        start           : in     vl_logic;
        clock           : in     vl_logic;
        output          : out    vl_logic_vector(3 downto 0);
        led1            : out    vl_logic_vector(6 downto 0);
        led2            : out    vl_logic_vector(6 downto 0);
        op0             : out    vl_logic_vector(6 downto 0);
        op1             : out    vl_logic_vector(6 downto 0);
        op2             : out    vl_logic_vector(6 downto 0);
        op3             : out    vl_logic_vector(6 downto 0)
    );
end cpu;
