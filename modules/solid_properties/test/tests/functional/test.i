[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 10
  ny = 2
[]

[Variables]
  [./T]
    initial_condition = 1000.0
  [../]
[]

[AuxVariables]
  [./cp]
    family = MONOMIAL
    order = CONSTANT
  [../]
  [./k]
    family = MONOMIAL
    order = CONSTANT
  [../]
  [./rho]
    family = MONOMIAL
    order = CONSTANT
  [../]
[]

[AuxKernels]
  [./cp]
    type = MaterialRealAux
     variable = cp
     property = cp_solid
  [../]
  [./k]
    type = MaterialRealAux
     variable = k
     property = k_solid
  [../]
  [./rho]
    type = MaterialRealAux
     variable = rho
     property = rho_solid
  [../]
[]

[Materials]
  [./sp_mat]
    type = ThermalFunctionSolidProperties
    temperature = T
    rho = '1000.0'
    cp = '200*t+150.0'
    k = '2.0*exp(-100.0/(2.0+t))+1.0'
  [../]
[]

[Kernels]
  [./diff]
    type = Diffusion
    variable = T
  [../]
[]

[BCs]
  [./left]
    type = DirichletBC
    variable = T
    boundary = 'left'
    value = 1000.0
  [../]
  [./right]
    type = DirichletBC
    variable = T
    boundary = 'right'
    value = 500.0
  [../]
[]

[Executioner]
  type = Steady
[]

[Outputs]
  exodus = true
[]
