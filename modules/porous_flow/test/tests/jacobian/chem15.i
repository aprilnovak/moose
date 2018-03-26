# Check derivatives of mass-fraction, but using Equilibrium chemistry
[Mesh]
  type = GeneratedMesh
  dim = 1
[]

[Variables]
  [./a]
    initial_condition = 0.1
  [../]
  [./b]
    initial_condition = 0.2
  [../]
  [./h2o_dummy]
  [../]
[]

[AuxVariables]
  [./temp]
    initial_condition = 0.5
  [../]
  [./ini_sec_conc0]
    initial_condition = 0.111
  [../]
  [./ini_sec_conc1]
    initial_condition = 0.222
  [../]
[]

[GlobalParams]
  PorousFlowDictator = dictator
[]

[Kernels]
  [./a]
    type = PorousFlowMassTimeDerivative
    variable = a
    fluid_component = 0
  [../]
  [./b]
    type = PorousFlowMassTimeDerivative
    variable = b
    fluid_component = 1
  [../]
  [./h2o_dummy]
    # note that in real simulations this Kernel would not be used
    # It is just here to check derivatives
    type = PorousFlowMassTimeDerivative
    variable = h2o_dummy
    fluid_component = 2
  [../]
[]

[UserObjects]
  [./dictator]
    type = PorousFlowDictator
    porous_flow_vars = 'a b'
    number_fluid_phases = 1
    number_fluid_components = 3
    number_aqueous_equilibrium = 3
  [../]
[]

[Modules]
  [./FluidProperties]
    [./simple_fluid]
      type = SimpleFluidProperties
    [../]
  [../]
[]

[AuxVariables]
  [./pressure]
  [../]
[]

[Materials]
  [./porosity_qp]
    type = PorousFlowPorosity
    porosity_zero = 0.9
  [../]
  [./temperature]
    type = PorousFlowTemperature
    temperature = temp
    at_nodes = true
  [../]
  [./ppss]
    type = PorousFlow1PhaseFullySaturated
    at_nodes = true
    porepressure = pressure
  [../]
  [./massfrac]
    type = PorousFlowMassFractionAqueousEquilibriumChemistry
    mass_fraction_vars = 'a b'
    num_reactions = 3
    equilibrium_constants = '1.234E-4 0.987E-4 0.5E-4'
    primary_activity_coefficients = '1 1.2'
    secondary_activity_coefficients = '1 2 3'
    reactions = '1 2
                 2.2 -1
                 -2 1'
    at_nodes = true
  [../]
  [./simple_fluid]
    type = PorousFlowSingleComponentFluid
    fp = simple_fluid
    at_nodes = true
    phase = 0
  [../]
  [./dens_all]
    type = PorousFlowJoiner
    include_old = true
    at_nodes = true
    material_property = PorousFlow_fluid_phase_density_nodal
  [../]
  [./porosity]
    type = PorousFlowPorosity
    porosity_zero = 0.1
    at_nodes = true
  [../]
[]

[Executioner]
  type = Transient
  solve_type = Newton
  dt = 0.1
  end_time = 0.1
[]

[Preconditioning]
  [./check]
    type = SMP
    full = true
    petsc_options = '-snes_test_display'
    petsc_options_iname = '-ksp_type -pc_type -snes_atol -snes_rtol -snes_max_it -snes_type'
    petsc_options_value = 'bcgs bjacobi 1E-15 1E-10 10000 test'
  [../]
[]
