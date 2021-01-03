## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## NO CLOCK USED IN THIS DESIGN

 
## Switches
set_property PACKAGE_PIN V17 [get_ports {a[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property PACKAGE_PIN V16 [get_ports {a[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property PACKAGE_PIN W16 [get_ports {a[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property PACKAGE_PIN W17 [get_ports {a[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property PACKAGE_PIN W15 [get_ports {a[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[4]}]
set_property PACKAGE_PIN V15 [get_ports {a[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[5]}]
set_property PACKAGE_PIN W14 [get_ports {a[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[6]}]
set_property PACKAGE_PIN W13 [get_ports {a[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a[7]}]
set_property PACKAGE_PIN V2 [get_ports {b[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
set_property PACKAGE_PIN T3 [get_ports {b[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property PACKAGE_PIN T2 [get_ports {b[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property PACKAGE_PIN R3 [get_ports {b[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property PACKAGE_PIN W2 [get_ports {b[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[4]}]
set_property PACKAGE_PIN U1 [get_ports {b[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[5]}]
set_property PACKAGE_PIN T1 [get_ports {b[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[6]}]
set_property PACKAGE_PIN R2 [get_ports {b[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b[7]}]
 

## LEDs
set_property PACKAGE_PIN U16 [get_ports {q[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[0]}]
set_property PACKAGE_PIN E19 [get_ports {q[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[1]}]
set_property PACKAGE_PIN U19 [get_ports {q[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[2]}]
set_property PACKAGE_PIN V19 [get_ports {q[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[3]}]
set_property PACKAGE_PIN W18 [get_ports {q[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[4]}]
set_property PACKAGE_PIN U15 [get_ports {q[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[5]}]
set_property PACKAGE_PIN U14 [get_ports {q[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[6]}]
set_property PACKAGE_PIN V14 [get_ports {q[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q[7]}]
set_property PACKAGE_PIN V13 [get_ports {w[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[0]}]
set_property PACKAGE_PIN V3 [get_ports {w[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[1]}]
set_property PACKAGE_PIN W3 [get_ports {w[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[2]}]
set_property PACKAGE_PIN U3 [get_ports {w[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[3]}]
set_property PACKAGE_PIN P3 [get_ports {w[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[4]}]
set_property PACKAGE_PIN N3 [get_ports {w[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[5]}]
set_property PACKAGE_PIN P1 [get_ports {w[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[6]}]
set_property PACKAGE_PIN L1 [get_ports {w[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {w[7]}]
	