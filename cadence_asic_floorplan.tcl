floorPlan -r 1.0 0.20 3.0 3.0 3.0 3.0

for {set i 0} {$i < $N1} {incr i} {
    for {set j 0} {$j < $N2} {incr j} {
        createFence "systolic_inst/row_counter[$i].col_counter[$j].pe_stream" [expr 145+($j*50)] [expr 185+($i*50)] [expr 185+($j*50)] [expr 140+($i*50)]
    }
}

# place_design
# ccopt_design
# route_design


