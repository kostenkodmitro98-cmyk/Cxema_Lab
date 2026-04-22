delete wave *

add wave -radix hexadecimal /D
add wave -radix binary /A
add wave -radix hexadecimal /Q0 /Q1 /Q2 /Q3 /Q4
force -freeze /D 4'hA 0
force -freeze /A 3'b000 0
run 50 ns
force -freeze /A 3'b001 0
run 50 ns
force -freeze /A 3'b010 0
run 50 ns
force -freeze /A 3'b011 0
run 50 ns
force -freeze /A 3'b100 0
run 50 ns
force -freeze /A 3'b111 0
run 50 ns
wave zoom full