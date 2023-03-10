READ ME
This work is part of the master project from Heric Ballesteros presented in Nov 2015 as part of the Professional Master Program ITA/EMBRAER.

% Instruction for running the model

1 - Run "LOAD_Project.m"
2 - Open the model "RudderActuatorChannel_control.slx" in the root directory.
3 - Initialize the model by double-clicking "Model Initialization" block
4 - Choose a test by double-clicking in the blocks in the top side of the Simulink model.
5 - Run "UNLOAD_Project.m" to close the model.

% Description of the model files by folder:

Library:

BulkModulus.mdl - reference model for Bulk Modulus variation with pressure, temperature and entrained air.
LVDT.mdl - reference model for the LVDT sensors: Delta Pressure, Piston position, EHSV spool position.

models:
EHSV_1st_stage.slx - EHSV 1st stage model
FluidDynamics.slx - Fluid Dynamics model (Chamber pressure dynamics)
LinearModel_RudderActuator2.slx - Actuator linear model capable to test linear model match with nonlinear model.
LinearModel_RudderActuator.slx - Actuator linear model to set control gains.
Load_Rate_Actuator.slx - Model to calculate actuator loaded rate.
PistonDynamics.slx - Piston dynamics model representing piston displacement.
RudderActuatorChannel_check2.slx - Nonlinear actuator model to test linear model match with nonlinear model.

parameters:
EHSV_test_paramm.m - Sets EHSV parameters.
getControllerParameters.m - Sets controllers parameters for the nonlinear actuator model.
Load_Parameters.m - Sets general parameters for the nonlinear actuator model.

Results:
This folder is responsible to organize all the Results obtained during the master's project.
It contains an extensive set of data and graphics regarding different tests and analysis.

scripts:

DynamicStiffnessTest.m - Runs the dynamic stiffness test.
EHSV_test.m - Runs the EHSV test apart from the model.
FFT_Analysis.m - Performs FFT to support dynamic stiffness test.
findmargin2.m - Script to determine gain margin, phase margin and bandwidth from Frequency Response plot. 
findmargin.m - Script to determine gain margin, phase margin and bandwidth from Frequency Response plot.
FrequencyResponseTest.m - Runs Frequency response test.
Load_Rate.m - Runs actuator loaded rate test.
SequenceInput.m - Runs open loop nonlinear model with a sequence Input defined by the user.
SineInput_CLLoad.m - Runs actuator nonlinear model with load and in close loop with a sine Input defined by the user.
StepInput_CLLoad.m- Runs actuator nonlinear model with load and in close loop with a step Input defined by the user.
StepInput_CLNoLoad.m - Runs actuator nonlinear model with NO load and in close loop with a step Input defined by the user.
StepInput_OLEHSVLoad.m - Runs actuator nonlinear model with load and in open loop with a step Input in the EHSV current defined by the user.
StepInput_OLEHSVNoLoad.m - Runs actuator nonlinear model with NO load and in open loop with a step Input in the EHSV current defined by the user.
TimeResponse_Test.m - Runs the time response test.
rate_out.mat - Contains actuator loaded rate data.
lin_model.mat - Contains the linearized model with matrices A, B, C and D.
StateControl.mat - Contains the modern controllers gains for full-state feedback and reduced-order observer parameters.

scripts\linearization:

dynamics.m - Nonlinear equations model representing the actuator dynamics.
Linearize_linmod.m - Model linearization using linmod and trim functions.
linearize_model.m - Numerical linearization.
plot_states.m - Responsible to linearize the nonlinear model and compare linear x nonlinear model.
run_linearizemodel.m - Runs the numerical linearization based on parameters defined in this file.
struct2vect.m - Transforms struct type entities into vector.

scripts\plot:

plotMaster.m - plots the time response analysis for nonlinear model.

scripts\run_all:

RunALL.m - Runs Dynamic Stiffness, Frequency Response and Time Response tests for different controllers.
RUNALL_DynamicStiffnessTest.m - Runs Dynamic Stiffness Test for different controllers.
RUNALL_EHSV_DynamicStiffnessTest.m - Runs Dynamic Stiffness Test for different EHSVs.
RUNALL_EHSV_FR.m - Runs EHSV Frequency Response.
RUNALL_EHSV_TR.m - RUns EHSV Time Response.
RUNALL_FR_Test.m - Runs Frequency Response test for different controllers.
RUNALL_TimeResponse.m - Runs Time Response test for different controllers.


simul:
This folder contains all data generated by Matlab while compiling the Simulink nonlinear model.

Support:
ActuatorSizing_heric.xlsx - Spreadsheet containing kinematics information, actuator stall load and dynamic stiffness predictions.