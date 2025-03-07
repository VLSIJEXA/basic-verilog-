


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fuladder_beh is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end fuladder_beh;

architecture Behavioral of fuladder_beh is
component halfadder_dataflow 
    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           carry1 : out STD_LOGIC;
           sum1 : out STD_LOGIC);
           end component;
           
component or_gate
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : out STD_LOGIC);
end component;


signal s1,s2,s3:std_logic;
begin
lab1:halfadder_dataflow port map( a1=>a,b1=>b,sum1=>s1,carry1=>s2);

lab2:halfadder_dataflow port map( a1=>s1,b1=>c,sum1=>sum,carry1=>s3);

lab3:or_gate port map( p=>s3,q=>s2,r=> carry);

end Behavioral;
