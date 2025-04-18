open_project compute_sparse_mat_mul 

# set top function of the HLS design
set_top sparse_matrix_multiply_HLS

# add source file
add_files top.cpp

# add testbench
add_files -tb host.cpp

# add data file
add_files -tb A_matrix_csr_sparsity_0.10.bin
add_files -tb B_matrix_csc_sparsity_0.10.bin
add_files -tb C_matrix_result_sparsity_0.10.bin

open_solution "solution1"

# FPGA part and clock configuration
set_part {xczu3eg-sbva484-1-e}

# C synthesis for HLS design, generating RTL
csynth_design

exit
