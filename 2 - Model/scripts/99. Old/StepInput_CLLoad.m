% Step Response - Closed Loop Loaded

% Surface Input Command
Input.Control = 3; % 1 - Repeating sequence Input, 2 - Sine Input, 3 - Step Input

% Actuator Control Loop Requirements
SP.tss= 0.85; % Desired Settling time
SP.ess = 0.01; % Actuator steady state error 0.01 of actuator full stroke
SP.mp = 0.1; % Overshoot < 0.1 of actuator full stroke
SP.avrate = 32; % Average rate > 32 deg/s
SP.maxrate = 36; % Maximum rate < 36 deg/s
SP.td = 0.5;
SP.tr = 1;

% Actuator Position Control Loop
ControlTopology = 2; % Closed Loop, Kp
getControllerParameters
TempC = -15;
Temp = TempC*9/5 + 32; % Fuid Temperature, ?F

%%% For Step Input
Cmd = 30; StiffnessTest_Enable = 2;
Input.Step.Time = 0.25;
Input.Step.InitialValue = 0;
Input.Step.Amplitude = 30;
Input.Step.FinalValue = Input.Step.InitialValue + Input.Step.Amplitude;
EHSVTest.Enable = 1; %1- Normal Operation, 2 - Frequency Test, 3 Step Test

% Simulation
Time = 2.0;%3*SP.tss; % Simulation time (s)

