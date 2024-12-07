```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           count : out  INTEGER range 0 to 15);end entity;

architecture behavioral of counter is
  signal internal_count : UNSIGNED(3 downto 0) := (others => '0'); -- Use unsigned type for better overflow handling
begin
  process (clk, reset)
  begin
    if reset = '1' then
      internal_count <= (others => '0');
    elsif rising_edge(clk) then
      internal_count <= internal_count + 1;
    end if;
  end process;
  count <= to_integer(internal_count);
end architecture;
```