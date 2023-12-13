import os

mem_width = int(os.environ['MEM_WIDTH'])
mem_depth = int(os.environ['MEM_DEPTH'])
mem_type = os.environ['MEM_TYPE']

word_size = mem_width
num_words = max(mem_depth,16)

netlist_only = int(os.environ['MEM_LAYOUT']) != 1
num_rw_ports = 0
num_r_ports = 1
num_w_ports = 1

perimeter_pins = False

tech_name = "freepdk45"
nominal_corner_only = True

route_supplies = True
check_lvsdrc = False

output = "sram_{0}".format(mem_type)
output_name = output
output_path = "sram_macros/{}".format(output)

