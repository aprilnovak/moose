CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      !   num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1   
   num_side_ss2      num_side_ss3      num_side_ss4   
   num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_elem_var      num_info  X         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         test_out.e     maximum_name_length                 $   
time_whole                            ~`   	eb_status                             	�   eb_prop1               name      ID              	�   	ns_status         	                    	�   ns_prop1      	         name      ID              
    	ss_status         
                    
   ss_prop1      
         name      ID              
    coordx                           
0   coordy                           8   eb_names                       $      @   ns_names      	                 �      d   ss_names      
                 �      �   
coor_names                         D      l   node_num_map                    �      �   connect1                  	elem_type         QUAD4        @      4   elem_num_map                    P      t   elem_ss1                    (      �   side_ss1                    (      �   elem_ss2                             side_ss2                             elem_ss3                          $   side_ss3                          ,   elem_ss4                    (      4   side_ss4                    (      \   node_ns1                    ,      �   node_ns2                          �   node_ns3                          �   node_ns4                    ,      �   vals_nod_var1                               ~h   name_nod_var                       $      �   name_elem_var                          d         vals_elem_var1eb1                          �      p   vals_elem_var2eb1                          �      �   vals_elem_var3eb1                          �      ��   elem_var_tab                             |   info_records                      l�      �                                                                 ?�������?�������        ?ə�����?ə�����?�333333?�333333?ٙ�����?ٙ�����?�      ?�      ?�333333?�333333?�ffffff?�ffffff?陙����?陙����?�������?�������?�      ?�      ?�������        ?ə�����?�333333?ٙ�����?�      ?�333333?�ffffff?陙����?�������?�                      ?�      ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                          bottom                           right                            left                             top                              bottom                           left                             right                            top                                                                                                                             	   
                                                                      !                                          	   
      	         
                                                                                                      
         
                                                                   !                               	   
                                                         	   
                                             
                                                                                    	                           !                                           !T                                   cp  @�@     @�@     @�@     @�@  k  @�@     @�@     @�@     @�@   rho @     @�@     @�@     @�@              ####################@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@  # Created by MOOSE #�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@   ####################@     @�@     @�@                                            ### Command Line Arguments ###                                                    -i test.i### Version Info ###                                                   Framework Information:                                                           MOOSE Version:           git commit cc3c954 on 2018-10-10                        LibMesh Version:         655cf5f0984cd5489592188478eb275901d95a02                PETSc Version:           3.6.1                                                   Current Time:            Thu Oct 11 14:14:53 2018                                Executable Timestamp:    Thu Oct 11 13:31:53 2018                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 inactive                       =                                                 element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [AuxKernels]                                                                                                                                                        [./cp]                                                                             inactive                     =                                                   isObjectAction               = 1                                                 type                         = MaterialRealAux                                   block                        = INVALID                                           boundary                     = INVALID                                           control_tags                 = AuxKernels                                        enable                       = 1                                                 execute_on                   = 'LINEAR TIMESTEP_END'                             factor                       = 1                                                 offset                       = 0                                                 property                     = cp_solid                                          seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = cp                                              [../]                                                                                                                                                             [./k]                                                                              inactive                     =                                                   isObjectAction               = 1                                                 type                         = MaterialRealAux                                   block                        = INVALID                                           boundary                     = INVALID                                           control_tags                 = AuxKernels                                        enable                       = 1                                                 execute_on                   = 'LINEAR TIMESTEP_END'                             factor                       = 1                                                 offset                       = 0                                                 property                     = k_solid                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = k                                               [../]                                                                                                                                                             [./rho]                                                                            inactive                     =                                                   isObjectAction               = 1                                                 type                         = MaterialRealAux                                   block                        = INVALID                                           boundary                     = INVALID                                           control_tags                 = AuxKernels                                        enable                       = 1                                                 execute_on                   = 'LINEAR TIMESTEP_END'                             factor                       = 1                                                 offset                       = 0                                                 property                     = rho_solid                                         seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = rho                                             [../]                                                                          []                                                                                                                                                                [AuxVariables]                                                                                                                                                      [./cp]                                                                             block                        = INVALID                                           family                       = MONOMIAL                                          inactive                     =                                                   initial_condition            = INVALID                                           order                        = CONSTANT                                          outputs                      = INVALID                                           initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                                                                                                             [./k]                                                                              block                        = INVALID                                           family                       = MONOMIAL                                          inactive                     =                                                   initial_condition            = INVALID                                           order                        = CONSTANT                                          outputs                      = INVALID                                           initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                                                                                                             [./rho]                                                                            block                        = INVALID                                           family                       = MONOMIAL                                          inactive                     =                                                   initial_condition            = INVALID                                           order                        = CONSTANT                                          outputs                      = INVALID                                           initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                                                                                                [BCs]                                                                                                                                                               [./left]                                                                           boundary                     = left                                              control_tags                 = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 inactive                     =                                                   isObjectAction               = 1                                                 matrix_tags                  = system                                            type                         = DirichletBC                                       use_displaced_mesh           = 0                                                 variable                     = T                                                 vector_tags                  = nontime                                           diag_save_in                 = INVALID                                           save_in                      = INVALID                                           seed                         = 0                                                 value                        = 1000                                            [../]                                                                                                                                                             [./right]                                                                          boundary                     = right                                             control_tags                 = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 inactive                     =                                                   isObjectAction               = 1                                                 matrix_tags                  = system                                            type                         = DirichletBC                                       use_displaced_mesh           = 0                                                 variable                     = T                                                 vector_tags                  = nontime                                           diag_save_in                 = INVALID                                           save_in                      = INVALID                                           seed                         = 0                                                 value                        = 500                                             [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      inactive                       =                                                 isObjectAction                 = 1                                               type                           = Steady                                          compute_initial_residual_before_preset_bcs = 0                                   contact_line_search_allowed_lambda_cuts = 2                                      contact_line_search_ltol       = INVALID                                         control_tags                   =                                                 enable                         = 1                                               l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         line_search_package            = petsc                                           mffd_type                      = wp                                              nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         restart_file_base              =                                                 solve_type                     = INVALID                                         splitting                      = INVALID                                       []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff]                                                                           inactive                     =                                                   isObjectAction               = 1                                                 type                         = Diffusion                                         block                        = INVALID                                           control_tags                 = Kernels                                           diag_save_in                 = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = T                                                 vector_tags                  = nontime                                         [../]                                                                          []                                                                                                                                                                [Materials]                                                                                                                                                         [./sp_mat]                                                                         inactive                     =                                                   isObjectAction               = 1                                                 type                         = ThermalSolidPropertiesMaterial                    block                        = INVALID                                           boundary                     = INVALID                                           compute                      = 1                                                 constant_on                  = NONE                                              control_tags                 = Materials                                         enable                       = 1                                                 implicit                     = 1                                                 output_properties            = INVALID                                           outputs                      = none                                              seed                         = 0                                                 sp                           = sp                                                temperature                  = T                                                 use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             inactive                       =                                                 displacements                  = INVALID                                         block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         isObjectAction                 = 1                                               second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               allow_renumbering              = 1                                               bias_x                         = 1                                               bias_y                         = 1                                               bias_z                         = 1                                               centroid_partitioner_direction = INVALID                                         construct_node_list_from_side_list = 1                                           control_tags                   =                                                 dim                            = 2                                               elem_type                      = QUAD4                                           enable                         = 1                                               gauss_lobatto_grid             = 0                                               ghosting_patch_size            = INVALID                                         max_leaf_size                  = 10                                              nemesis                        = 0                                               nx                             = 10                                              ny                             = 2                                               nz                             = 1                                               parallel_type                  = DEFAULT                                         partitioner                    = default                                         patch_size                     = 40                                              patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Modules]                                                                                                                                                           [./SolidProperties]                                                                                                                                                 [./sp]                                                                             inactive                   =                                                     isObjectAction             = 1                                                   type                       = ThermalSiliconCarbideProperties                     allow_duplicate_execution_on_initial = 0                                         control_tags               = Modules/SolidProperties                             density                    = 3216                                                enable                     = 1                                                   execute_on                 = TIMESTEP_END                                        force_preaux               = 0                                                   thermal_conductivity_model = snead                                               use_displaced_mesh         = 0                                                 [../]                                                                          [../]                                                                          []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               controls                       = 0                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         inactive                       =                                                 interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         perf_graph                     = 0                                               print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./T]                                                                              block                        = INVALID                                           eigen                        = 0                                                 family                       = LAGRANGE                                          inactive                     =                                                   initial_condition            = 1000                                              order                        = FIRST                                             outputs                      = INVALID                                           scaling                      = 1                                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                       @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ?�      @�@     @�������@��   �@�@     @�����g@������@�������@������"@�������@�    �@�p   ,@�o�����@��   
7@������@�P   �@�P    �@��   �@��   �@�0   [@�0   
@?����6@?����6@�������@�@     @������@�������@������@�p   _@��   H@�P   �@��   c@�/����r@?����6@����.��@�Et��8C@��$�@�����[@�tvLH�@�"_��9?@�ǮB�ą@�b
upYN@���|f�@��4�'|�@����.ս@�Et��7�@��$�I@�����Yd@�tvLG�@�"_��9�@�ǮB��@�b
upX�@���|e@��4�'{�@Y)���H-@Z�;g\P@\#8De�@]�n�ڼ@_��|��@a��a4�@bl愰-�@c��VÓ�@e�<}*]F@h HlG��@Y)���I�@Z�;g\@\#8De��@]�n���@_��|�@a��a2@bl愰+�@c��VÕ@e�<}*`�@h HlG�"@�      @�      @�      @�      @�      @�      @�      @������@�      @�      @�      @�      @�      @�      @�      @�      @�      @������@�      @�      