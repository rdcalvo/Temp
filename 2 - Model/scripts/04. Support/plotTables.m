

folder = 'results/1. Optimization/2. Weighted Cost Function/1. P/';
workspace_filename = 'P Controller Optimization';  
load([ folder workspace_filename ' - Initial Design.mat' ]);
load([ folder workspace_filename ' - Optimized Design.mat' ]);

DesignParameter     = {'Settling Time (ms)';...
                       'Steady State Error ($\%$)';...
                       'Overshoot ($\%$)';...
                       'Minimum Average Rate ($�$/s)';...
                       'Maximum Average Rate ($�$/s)';...
                       'Gain Margin (dB)';...
                       'Phase Margin ($�$)';...
                       'Peak Magnitude (dB)';...
                       'Bandwidth (Hz)';...
                       'Initial Magnitude(dB)'};
Requirement         = {'$< 1100$';...
                       '$< 1$';...
                       '$< 10$';...
                       '$> 32$';...
                       '$< 36$';...
                       '$> 10$';...
                       '$> 45$';...
                       '$< 0.5$';...
                       '$None$';...
                       '$None$'};
Baseline            = [InitialDesign.Tempm15.StepResponse.Ts*1000;...
                       InitialDesign.Tempm15.StepResponse.ess*100;...
                       InitialDesign.Tempm15.StepResponse.Mp*100;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       min(InitialDesign.Temp100.FrequencyResponse.GM);...
                       min(InitialDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(InitialDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude(1))];
OptimizedController = [OptimizedDesign.Tempm15.StepResponse.Ts*1000;...
                       OptimizedDesign.Tempm15.StepResponse.ess*100;...
                       OptimizedDesign.Tempm15.StepResponse.Mp*100;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       min(OptimizedDesign.Temp100.FrequencyResponse.GM);...
                       min(OptimizedDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(OptimizedDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude(1))];
                   
PTable = table(DesignParameter,Requirement,Baseline,OptimizedController)

disp(' '); disp(' '); 
for i=1:10    
    disp([ DesignParameter{i} ' & ' Requirement{i} ' & $'...
           num2str(Baseline(i),4) '$ & $' num2str(OptimizedController(i),4) '$ \\ \hline']);
end
%%
clear InitialDesign
clear OptimizedDesign


folder = 'results/1. Optimization/2. Weighted Cost Function/2. PI/';
workspace_filename = 'PI Controller Optimization';  
load([ folder workspace_filename ' - Initial Design.mat' ]);
load([ folder workspace_filename ' - Optimized Design.mat' ]);

DesignParameter     = {'Settling Time (ms)';...
                       'Steady State Error (%)';...
                       'Overshoot (%)';...
                       'Minimum Average Rate (deg/s)';...
                       'Maximum Average Rate (deg/s)';...
                       'Gain Margin (dB)';...
                       'Phase Margin (deg)';...
                       'Peak Magnitude (dB)';...
                       '3dB Bandwidth (Hz)';...
                       'Initial Gain - G(0.1)(dB)'};
Requirement         = {'< 850';...
                       '< 1';...
                       '< 10';...
                       '> 32';...
                       '< 36';...
                       '> 10';...
                       '> 45';...
                       '< 0.5';...
                       'None';...
                       'None'};
Baseline            = [InitialDesign.Tempm15.StepResponse.Ts*1000;...
                       InitialDesign.Tempm15.StepResponse.ess*100;...
                       InitialDesign.Tempm15.StepResponse.Mp*100;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       min(InitialDesign.Temp100.FrequencyResponse.GM);...
                       min(InitialDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(InitialDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude(1))];
OptimizedController = [OptimizedDesign.Tempm15.StepResponse.Ts*1000;...
                       OptimizedDesign.Tempm15.StepResponse.ess*100;...
                       OptimizedDesign.Tempm15.StepResponse.Mp*100;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       min(OptimizedDesign.Temp100.FrequencyResponse.GM);...
                       min(OptimizedDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(OptimizedDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude(1))];
                   
PITable = table(DesignParameter,Requirement,Baseline,OptimizedController)

clear InitialDesign
clear OptimizedDesign


folder = 'results/1. Optimization/3. PD/';
workspace_filename = 'PD Controller Optimization';  
load([ folder workspace_filename ' - Initial Design.mat' ]);
load([ folder workspace_filename ' - Optimized Design.mat' ]);

DesignParameter     = {'Settling Time (ms)';...
                       'Steady State Error (%)';...
                       'Overshoot (%)';...
                       'Minimum Average Rate (deg/s)';...
                       'Maximum Average Rate (deg/s)';...
                       'Gain Margin (dB)';...
                       'Phase Margin (deg)';...
                       'Peak Magnitude (dB)';...
                       '3dB Bandwidth (Hz)';...
                       'Initial Gain - G(0.1)(dB)'};
Requirement         = {'< 850';...
                       '< 1';...
                       '< 10';...
                       '> 32';...
                       '< 36';...
                       '> 10';...
                       '> 45';...
                       '< 0.5';...
                       'None';...
                       'None'};
Baseline            = [InitialDesign.Tempm15.StepResponse.Ts*1000;...
                       InitialDesign.Tempm15.StepResponse.ess*100;...
                       InitialDesign.Tempm15.StepResponse.Mp*100;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       min(InitialDesign.Temp100.FrequencyResponse.GM);...
                       min(InitialDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(InitialDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude(1))];
OptimizedController = [OptimizedDesign.Tempm15.StepResponse.Ts*1000;...
                       OptimizedDesign.Tempm15.StepResponse.ess*100;...
                       OptimizedDesign.Tempm15.StepResponse.Mp*100;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       min(OptimizedDesign.Temp100.FrequencyResponse.GM);...
                       min(OptimizedDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(OptimizedDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude(1))];
                   
PDTable = table(DesignParameter,Requirement,Baseline,OptimizedController)

clear InitialDesign
clear OptimizedDesign


folder = 'results/1. Optimization/4. PID/';
workspace_filename = 'PID Controller Optimization';  
load([ folder workspace_filename ' - Initial Design.mat' ]);
load([ folder workspace_filename ' - Optimized Design.mat' ]);

DesignParameter     = {'Settling Time (ms)';...
                       'Steady State Error (%)';...
                       'Overshoot (%)';...
                       'Minimum Average Rate (deg/s)';...
                       'Maximum Average Rate (deg/s)';...
                       'Gain Margin (dB)';...
                       'Phase Margin (deg)';...
                       'Peak Magnitude (dB)';...
                       '3dB Bandwidth (Hz)';...
                       'Initial Gain - G(0.1)(dB)'};
Requirement         = {'< 850';...
                       '< 1';...
                       '< 10';...
                       '> 32';...
                       '< 36';...
                       '> 10';...
                       '> 45';...
                       '< 0.5';...
                       'None';...
                       'None'};
Baseline            = [InitialDesign.Tempm15.StepResponse.Ts*1000;...
                       InitialDesign.Tempm15.StepResponse.ess*100;...
                       InitialDesign.Tempm15.StepResponse.Mp*100;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       InitialDesign.Tempm15.StepResponse.av_rate;...
                       min(InitialDesign.Temp100.FrequencyResponse.GM);...
                       min(InitialDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(InitialDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(InitialDesign.Temp100.FrequencyResponse.Magnitude(1))];
OptimizedController = [OptimizedDesign.Tempm15.StepResponse.Ts*1000;...
                       OptimizedDesign.Tempm15.StepResponse.ess*100;...
                       OptimizedDesign.Tempm15.StepResponse.Mp*100;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       OptimizedDesign.Tempm15.StepResponse.av_rate;...
                       min(OptimizedDesign.Temp100.FrequencyResponse.GM);...
                       min(OptimizedDesign.Temp100.FrequencyResponse.PM);...
                       max(20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude));...
                       min(OptimizedDesign.Temp100.FrequencyResponse.Bw);...
                       20*log10(OptimizedDesign.Temp100.FrequencyResponse.Magnitude(1))];
                   
PIDTable = table(DesignParameter,Requirement,Baseline,OptimizedController)

clear InitialDesign
clear OptimizedDesign