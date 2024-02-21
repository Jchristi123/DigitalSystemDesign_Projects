## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]                         
    set_property IOSTANDARD LVCMOS33 [get_ports clk]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports {volume[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[0]}]
set_property PACKAGE_PIN V16 [get_ports {volume[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[1]}]
set_property PACKAGE_PIN W16 [get_ports {volume[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[2]}]
set_property PACKAGE_PIN W17 [get_ports {volume[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[3]}]
set_property PACKAGE_PIN W15 [get_ports {volume[4]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[4]}]
set_property PACKAGE_PIN V15 [get_ports {volume[5]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[5]}]
set_property PACKAGE_PIN W14 [get_ports {volume[6]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[6]}]
set_property PACKAGE_PIN W13 [get_ports {volume[7]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {volume[7]}]


## LEDs
set_property PACKAGE_PIN U16 [get_ports {led}]                  
    set_property IOSTANDARD LVCMOS33 [get_ports {led}]



##Buttons
set_property PACKAGE_PIN U18 [get_ports rst]                        
    set_property IOSTANDARD LVCMOS33 [get_ports rst]
 set_property PACKAGE_PIN T18 [get_ports btn1]                      
    set_property IOSTANDARD LVCMOS33 [get_ports btn1]



##Pmod Header JA
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {AIN}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {AIN}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {GAIN}]                  
    set_property IOSTANDARD LVCMOS33 [get_ports {GAIN}]
##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {SHUTDOWN_L}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {SHUTDOWN_L}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {sout}]                  
    set_property IOSTANDARD LVCMOS33 [get_ports {sout}]



##Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {col[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {col[3]}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {col[2]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {col[2]}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {col[1]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {col[1]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {col[0]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {col[0]}]
##Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {row[3]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[3]}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {row[2]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[2]}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {row[1]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[1]}]
##Sch name = JB10
set_property PACKAGE_PIN C16 [get_ports {row[0]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[0]}]