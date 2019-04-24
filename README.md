# test-ode
Simplified project to evaluate the efficiency of the differential equation solver

**test_ode.jl** contains the main code to run for the setup and simulation whereas **test_functions.jl** contains all functions required to setup the differential equation system `f`. Use `show(f)` to visualise the ode system and `du = similar(u0)`+`@time f(du,u0,p,t)`to check the number of allocations. 

The files **ic.jld2** and **parameter.jld2** contain the initial conditions `u0` and input parameters `p` respectively.

Given the size and non-linearity of the ODE, computation times take a couple of hours for 10000 [s] of simulation. Run a shorter time span `tspan` for quicker simulations. The first block slip occurs over `tspan=(0.0,400.0)`.
