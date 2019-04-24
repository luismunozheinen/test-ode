using DifferentialEquations,ParameterizedFunctions,JLD2
include("test_functions.jl")
using Main.test_functions #local functions
#initial Condition
@load "ic.jld2" u0
#desired time domain
tspan = (0.0,10000.0) #to shorten for quicker CPU times
#import array containing Parameters
@load "parameter.jld2" parameter
const p=parameter
#Setup
prob = ODEProblem(f,u0,tspan,p)
#solve ode (given tolerances)
@time sol=solve(prob,Rodas5(),reltol=1e-12,abstol=1e-12,force_dtmin=true,maxiters=10^14)
