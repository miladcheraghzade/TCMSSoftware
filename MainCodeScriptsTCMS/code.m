classdef DataProcessingApp < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        TCMS                            matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        HomeTab                         matlab.ui.container.Tab
        DropDownNew                     matlab.ui.control.DropDown
        NEw                             matlab.ui.control.Button
        DropDown_2                      matlab.ui.control.DropDown
        SaveButton                      matlab.ui.control.Button
        ExitButton                      matlab.ui.control.Button
        DropDownNew_2                   matlab.ui.control.DropDown
        NEw_2                           matlab.ui.control.Button
        ToolsTab                        matlab.ui.container.Tab
        DropDown_3                      matlab.ui.control.DropDown
        CreateReportButton              matlab.ui.control.Button
        HelpTab                         matlab.ui.container.Tab
        AboutButton                     matlab.ui.control.Button
        TabGroup2                       matlab.ui.container.TabGroup
        FilterSelectionSettingsTab      matlab.ui.container.Tab
        TabGroup5                       matlab.ui.container.TabGroup
        ButterworthTab                  matlab.ui.container.Tab
        DataControlForFilteringPanel    matlab.ui.container.Panel
        FilterAxes                      matlab.ui.control.UIAxes
        UIAxes5                         matlab.ui.control.UIAxes
        ResultShowTextArea              matlab.ui.control.TextArea
        OptionPanel                     matlab.ui.container.Panel
        FilterTypeDropDown              matlab.ui.control.DropDown
        SamplingFrequencySpinner        matlab.ui.control.Spinner
        SamplingFrequencySpinnerLabel   matlab.ui.control.Label
        FilterOrderKnob                 matlab.ui.control.DiscreteKnob
        CuttOffKnob                     matlab.ui.control.Knob
        LowLimitFrequencyKnob           matlab.ui.control.Knob
        HighLimitFrequencyKnob          matlab.ui.control.Knob
        RunFilteringButton              matlab.ui.control.Button
        FilterTypeDropDown_2            matlab.ui.control.DropDown
        SamplingFrequencySpinnerLabel_2  matlab.ui.control.Label
        SamplingFrequencySpinnerLabel_3  matlab.ui.control.Label
        SamplingFrequencySpinnerLabel_4  matlab.ui.control.Label
        SamplingFrequencySpinnerLabel_5  matlab.ui.control.Label
        SamplingFrequencySpinnerLabel_6  matlab.ui.control.Label
        PreProcessTab                   matlab.ui.container.Tab
        TabGroup13                      matlab.ui.container.TabGroup
        ProcessTab                      matlab.ui.container.Tab
        Tree4                           matlab.ui.container.Tree
        ChannelDataNode                 matlab.ui.container.TreeNode
        Panel_7                         matlab.ui.container.Panel
        TabGroup14                      matlab.ui.container.TabGroup
        FiguresDataTab                  matlab.ui.container.Tab
        DropDown_4                      matlab.ui.control.DropDown
        ClearButton_3                   matlab.ui.control.Button
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes4_2                       matlab.ui.control.UIAxes
        UIAxes4_3                       matlab.ui.control.UIAxes
        TableData                       matlab.ui.container.Tab
        UITable4                        matlab.ui.control.Table
        DataTypeDropDown                matlab.ui.control.DropDown
        TextArea_9                      matlab.ui.control.TextArea
        SaveTableButton                 matlab.ui.control.Button
        Panel_8                         matlab.ui.container.Panel
        FilterDropDownLabel             matlab.ui.control.Label
        FilterDropDown                  matlab.ui.control.DropDown
        OrderSpinnerLabel               matlab.ui.control.Label
        OrderSpinner                    matlab.ui.control.Spinner
        CutOffSpinnerLabel              matlab.ui.control.Label
        CutOffSpinner                   matlab.ui.control.Spinner
        CutOffSpinner_2                 matlab.ui.control.Spinner
        CutOffSpinner_3                 matlab.ui.control.Spinner
        BaseLineCorrectionCheckBox      matlab.ui.control.CheckBox
        applyProcessButton              matlab.ui.control.Button
        SamplingFrqSpinnerLabel         matlab.ui.control.Label
        SamplingFrqSpinner              matlab.ui.control.Spinner
        ButtonGroup                     matlab.ui.container.ButtonGroup
        enpolButton1                    matlab.ui.control.RadioButton
        enpolButton2                    matlab.ui.control.RadioButton
        enpolButton3                    matlab.ui.control.RadioButton
        OrderSpinnerLabel_2             matlab.ui.control.Label
        OrderSpinner_2                  matlab.ui.control.Spinner
        CutOffSpinnerLabel_2            matlab.ui.control.Label
        CutOffSpinner_4                 matlab.ui.control.Spinner
        SystemIdentificationTab         matlab.ui.container.Tab
        TabGroup3                       matlab.ui.container.TabGroup
        PPTab                           matlab.ui.container.Tab
        Panel_3                         matlab.ui.container.Panel
        TabGroup11                      matlab.ui.container.TabGroup
        SettingsTab                     matlab.ui.container.Tab
        SampligFrequencyEditFieldLabel  matlab.ui.control.Label
        SampligFrequencyEditField       matlab.ui.control.NumericEditField
        WindiwLengthEditFieldLabel      matlab.ui.control.Label
        WindiwLengthEditField           matlab.ui.control.NumericEditField
        OverLapEditFieldLabel           matlab.ui.control.Label
        OverLapEditField                matlab.ui.control.NumericEditField
        ResolutionEditFieldLabel        matlab.ui.control.Label
        ResolutionEditField             matlab.ui.control.NumericEditField
        windowTypeButtonGroup           matlab.ui.container.ButtonGroup
        HammingButton                   matlab.ui.control.RadioButton
        HaningButton                    matlab.ui.control.RadioButton
        RectangularButton               matlab.ui.control.RadioButton
        FrequencyRangeButtonGroup       matlab.ui.container.ButtonGroup
        FromEditFieldLabel              matlab.ui.control.Label
        FromEditField                   matlab.ui.control.NumericEditField
        ToHzEditFieldLabel              matlab.ui.control.Label
        ToHzEditField                   matlab.ui.control.NumericEditField
        RunPeakPickingButton            matlab.ui.control.Button
        FrquecciesIdentificationMethodButtonGroup  matlab.ui.container.ButtonGroup
        AutoButton                      matlab.ui.control.RadioButton
        ManualButton                    matlab.ui.control.RadioButton
        AutoPeakTab                     matlab.ui.container.Tab
        FrequenciesListBoxLabel_2       matlab.ui.control.Label
        ListBox_2                       matlab.ui.control.ListBox
        MinPeakDistanceEditField_3Label  matlab.ui.control.Label
        MinPeakDistanceEditField_3      matlab.ui.control.NumericEditField
        MinPeakHeightEditField_2Label   matlab.ui.control.Label
        MinPeakHeightEditField_2        matlab.ui.control.NumericEditField
        AddButton_2                     matlab.ui.control.Button
        RemoveButton                    matlab.ui.control.Button
        FindPeaksandAddButton           matlab.ui.control.Button
        ManualFrequencyTab              matlab.ui.container.Tab
        modenumberDropDownLabel_2       matlab.ui.control.Label
        modenumberDropDown_2            matlab.ui.control.DropDown
        mode1EditFieldLabel_2           matlab.ui.control.Label
        mode1EditField_2                matlab.ui.control.NumericEditField
        mode2EditFieldLabel_2           matlab.ui.control.Label
        mode2EditField_2                matlab.ui.control.NumericEditField
        mode3Label_3                    matlab.ui.control.Label
        mode3EditField_2                matlab.ui.control.NumericEditField
        mode4EditFieldLabel_2           matlab.ui.control.Label
        mode4EditField_2                matlab.ui.control.NumericEditField
        mode5EditFieldLabel_2           matlab.ui.control.Label
        mode5EditField_2                matlab.ui.control.NumericEditField
        mode7EditFieldLabel_2           matlab.ui.control.Label
        mode7EditField_2                matlab.ui.control.NumericEditField
        mode8EditFieldLabel_2           matlab.ui.control.Label
        mode8EditField_2                matlab.ui.control.NumericEditField
        mode9EditFieldLabel_2           matlab.ui.control.Label
        mode9EditField_2                matlab.ui.control.NumericEditField
        mode10Label_3                   matlab.ui.control.Label
        mode10EditField_2               matlab.ui.control.NumericEditField
        mode6EditFieldLabel_2           matlab.ui.control.Label
        mode6EditField_2                matlab.ui.control.NumericEditField
        SaveFrequenciesButton_2         matlab.ui.control.Button
        Panel_5                         matlab.ui.container.Panel
        TextArea_8                      matlab.ui.control.TextArea
        TabGroup15                      matlab.ui.container.TabGroup
        DataPlotTab                     matlab.ui.container.Tab
        UIAxes3                         matlab.ui.control.UIAxes
        ConditionMonitoringTab          matlab.ui.container.Tab
        TabGroup4                       matlab.ui.container.TabGroup
        TendonsTab                      matlab.ui.container.Tab
        TabGroup7                       matlab.ui.container.TabGroup
        FrequencyTab                    matlab.ui.container.Tab
        FrequenciesPanel                matlab.ui.container.Panel
        mode1Label                      matlab.ui.control.Label
        Label_2                         matlab.ui.control.Label
        mode2Label                      matlab.ui.control.Label
        Label_4                         matlab.ui.control.Label
        mode3Label_2                    matlab.ui.control.Label
        Label_6                         matlab.ui.control.Label
        mode4Label                      matlab.ui.control.Label
        Label_8                         matlab.ui.control.Label
        mode5Label                      matlab.ui.control.Label
        Label_10                        matlab.ui.control.Label
        mode6Label                      matlab.ui.control.Label
        Label_12                        matlab.ui.control.Label
        mode7Label                      matlab.ui.control.Label
        Label_14                        matlab.ui.control.Label
        mode8Label                      matlab.ui.control.Label
        Label_16                        matlab.ui.control.Label
        mode9Label                      matlab.ui.control.Label
        Label_18                        matlab.ui.control.Label
        mode10Label_2                   matlab.ui.control.Label
        Label_20                        matlab.ui.control.Label
        mode11Label                     matlab.ui.control.Label
        Label_22                        matlab.ui.control.Label
        mode12Label                     matlab.ui.control.Label
        Label_24                        matlab.ui.control.Label
        mode13Label                     matlab.ui.control.Label
        Label_26                        matlab.ui.control.Label
        mode14Label                     matlab.ui.control.Label
        Label_28                        matlab.ui.control.Label
        mode15Label                     matlab.ui.control.Label
        Label_30                        matlab.ui.control.Label
        mode16Label                     matlab.ui.control.Label
        Label_32                        matlab.ui.control.Label
        mode17Label                     matlab.ui.control.Label
        Label_34                        matlab.ui.control.Label
        mode18Label                     matlab.ui.control.Label
        Label_36                        matlab.ui.control.Label
        mode19Label                     matlab.ui.control.Label
        Label_38                        matlab.ui.control.Label
        mode20Label                     matlab.ui.control.Label
        Label_40                        matlab.ui.control.Label
        InputDataPanel                  matlab.ui.container.Panel
        massEditFieldLabel              matlab.ui.control.Label
        massEditField                   matlab.ui.control.NumericEditField
        lengthEditFieldLabel            matlab.ui.control.Label
        lengthEditField                 matlab.ui.control.NumericEditField
        TEditFieldLabel                 matlab.ui.control.Label
        TEditField                      matlab.ui.control.NumericEditField
        TEditField_2                    matlab.ui.control.NumericEditField
        MinLabel                        matlab.ui.control.Label
        MaxLabel                        matlab.ui.control.Label
        EIEditField_3                   matlab.ui.control.NumericEditField
        MinLabel_2                      matlab.ui.control.Label
        MaxLabel_2                      matlab.ui.control.Label
        EIEditFieldLabel                matlab.ui.control.Label
        EIEditField                     matlab.ui.control.NumericEditField
        TSliderLabel                    matlab.ui.control.Label
        TSlider                         matlab.ui.control.Slider
        EISliderLabel                   matlab.ui.control.Label
        EISlider                        matlab.ui.control.Slider
        calcButton                      matlab.ui.control.Button
        TensionValuekNLabel             matlab.ui.control.Label
        Label_42                        matlab.ui.control.Label
        EIValuekNm2Label                matlab.ui.control.Label
        Label_43                        matlab.ui.control.Label
        Tree_2                          matlab.ui.container.Tree
        ElementsNode                    matlab.ui.container.TreeNode
        StringTheoryNode_2              matlab.ui.container.TreeNode
        HingedHingedBeamNode_2          matlab.ui.container.TreeNode
        CalmpedClampedBeamNode          matlab.ui.container.TreeNode
        TensionEstimationLETab          matlab.ui.container.Tab
        UIregressionAxes                matlab.ui.control.UIAxes
        SettingsPanel                   matlab.ui.container.Panel
        FxLabel                         matlab.ui.control.Label
        FxEditField                     matlab.ui.control.EditField
        strataEditFieldLabel            matlab.ui.control.Label
        strataEditField                 matlab.ui.control.NumericEditField
        stratbEditFieldLabel            matlab.ui.control.Label
        stratbEditField                 matlab.ui.control.NumericEditField
        RunButton                       matlab.ui.control.Button
        RobustDropDownLabel             matlab.ui.control.Label
        RobustDropDown                  matlab.ui.control.DropDown
        algorithemDropDownLabel         matlab.ui.control.Label
        algorithemDropDown              matlab.ui.control.DropDown
        TensionkNLabel                  matlab.ui.control.Label
        Label_44                        matlab.ui.control.Label
        EIkNm2Label                     matlab.ui.control.Label
        Label_45                        matlab.ui.control.Label
        mEditFieldLabel                 matlab.ui.control.Label
        mEditField                      matlab.ui.control.NumericEditField
        LEditFieldLabel                 matlab.ui.control.Label
        LEditField                      matlab.ui.control.NumericEditField
        TextArea                        matlab.ui.control.TextArea
        Label_46                        matlab.ui.control.Label
        Panel_10                        matlab.ui.container.Panel
        Tree                            matlab.ui.container.Tree
        MethodsNode                     matlab.ui.container.TreeNode
        StringTheoryNode                matlab.ui.container.TreeNode
        HingedHingedBeamNode            matlab.ui.container.TreeNode
        CalmpedClampedBeamNode_2        matlab.ui.container.TreeNode
        ModeshapeFunctionsTab           matlab.ui.container.Tab
        TabGroup8                       matlab.ui.container.TabGroup
        SensorDataTab                   matlab.ui.container.Tab
        SensorNumberDropDownLabel       matlab.ui.control.Label
        SensorNumberDropDown            matlab.ui.control.DropDown
        LocationEditFieldLabel          matlab.ui.control.Label
        LocationEditField               matlab.ui.control.NumericEditField
        LocationEditField_2Label        matlab.ui.control.Label
        LocationEditField_2             matlab.ui.control.NumericEditField
        LocationEditField_3Label        matlab.ui.control.Label
        LocationEditField_3             matlab.ui.control.NumericEditField
        LocationEditField_4Label        matlab.ui.control.Label
        LocationEditField_4             matlab.ui.control.NumericEditField
        LocationEditField_5Label        matlab.ui.control.Label
        LocationEditField_5             matlab.ui.control.NumericEditField
        LocationEditField_6Label        matlab.ui.control.Label
        LocationEditField_6             matlab.ui.control.NumericEditField
        LocationEditField_7Label        matlab.ui.control.Label
        LocationEditField_7             matlab.ui.control.NumericEditField
        LocationEditField_8Label        matlab.ui.control.Label
        LocationEditField_8             matlab.ui.control.NumericEditField
        LocationEditField_9Label        matlab.ui.control.Label
        LocationEditField_9             matlab.ui.control.NumericEditField
        LocationEditField_10Label       matlab.ui.control.Label
        LocationEditField_10            matlab.ui.control.NumericEditField
        SavePositionsButton             matlab.ui.control.Button
        Sensor1Button                   matlab.ui.control.DropDown
        Sensor2Button                   matlab.ui.control.DropDown
        Sensor3Button                   matlab.ui.control.DropDown
        Sensor4Button                   matlab.ui.control.DropDown
        Sensor5Button                   matlab.ui.control.DropDown
        Sensor6Button                   matlab.ui.control.DropDown
        Sensor7Button                   matlab.ui.control.DropDown
        Sensor8Button                   matlab.ui.control.DropDown
        Sensor9Button                   matlab.ui.control.DropDown
        Sensor10Button                  matlab.ui.control.DropDown
        ModeShapeFunctionTab            matlab.ui.container.Tab
        ModeNumberDropDownLabel         matlab.ui.control.Label
        ModeNumberDropDown              matlab.ui.control.DropDown
        ModeDropDownLabel               matlab.ui.control.Label
        ModeDropDown                    matlab.ui.control.DropDown
        TabGroup10                      matlab.ui.container.TabGroup
        dataTab                         matlab.ui.container.Tab
        UITable5                        matlab.ui.control.Table
        CorrespondingRowTab             matlab.ui.container.Tab
        FrequencyRowMode1EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode1EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode2EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode2EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode3EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode3EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode4EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode4EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode5EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode5EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode6EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode6EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode7EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode7EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode8EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode8EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode9EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode9EditField      matlab.ui.control.NumericEditField
        FrequencyRowMode10EditFieldLabel  matlab.ui.control.Label
        FrequencyRowMode10EditField     matlab.ui.control.NumericEditField
        SaveDataTab                     matlab.ui.container.Tab
        ModeshapeRatioCalcButton        matlab.ui.control.Button
        TextArea_4                      matlab.ui.control.TextArea
        DPlotModeShapesButton           matlab.ui.control.Button
        FitOptionTab                    matlab.ui.container.Tab
        strataEditField_2Label          matlab.ui.control.Label
        strataEditField_2               matlab.ui.control.NumericEditField
        stratbEditField_2Label          matlab.ui.control.Label
        stratbEditField_2               matlab.ui.control.NumericEditField
        TextArea_2                      matlab.ui.control.TextArea
        RobustDropDown_2Label           matlab.ui.control.Label
        RobustDropDown_2                matlab.ui.control.DropDown
        algorithemDropDown_2Label       matlab.ui.control.Label
        algorithemDropDown_2            matlab.ui.control.DropDown
        RunButton_2                     matlab.ui.control.Button
        DownLimLEditFieldLabel          matlab.ui.control.Label
        DownLimLEditField               matlab.ui.control.NumericEditField
        UpLimLEditFieldLabel            matlab.ui.control.Label
        UpLimLEditField                 matlab.ui.control.NumericEditField
        DownLimaEditFieldLabel          matlab.ui.control.Label
        DownLimaEditField               matlab.ui.control.NumericEditField
        UpLimaEditFieldLabel            matlab.ui.control.Label
        UpLimaEditField                 matlab.ui.control.NumericEditField
        SimpleBeamRegressionTab         matlab.ui.container.Tab
        RunButton_3                     matlab.ui.control.Button
        strataEditField_3Label          matlab.ui.control.Label
        strataEditField_3               matlab.ui.control.NumericEditField
        stratbEditField_3Label          matlab.ui.control.Label
        stratbEditField_3               matlab.ui.control.NumericEditField
        RobustDropDown_3Label           matlab.ui.control.Label
        RobustDropDown_3                matlab.ui.control.DropDown
        algorithemDropDown_3Label       matlab.ui.control.Label
        algorithemDropDown_3            matlab.ui.control.DropDown
        mEditField_3Label               matlab.ui.control.Label
        mEditField_3                    matlab.ui.control.NumericEditField
        LEditField_3Label               matlab.ui.control.Label
        LEditField_3                    matlab.ui.control.NumericEditField
        TextArea_3                      matlab.ui.control.TextArea
        TabGroup9                       matlab.ui.container.TabGroup
        ModeShapeRatiosTab              matlab.ui.container.Tab
        UIAxes                          matlab.ui.control.UIAxes
        ModeShapeRatioForEachModeTab    matlab.ui.container.Tab
        UIAxes_2                        matlab.ui.control.UIAxes
        TextArea_6                      matlab.ui.control.TextArea
        Tab                             matlab.ui.container.Tab
        WaveletBasedDamageDetectionTab  matlab.ui.container.Tab
        Panel_11                        matlab.ui.container.Panel
        UIAxes6                         matlab.ui.control.UIAxes
        UIAxes6_2                       matlab.ui.control.UIAxes
        UIAxes6_3                       matlab.ui.control.UIAxes
        UIAxes6_4                       matlab.ui.control.UIAxes
        TextArea_10                     matlab.ui.control.TextArea
        Tree5                           matlab.ui.container.Tree
        DamageDetectionIndexNode        matlab.ui.container.TreeNode
        FBIndexNode                     matlab.ui.container.TreeNode
        EDIndexNode                     matlab.ui.container.TreeNode
        UnDamgedDataButton              matlab.ui.control.Button
        DamgedDataButton                matlab.ui.control.Button
        SegmentLEditFieldLabel          matlab.ui.control.Label
        SegmentLEditField               matlab.ui.control.NumericEditField
        LevelEditFieldLabel             matlab.ui.control.Label
        LevelEditField                  matlab.ui.control.NumericEditField
        mEditField_4Label               matlab.ui.control.Label
        mEditField_4                    matlab.ui.control.NumericEditField
        motherwavDropDownLabel          matlab.ui.control.Label
        motherwavDropDown               matlab.ui.control.DropDown
        wavletnumEditFieldLabel         matlab.ui.control.Label
        wavletnumEditField              matlab.ui.control.NumericEditField
        RunDamageDetectionAlgorithmButton  matlab.ui.control.Button
        FilteringLowPathPanel           matlab.ui.container.Panel
        Switch                          matlab.ui.control.Switch
        cuttoffSpinnerLabel             matlab.ui.control.Label
        cuttoffSpinner                  matlab.ui.control.Spinner
        orderSpinnerLabel               matlab.ui.control.Label
        orderSpinner                    matlab.ui.control.Spinner
        FreSamSpinnerLabel              matlab.ui.control.Label
        FreSamSpinner                   matlab.ui.control.Spinner
        BaseLineCorrectionPanel         matlab.ui.container.Panel
        Switch_2                        matlab.ui.control.Switch
        ButtonGroup_2                   matlab.ui.container.ButtonGroup
        thOrderButton                   matlab.ui.control.RadioButton
        thOrderButton_2                 matlab.ui.control.RadioButton
        thOrderButton_3                 matlab.ui.control.RadioButton
        cuttoffSpinner_2Label           matlab.ui.control.Label
        cuttoffSpinner_2                matlab.ui.control.Spinner
        orderSpinner_2Label             matlab.ui.control.Label
        orderSpinner_2                  matlab.ui.control.Spinner
        dEditField_2Label               matlab.ui.control.Label
        dEditField_2                    matlab.ui.control.NumericEditField
    end

    
    
    methods (Access = private)
        
        %% String Theory Function
        function [fitresult, gof] = StringTheorey(app, x, Frequency)
            global StartPoint
            global FitType
            
            %% Fit: 'untitled fit 2'.
            [xData, yData] = prepareCurveData( x, Frequency );
            
            % Set up fittype and options.
            ft = fittype( FitType, 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.StartPoint = StartPoint;
            
            opts.Robust = app.RobustDropDown.Value;
            opts.Algorithm = app.algorithemDropDown.Value;
            
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            
        end
        
        %% simple Beam Theory Function
        function [fitresult, gof] = RegresionSimpleBeamTheorey(app,x, Frequency)
            global StartPoint
            global FitType
            global Robust
            global alg
            %% Fit: 'untitled fit 2'.
            [xData, yData] = prepareCurveData( x, Frequency );
            
            % Set up fittype and options.
            ft = fittype( FitType, 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.StartPoint = StartPoint;
            
            opts.Robust = Robust;
            opts.Algorithm = alg;
            
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts);
            
        end
        
        function [fitresult, gof] = RegresionSimpleBeamTheorey1(app,x, Frequency)
            global StartPoint
            global FitType
            global Robust
            global alg
            %% Fit: 'untitled fit 2'.
            [xData, yData] = prepareCurveData( x, Frequency );
            
            % Set up fittype and options.
            ft = fittype( FitType, 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.StartPoint = StartPoint;
            
            opts.Robust = Robust;
            opts.Algorithm = alg;
            
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts);
            
        end
        function [fitresult, gof] = RegresionFixedBeamTheorey(app,x, Frequency)
            global StartPoint
            
            global FitType
            
            
            %% Fit: 'untitled fit 2'.
            [xData, yData] = prepareCurveData( x, Frequency );
            
            % Set up fittype and options.
            ft = fittype( FitType, 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.StartPoint = StartPoint;
            opts.Lower = [0 0];
            
            
            opts.Robust = app.RobustDropDown.Value;
            opts.Algorithm = app.algorithemDropDown.Value;
            
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts);
            
        end
        
        
        function [fitresult, gof] = RegresionSimpleBeamMiladiTheorey(app,x,Frequency)
            
            global StartPointSimpleBea
            global FitType
            global L
            global Robust
            global alg
            global UPL
            global DOWNL
            
            [xData, yData] = prepareCurveData(x,Frequency);
            
            % Set up fittype and options.
            ft = fittype( FitType, 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Robust = Robust;
            opts.Algorithm = alg;
            opts.Lower = [0 0 DOWNL*L];
            opts.Upper = [inf inf UPL*L];
          
            opts.StartPoint = StartPointSimpleBeam;
            
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
        end
        function [f,Amplitude,PSD]=FFT(app,signal,dt);
            global dt
            
            % FFT
            T =dt;                               % Sample time
            Fs=1/dt;                             %Sampling frequency
            L =  numel(signal(:,1));             % Length of signal
            t = (0:L-1)*T;                       % Time vector
            NFFT = 2^nextpow2(L);                % Next power of 2 from length of y
            Y = fft(signal(:,1),NFFT)/L;
            f = Fs/2*linspace(0,1,NFFT/2+1);
            
            % Plot single-sided amplitude spectrum.
            f_s=2*abs(Y(1:NFFT/2+1));
            Amplitude=2*abs(Y(1:NFFT/2+1));
            
            % PSD
            PSD=((f_s).^2)./(f');
        end
        
        %% Mode Shpae Functions
        
        function [fitresult, gof] = ModeFit1(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*cos((1*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
           
            
        end
        
        function [fitresult, gof] = ModeFit2(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*sin((2*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
            
        end
        function [fitresult, gof] = ModeFit3(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*cos((3*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
        end
        %%
        function [fitresult, gof] = ModeFit4(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*sin((4*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
            
        end
        function [fitresult, gof] = ModeFit5(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*cos((5*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
            
        end
        function [fitresult, gof] = ModeFit6(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*sin((6*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
            
        end
        function [fitresult, gof] = ModeFit7(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*cos((7*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
            
        end
        function [fitresult, gof] = ModeFit8(app,x, y)
            
            
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*sin((8*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
            
        end
        function [fitresult, gof] = ModeFit9(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*cos((9*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
            
        end
        function [fitresult, gof] = ModeFit10(app,x, y)
            
            global STARTPOINT
            global ROBUST
            global ALGORITHEM
            global DLL
            global ULL
            global DLa
            global ULa
            
            
            
            %% Fit: 'untitled fit 1'.
            [xData, yData] = prepareCurveData( x, y );
            
            % Set up fittype and options.
            ft = fittype( 'a*sin((10*pi*x)/L)', 'independent', 'x', 'dependent', 'y' );
            opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
            opts.Display = 'Off';
            opts.Lower = [DLL DLa];
            opts.Upper = [ULL ULa];
            opts.StartPoint = STARTPOINT;
            opts.Robust = ROBUST;
            opts.Algorithm = ALGORITHEM;
            % Fit model to data.
            [fitresult, gof] = fit( xData, yData, ft, opts );
            %%
        end
        %
        
        
        function  OpenFumc(app)
            global PreProcess
            PreProcess.ChannelDataNode = [] ;
            
            
        end
        
        function [f,yy,modeshape,Amplitude] = ModeShapeRatioFunction(app,signal,fs)
            
            global signal
            for i = 1:size(signal,2)
                Fs = 500;
                T = 1/Fs;
                L =  numel(signal(:,1));             % Length of signal
                t = (0:L-1)*T;                       % Time vector
                NFFT = 2^nextpow2(L);                % Next power of 2 from length of y
                Y(i,:) = fft(signal(:,i),NFFT)/L;
                f = Fs/2*linspace(0,1,NFFT/2+1);
                % Plot single-sided amplitude spectrum.
                f_s(i,:)=2*abs(Y(i,1:NFFT/2+1));
                Amplitude(i,:)=2*Y(i,1:NFFT/2+1);
            end
            yy = 1:size(signal,2);
            theta = angle(Amplitude);
            for  i = 1:size(signal,2)
                cxy(i,:) = mscohere(f,Amplitude(i,:),[],[],NFFT/2+1);
            end
            
            modeshape = abs(Amplitude).*theta;
            modeshape =  modeshape;
        end
        
        function [t, disp, vel, acc] = baseline_cor_chiu(app,t,udd,fcut,fitorder,filtorder)
            
            
            % STEP 1 : least-square fitting in acceleration
            pudd = polyfit(t,udd,fitorder);
            
            ptudd = polyval(pudd,t);
            
            udd_cor1 = udd - ptudd;
            
            % STEP 2 : high-pass filtering in acceleration
            df=1/t(2)/length(t);
            
            f=df:df:df*length(t);
            
            udd_cor1_f=fft(udd_cor1);
            
            [b,a] = butter(filtorder,fcut/(f(end)/2),'high'); % 4th order butterworth filter
            
            udd_cor2_f = filter(b,a,udd_cor1_f);
            
            udd_cor2 = ifft(udd_cor2_f);
            
            u_cor2 = cumtrapz(cumtrapz(udd_cor2))*t(2)^2; % disp from acc
            
            % STEP 3 : subtract the initial value in the velocity
            %          subtract a linear trend from the displacement
            pu_cor2 = polyfit(t,u_cor2,1);
            
            ptu_cor2 = pu_cor2(1)*t + pu_cor2(2);
            
            ucor3 = u_cor2 - ptu_cor2;
            
            %ucor3(1) = 0;
            
            
            % output of the function
            acc = real(udd_cor2);
            vel = real(cumtrapz(acc)*t(2));
            disp = real(ucor3);
        end
        
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Callback function
        function RunButtonPushed(app, event)
   
        end

        % Button pushed function: NEw
        function NEwPushed(app, event)
            global matrix
            global MatrixChennel
            value = app.DropDownNew.Value;
            
            
            switch value
                
                case 'New Project'

                case 'New Channel Records'
                    [FileName, Dir] = uigetfile({'.mat','Matlab Files';'*.txt;*.dat','Text Files';'*.xls;*.xlsx','Excel Files';...
                        '*.*','All Files'},'File Selection','Uititled.txt');
                    File = fullfile ( Dir , FileName );
                    [~,~,Extension]=fileparts(File);
                    
                    if isempty(FileName)
                        return
                    end
                    
                    switch Extension
                        case '.mat'
                            
                            load(File.mat);
                            
                        case {'.txt','.dat'}
                            
                            matrix =  load(File,'-ascii');
                            
                        case {'.xlsx','.xls'}
                            
                            matrix =  xlsread(File);
                    end
                    
                    
                    MatrixChennel = {};
                    for j = 1:size(matrix,2)
                        MatrixChennel{j} = ['Sensor''s Data ' num2str(j)];
                        uitreenode(app.ChannelDataNode,'Text', MatrixChennel{j});
                    end
                    
                    if ~isempty(matrix)
                        msgbox('Loading The Data Is Seccssefully Done','Loading the Data','help','modal')
                    else isempty(matrix)
                        msgbox('Loading The Data Is Failed','Loading the Data','help','modal')
                    end
                    
            end
            
        end

        % Button pushed function: RunFilteringButton
        function RunFilteringButtonPushed(app, event)
            global matrix
            
            
            if isempty(matrix)
                msgbox('From New Tab Input the Channel Data First','Error','error',"Modal")
            end
   
            if ~isempty(matrix)
            a = cell(1,size(matrix,2));
            for i = 1:size(matrix,2)
            a{i} = num2str(i);
            end
       
            app.FilterTypeDropDown_2.Items = a;
            frequencysample = app.SamplingFrequencySpinner.Value;

            value = app.FilterTypeDropDown.Value;
            
            SelectedChanel = str2num(app.FilterTypeDropDown_2.Value);
            filterordere = str2num(app.FilterOrderKnob.Value);
            switch value
                
                case 'Low Path'
                    app.LowLimitFrequencyKnob.Enable = 'off';
                    app.HighLimitFrequencyKnob.Enable = 'off';
                    CutOfffrequency = app.CuttOffKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix(:,SelectedChanel),1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,Wn,'low');
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix(:,SelectedChanel));
                    
                    plot(app.FilterAxes,t , matrix(:,SelectedChanel),'b--',t , sf,'ro-','LineWidth',1,'MarkerSize',3,...
                        'MarkerEdgeColor','r','MarkerFaceColor','y');     
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix(:,SelectedChanel),nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    f = f';
                    plot(app.UIAxes5,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    
%                     app.FilterTable.Data = [t matrix(:,SelectedChanel) sf];
                    if isempty(matrix)
                        msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
                    end
    
                case 'High Path'
                    app.LowLimitFrequencyKnob.Enable = 'off';
                    app.HighLimitFrequencyKnob.Enable = 'off';
                    CutOfffrequency = app.CuttOffKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix(:,SelectedChanel),1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,Wn,'high');
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix(:,SelectedChanel));
                    
                    plot(app.FilterAxes,t , matrix(:,SelectedChanel),'b--',t , sf,'ro-','LineWidth',1,'MarkerSize',3,...
                        'MarkerEdgeColor','r','MarkerFaceColor','y')
                     nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix(:,SelectedChanel),nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';

                    plot(app.UIAxes5,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    
%                     app.FilterTable.Data = [t matrix(:,SelectedChanel) sf];
                    if isempty(matrix)
                        msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
                    end
   
                case 'Band Path'
                    app.LowLimitFrequencyKnob.Enable = 'on';
                    app.HighLimitFrequencyKnob.Enable = 'on';
                    app.CuttOffKnob.Enable = 'off';
                    CutOfffrequencylow = app.LowLimitFrequencyKnob.Value;
                    CutOfffrequencyHigh = app.HighLimitFrequencyKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix(:,SelectedChanel),1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    WnLow = CutOfffrequencylow/(frequencysample /2);
                    WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,[WnLow WnHigh],"bandpass");
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix(:,SelectedChanel));
                    
                    plot(app.FilterAxes,t , matrix(:,SelectedChanel),'b--',t , sf,'ro-','LineWidth',1,'MarkerSize',3,...
                        'MarkerEdgeColor','r','MarkerFaceColor','y')
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix(:,SelectedChanel),nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.UIAxes5,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    
%                     app.FilterTable.Data = [t matrix(:,SelectedChanel) sf];
                    if isempty(matrix)
                        msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
                    end
                    
                    
                    
                case 'Band Stop'
                    app.LowLimitFrequencyKnob.Enable = 'on';
                    app.HighLimitFrequencyKnob.Enable = 'on';
                    app.CuttOffKnob.Enable = 'off';
                    CutOfffrequencylow = app.LowLimitFrequencyKnob.Value;
                    CutOfffrequencyHigh = app.HighLimitFrequencyKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    WnLow = CutOfffrequencylow/(frequencysample /2);
                    WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,[WnLow WnHigh],"stop");
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix(:,SelectedChanel));
                    
                    plot(app.FilterAxes,t , matrix(:,SelectedChanel),'b--',t , sf,'ro-','LineWidth',1,'MarkerSize',3,...
                        'MarkerEdgeColor','r','MarkerFaceColor','y')
                    
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix(:,SelectedChanel),nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.UIAxes5,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');

%                     app.FilterTable.Data = [t matrix(:,SelectedChanel) sf];
                    if isempty(matrix)
                        msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
                    end
                    
   
            end

            text1 = 'Results ------------------------------------------------------------------------------------------------------------------------------------------------------';
            text2 = 'Option 1: Butterworth Filter settings selection';
            text3 = 'Option 2: Fast Fourier Transform Spectrum';
            text4 = ['Data Size  : ' num2str(size(matrix))];
            text5 = ['Filter Type  :  ' value];
            text6 = ['Frequency Sample  :  ' num2str(frequencysample)];
            text7 = ['Order  :  ' num2str(CutOfffrequency)];
            text8 = 'Now Data Is Ready For Cleaning And Better Observation';

            app.ResultShowTextArea.Value = cellstr(strvcat(text1,['  '],text2,text3,text4,text5,text6,text7,text8));
            
            end
            
            
        end

        % Callback function
        function SaveTableDataButtonPushed(app, event)
            global matrix
            global t
            global sf
            
            matf = [t  matrix sf];
            
            
            [FileName, Dir] = uiputfile({'*.txt;*.dat','Text File'},'Save Results','Unkown.txt');
            File = fullfile(Dir,FileName);
            save(File,'matf','-ascii')
            
            if isempty(FileName)
                return
            end
            if isempty(matrix)
                msgbox('Input the data First','Warning Box','modal','help')
            end
            
        end

        % Callback function
        function ClearTableDataButtonPushed(app, event)
        app.FilterTable.Data = [];
        end

        % Callback function
        function RunFFTButtonPushed(app, event)
            
            global frequencysample
            global filterordere
            global CutOfffrequency
            global f
            global S
            global Sf
            
            global matrix
            matrix = matrix';
            matrix = matrix(:);
            if isempty(matrix)
                msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
            end

            global t
            global sf
            
            frequencysample = app.SamplingFrequencySpinner.Value;
            filterordere = str2double(app.FilterOrderKnob.Value);
            
            value = app.FilterTypeDropDown.Value;
            
            switch value
                
                case 'low'
                    
                    CutOfffrequency = app.CuttOffKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    
                    Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,Wn);
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
                case 'high'
                    
                    CutOfffrequency = app.CuttOffKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,Wn,'high');
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
                case 'bandpath'
                    
                    
                    CutOfffrequencylow = app.LowLimitFrequencyKnob.Value;
                    CutOfffrequencyHigh = app.HighLimitFrequencyKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    WnLow = CutOfffrequencylow/(frequencysample /2);
                    WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,[WnLow WnHigh],"bandpass");
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
                case 'stop'
                    
                    
                    CutOfffrequencylow = app.LowLimitFrequencyKnob.Value;
                    CutOfffrequencyHigh = app.HighLimitFrequencyKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    WnLow = CutOfffrequencylow/(frequencysample /2);
                    WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,[WnLow WnHigh],"stop");
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';

                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
            end
            
                  
        end

        % Callback function
        function ClearButtonPushed(app, event)
            cla(app.FFTaxes)
        end

        % Callback function
        function ClearButton_2Pushed(app, event)
            cla(app.FilterAxes)
        end

        % Callback function
        function SaveDataButtonPushed(app, event)
            global f
            global S
            global Sf
            
            matf = [ f S Sf ];
            
            [FileName, Dir] = uiputfile({'*.txt;*.dat','Text File'},'Save Results','Unkown.txt');
            File = fullfile(Dir,FileName);
            save(File,'matf','-ascii');
        end

        % Button pushed function: ExitButton
        function ExitButtonPushed(app, event)
            global matrix
            Exit = questdlg('Are You sure ?', ...
               	'Exit Question', ...
               	'Yes','No','No');
            
            switch Exit
                case 'Yes'
                    close(app.TCMS)
                    matrix = [];
                case 'No'
                    return
            end
        end

        % Callback function
        function DefaultSettingCheckBoxValueChanged(app, event)
            value = app.DefaultSettingCheckBox.Value;
            
            if value ==1
                
                app.CuttOffKnob.Enable = 'off';
                app.FilterOrderKnob.Enable = 'off';
                app.SamplingFrequencySpinner.Enable = 'off';
                app.FilterOrderKnob.Value ='5' ;
                app.SamplingFrequencySpinner.Value = 100;
                
            else
                
                app.CuttOffKnob.Enable = 'on';
                app.FilterOrderKnob.Enable = 'on';
                app.SamplingFrequencySpinner.Enable = 'on';
                
            end
        end

        % Callback function
        function DataCursorButtonPushed(app, event)
          
            
        end

        % Callback function
        function modenumberDropDownValueChanged(app, event)
            value = app.modenumberDropDown.Value;
            
            switch value
                case '1 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'off';
                    app.mode3EditField.Enable = 'off';
                    app.mode4EditField.Enable = 'off';
                    app.mode5EditField.Enable = 'off';
                    app.mode6EditField.Enable = 'off';
                    app.mode7EditField.Enable = 'off';
                    app.mode8EditField.Enable = 'off';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '2 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'off';
                    app.mode4EditField.Enable = 'off';
                    app.mode5EditField.Enable = 'off';
                    app.mode6EditField.Enable = 'off';
                    app.mode7EditField.Enable = 'off';
                    app.mode8EditField.Enable = 'off';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '3 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'off';
                    app.mode5EditField.Enable = 'off';
                    app.mode6EditField.Enable = 'off';
                    app.mode7EditField.Enable = 'off';
                    app.mode8EditField.Enable = 'off';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '4 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'on';
                    app.mode5EditField.Enable = 'off';
                    app.mode6EditField.Enable = 'off';
                    app.mode7EditField.Enable = 'off';
                    app.mode8EditField.Enable = 'off';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '5 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'on';
                    app.mode5EditField.Enable = 'on';
                    app.mode6EditField.Enable = 'off';
                    app.mode7EditField.Enable = 'off';
                    app.mode8EditField.Enable = 'off';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '6 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'on';
                    app.mode5EditField.Enable = 'on';
                    app.mode6EditField.Enable = 'on';
                    app.mode7EditField.Enable = 'off';
                    app.mode8EditField.Enable = 'off';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '7 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'on';
                    app.mode5EditField.Enable = 'on';
                    app.mode6EditField.Enable = 'on';
                    app.mode7EditField.Enable = 'on';
                    app.mode8EditField.Enable = 'off';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '8 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'on';
                    app.mode5EditField.Enable = 'on';
                    app.mode6EditField.Enable = 'on';
                    app.mode7EditField.Enable = 'on';
                    app.mode8EditField.Enable = 'on';
                    app.mode9EditField.Enable = 'off';
                    app.mode10EditField.Enable = 'off';
                case '9 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'on';
                    app.mode5EditField.Enable = 'on';
                    app.mode6EditField.Enable = 'on';
                    app.mode7EditField.Enable = 'on';
                    app.mode8EditField.Enable = 'on';
                    app.mode9EditField.Enable = 'on';
                    app.mode10EditField.Enable = 'off';
                case '10 mode'
                    app.mode1EditField.Enable = 'on';
                    app.mode2EditField.Enable = 'on';
                    app.mode3EditField.Enable = 'on';
                    app.mode4EditField.Enable = 'on';
                    app.mode5EditField.Enable = 'on';
                    app.mode6EditField.Enable = 'on';
                    app.mode7EditField.Enable = 'on';
                    app.mode8EditField.Enable = 'on';
                    app.mode9EditField.Enable = 'on';
                    app.mode10EditField.Enable = 'on';
                    
                    
            end
        end

        % Callback function
        function SaveFrequenciesButtonPushed(app, event)
            global F1, global F2, global F3, global F4, global F5, global F6...
                ,global F7, global F8, global F9, global F10, global Frequency;
            
            F1 = app.mode1EditField.Value;
            F2 = app.mode2EditField.Value;
            F3 = app.mode3EditField.Value;
            F4 = app.mode4EditField.Value;
            F5 = app.mode5EditField.Value;
            F6 = app.mode6EditField.Value;
            F7 = app.mode7EditField.Value;
            F8 = app.mode8EditField.Value;
            F9 = app.mode9EditField.Value;
            F10 = app.mode10EditField.Value;
            
            
            value =  app.modenumberDropDown.Value;
            
            switch value
                case '1 mode'
                    Frequency = [F1];
                case '2 mode'
                    Frequency = [F1 F2 ];
                case '3 mode'
                    Frequency = [F1 F2 F3 ];
                case '4 mode'
                    Frequency = [F1 F2 F3 F4 ];
                case '5 mode'
                    Frequency = [F1 F2 F3 F4 F5 ];
                case '6 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 ];
                case '7 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7];
                case '8 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7 F8 ];
                case '9 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7 F8 F9 ];
                case '10 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7 F8 F9 F10];
                    
            end
            
            
        end

        % Value changed function: TSlider
        function TSliderValueChanged(app, event)
            
            %
            TMin = app.TEditField.Value;
            TMax = app.TEditField_2.Value;
            
            app.TSlider.Limits = [TMin TMax]
            app.Label_42.Text = num2str(app.TSlider.Value);
            
        end

        % Value changing function: TSlider
        function TSliderValueChanging(app, event)
       
            
        end

        % Value changed function: EISlider
        function EISliderValueChanged(app, event)
            
            
            EIMin = app.EIEditField.Value;
            EIMax = app.EIEditField_3.Value;
            
            app.EISlider.Limits = [EIMin EIMax];
            app.Label_43.Text = num2str(app.EISlider.Value);
            
            
        end

        % Selection changed function: Tree_2
        function Tree_2SelectionChanged(app, event)
            %
        end

        % Button pushed function: calcButton
        function calcButtonPushed(app, event)
            selectedNodes = app.Tree_2.SelectedNodes;
            if isempty(selectedNodes)
                
                msgbox('Define the method','User Guide','help','modal')
                return
            end
            m = app.massEditField.Value;
            L = app.lengthEditField.Value ;
            
            T = str2double(app.Label_42.Text);
            EI = str2double(app.Label_43.Text);
            
            z=L*(T/EI)^0.5;
            n = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];
            
            switch selectedNodes.Text
                
                case 'String Theory'
                    
                    
                    for i = 1: size(n,2)
                        Hinged(i,1)=((n(1,i)/(2*L))*(sqrt((T*1000)/m)));
                    end
                    
                    
                    app.Label_2.Text =  num2str(Hinged(1,1));
                    app.Label_4.Text =   num2str(Hinged(2,1));
                    app.Label_6.Text =   num2str(Hinged(3,1));
                    app.Label_8.Text =  num2str(Hinged(4,1));
                    app.Label_10.Text =   num2str(Hinged(5,1));
                    app.Label_12.Text =   num2str(Hinged(6,1));
                    app.Label_14.Text =   num2str(Hinged(7,1));
                    app.Label_16.Text =   num2str(Hinged(8,1));
                    app.Label_18.Text =   num2str(Hinged(9,1));
                    app.Label_20.Text =   num2str(Hinged(10,1));
                    app.Label_22.Text =   num2str(Hinged(11,1));
                    app.Label_24.Text =   num2str(Hinged(12,1));
                    app.Label_26.Text =   num2str(Hinged(13,1));
                    app.Label_28.Text =   num2str(Hinged(14,1));
                    app.Label_30.Text =   num2str(Hinged(15,1));
                    app.Label_32.Text =   num2str(Hinged(16,1));
                    app.Label_34.Text =   num2str(Hinged(17,1));
                    app.Label_36.Text =   num2str(Hinged(18,1));
                    app.Label_38.Text =   num2str(Hinged(19,1));
                    app.Label_40.Text =   num2str(Hinged(20,1));
                    
                    
                    
                case 'Hinged-Hinged Beam'
                    for i = 1: size(n,2)
                        HingedEI(i,1)=((n(1,i)/(2*L))*(sqrt((T*1000)/m))*sqrt(1+((n(1,i)*pi)/z^2)));
                    end
                    
                    app.Label_2.Text =  num2str(HingedEI(1,1));
                    app.Label_4.Text =   num2str(HingedEI(2,1));
                    app.Label_6.Text =   num2str(HingedEI(3,1));
                    app.Label_8.Text =  num2str(HingedEI(4,1));
                    app.Label_10.Text =   num2str(HingedEI(5,1));
                    app.Label_12.Text =   num2str(HingedEI(6,1));
                    app.Label_14.Text =   num2str(HingedEI(7,1));
                    app.Label_16.Text =   num2str(HingedEI(8,1));
                    app.Label_18.Text =   num2str(HingedEI(9,1));
                    app.Label_20.Text =   num2str(HingedEI(10,1));
                    app.Label_22.Text =   num2str(HingedEI(11,1));
                    app.Label_24.Text =   num2str(HingedEI(12,1));
                    app.Label_26.Text =   num2str(HingedEI(13,1));
                    app.Label_28.Text =   num2str(HingedEI(14,1));
                    app.Label_30.Text =   num2str(HingedEI(15,1));
                    app.Label_32.Text =   num2str(HingedEI(16,1));
                    app.Label_34.Text =   num2str(HingedEI(17,1));
                    app.Label_36.Text =   num2str(HingedEI(18,1));
                    app.Label_38.Text =   num2str(HingedEI(19,1));
                    app.Label_40.Text =   num2str(HingedEI(20,1));
                    
                    
                case 'Calmped-Clamped Beam'
                    for i = 1: size(n,2)
                        FixedEI(i,1)=((n(1,i)/(2*L))*(sqrt((T*1000)/m))*...
                            (1+(2/z)+((4+((n(1,i)^2*pi^2)/2))*1/z^2)));
                    end
                    
                    
                    
                    app.Label_2.Text =  num2str(FixedEI(1,1));
                    app.Label_4.Text =   num2str(FixedEI(2,1));
                    app.Label_6.Text =   num2str(FixedEI(3,1));
                    app.Label_8.Text =  num2str(FixedEI(4,1));
                    app.Label_10.Text =   num2str(FixedEI(5,1));
                    app.Label_12.Text =   num2str(FixedEI(6,1));
                    app.Label_14.Text =   num2str(FixedEI(7,1));
                    app.Label_16.Text =   num2str(FixedEI(8,1));
                    app.Label_18.Text =   num2str(FixedEI(9,1));
                    app.Label_20.Text =   num2str(FixedEI(10,1));
                    app.Label_22.Text =   num2str(FixedEI(11,1));
                    app.Label_24.Text =   num2str(FixedEI(12,1));
                    app.Label_26.Text =   num2str(FixedEI(13,1));
                    app.Label_28.Text =   num2str(FixedEI(14,1));
                    app.Label_30.Text =   num2str(FixedEI(15,1));
                    app.Label_32.Text =   num2str(FixedEI(16,1));
                    app.Label_34.Text =   num2str(FixedEI(17,1));
                    app.Label_36.Text =   num2str(FixedEI(18,1));
                    app.Label_38.Text =   num2str(FixedEI(19,1));
                    app.Label_40.Text =   num2str(FixedEI(20,1));
                case 'Optimization with effective Lenght'
                    
                    
            end
        end

        % Selection changed function: Tree
        function TreeSelectionChanged(app, event)
            selectedNodes = app.Tree.SelectedNodes;
            
            switch selectedNodes.Text
                case 'String Theory'
                    app.stratbEditField.Enable = 'off';
%                     app.startcEditField.Enable = 'off';
%                     app.DownLimitLEditField.Enable = 'off';
%                     app.UpLimitLEditField.Enable = 'off';
                    app.EIkNm2Label.Enable = 'off';
%                     app.EffectiveLLabel.Enable = 'off';
                    app.FxEditField.Value = 'a*x';
                    
                    
                case 'Hinged-Hinged Beam'
                    app.stratbEditField.Enable = 'on';
%                     app.startcEditField.Enable = 'off';
%                     app.DownLimitLEditField.Enable = 'off';
%                     app.UpLimitLEditField.Enable = 'off';
                    app.EIkNm2Label.Enable = 'on';
%                     app.EffectiveLLabel.Enable = 'off';
                    app.FxEditField.Value = 'sqrt(a*x^2+b*x^4)';
                    
                case 'Calmped-Clamped Beam'
                    app.stratbEditField.Enable = 'on';
%                     app.startcEditField.Enable = 'off';
%                     app.DownLimitLEditField.Enable = 'off';
%                     app.UpLimitLEditField.Enable = 'off';
                    app.EIkNm2Label.Enable = 'on';
%                     app.EffectiveLLabel.Enable = 'off';
                    app.FxEditField.Value = 'a*x*(1+(2/b)+(4+((x^2*pi^2)/2))*(1/b^2))';
                    
%                 case 'Optimization with effective Lenght'
%                     app.stratbEditField.Enable = 'on';
%                     app.startcEditField.Enable = 'on';
%                     app.DownLimitLEditField.Enable = 'on';
%                     app.UpLimitLEditField.Enable = 'on';
%                     app.EIkNm2Label.Enable = 'on';
%                     app.EffectiveLLabel.Enable = 'on';
%                     app.FxEditField.Value = 'sqrt(((a/(c^2))*x^2)+((b/(c^4))*x^4))';
                    
            end
            
            
            
        end

        % Button pushed function: RunButton
        function RunRegressionButtonPushed2(app, event)
            selectedNodes = app.Tree.SelectedNodes;
            
            global Frequency
            global StartPoint
            global FitType
            global Robust
            global alg
            global UPL
            global DOWNL
            global L
            global StartPointSimpleBeam
            
            m = app.mEditField.Value;
            L = app.LEditField.Value;
            
            if isempty(selectedNodes)
                msgbox('Define the method','User Guide','help','modal');
                return
            end
            
            
            switch selectedNodes.Text
                
                case 'String Theory'
                    
                    StartPoint =[app.strataEditField.Value];
                    FitType = 'a*x';
                    Robust = app.RobustDropDown.Value;
                    alg =  app.algorithemDropDown.Value;
                    x = 1:size(Frequency,2);
                    [fitresult, gof] = StringTheorey(app,x, Frequency);
                    A = fitresult.a;
                    T = m*(2*L*A)^2;
                    T = sprintf('%0.2f',T/1000);
                    app.Label_44.Text = num2str(T);
                    y = feval(fitresult,x);
                    plot(app.UIregressionAxes,x,y,'r--',x,Frequency,'bs');
                    
                    R = 'Results --------------------- ';
                    msg = 'Algorithm =  Non-Linear Least Square  ';
                    
                    AA = ['a = ' , num2str(fitresult.a)];
                    Tension =['Tension value [kN]= ' num2str(T)];
                    SSE =['SSE =' num2str(gof.sse)];
                    rr = ['adjrsquare = ' num2str(gof.adjrsquare)];
                    bb = ['dfe = ' num2str(gof.dfe)];
                    gg = ['rmse = ' num2str(gof.rmse)];
                    aa = ['rsquare = ' num2str(gof.rsquare)];
                    
                    
                    
                    app.TextArea.Value = cellstr(strvcat(R,' ','','',' ',msg,['Robust = ' Robust]...
                        ,['Algorithm = ' alg] ,AA,Tension,SSE,rr,bb,gg,aa));
                    
                case 'Hinged-Hinged Beam'
                    
                    StartPoint =[app.strataEditField.Value ...
                        app.stratbEditField.Value];
                    FitType = 'sqrt(a*x^2+b*x^4)';
                    Robust = app.RobustDropDown.Value;
                    alg =  app.algorithemDropDown.Value;
                    x = 1:size(Frequency,2);
                    [fitresult, gof] = RegresionSimpleBeamTheorey(app,x, Frequency);
                    
                    A = fitresult.a;
                    B = fitresult.b;
                    
                    T = 4*m*L^2*A;
                    T = sprintf('%0.3f',T/1000);
                    EI = (4*L^4*m*B)/(pi^2);
                    EI = sprintf('%0.2f',EI/1000);
                    
                    app.Label_44.Text = num2str(T);
                    app.Label_45.Text = num2str(EI);
                    
                    y = feval(fitresult,x);
                    plot(app.UIregressionAxes,x,y,'r--',x,Frequency,'bs');
                    
                    
                    R = 'Results --------------------- ';
                    msg = 'Algorithm =  Non-Linear Least Square  ';
                    
                    AA = ['a = ' , num2str(fitresult.a)];
                    BB = ['b = ' , num2str(fitresult.b)];
                    
                    Tension =['Tension value [kN]= ' num2str(T)];
                    EII = ['EI value [kN-m^2]= ' num2str(EI)];
                    SSE =['SSE =' num2str(gof.sse)];
                    rr = ['adjrsquare = ' num2str(gof.adjrsquare)];
                    bb = ['dfe = ' num2str(gof.dfe)];
                    gg = ['rmse = ' num2str(gof.rmse)];
                    aa = ['rsquare = ' num2str(gof.rsquare)];
                    
                    app.TextArea.Value = cellstr(strvcat(R,'','',' ',' ',msg,['Robust = ' Robust]...
                        ,['Algorithm = ' alg] ,AA,BB,Tension,EII,SSE,rr,bb,gg,aa));
                    
                    
                case 'Calmped-Clamped Beam'
                    
                    StartPoint =[app.strataEditField.Value ...
                        app.stratbEditField.Value];
                    FitType = 'a*x*(1+(2/b)+(4+((x^2*pi^2)/2))*(1/b^2))';
                    Robust = app.RobustDropDown.Value;
                    alg =  app.algorithemDropDown.Value;
                    x = 1:size(Frequency,2);
                    [fitresult, gof] = RegresionFixedBeamTheorey(app,x, Frequency);
                    
                    
                    A = fitresult.a;
                    B = fitresult.b;
                    
                    TT = m*(2*L*A)^2;
                    T = sprintf('%0.3f',TT/1000);
                    EI = (TT/1000)/((B/L)^2);
                    EIII = sprintf('%0.2f',EI/1000);
                    
                    app.Label_44.Text = num2str(T);
                    app.Label_45.Text = num2str(EI);
                    
                    y = feval(fitresult,x);
                    plot(app.UIregressionAxes,x,y,'r--',x,Frequency,'bs');
                    
                    
                    R = 'Results --------------------- ';
                    msg = 'Algorithm =  Non-Linear Least Square  ';
                    
                    AA = ['a = ' , num2str(fitresult.a)];
                    BB = ['b = ' , num2str(fitresult.b)];
                    
                    Tension =['Tension value [kN]= ' num2str(T)];
                    EII = ['EI value [kN-m^2]= ' num2str(EI)];
                    SSE =['SSE =' num2str(gof.sse)];
                    rr = ['adjrsquare = ' num2str(gof.adjrsquare)];
                    bb = ['dfe = ' num2str(gof.dfe)];
                    gg = ['rmse = ' num2str(gof.rmse)];
                    aa = ['rsquare = ' num2str(gof.rsquare)];
                    
                    app.TextArea.Value = cellstr(strvcat(R,'','',' ',' ',msg,['Robust = ' Robust]...
                        ,['Algorithm = ' alg] ,AA,BB,Tension,EII,SSE,rr,bb,gg,aa));
                    
                    
                    %                 case 'Optimization with effective Lenght'
                    %                     x = 1:size(Frequency,2);
                    %                     StartPointSimpleBeam =[app.strataEditField.Value...
                    %                         app.stratbEditField.Value app.startcEditField.Value];
                    %
                    %                     DOWNL = app.DownLimitLEditField.Value;
                    %                     UPL= app.UpLimitLEditField.Value;
                    %                     FitType = 'sqrt(((a/(c^2))*x^2)+((b/(c^4))*x^4))';
                    %
                    %                     [fitresult, gof] = RegresionSimpleBeamMiladiTheorey(app,x,Frequency);
                    %
                    %                     A = fitresult.a;
                    %                     B = fitresult.b;
                    %                     C = fitresult.c;
                    %
                    %                     T = 4*m*A;
                    %                     T = sprintf('%0.3f',T/1000);
                    %                     EI = (4*m*B)/(pi^2);
                    %                     EI = sprintf('%0.2f',EI/1000);
                    %                     LL = C;
                    %
                    %                     app.Label_44.Text = num2str(T);
                    %                     app.Label_45.Text = num2str(EI);
                    %                     app.Label_46.Text = num2str(LL);
                    %
                    %                     y = feval(fitresult,x);
                    %                     plot(app.UIregressionAxes,x,y,'r--',x,Frequency,'bs');
                    %
                    %
                    %                     R = ' ------------------- Results --------------------- ';
                    %                     msg = 'Algorithm =  Non-Linear Least Square  ';
                    %
                    %                     AA = ['a = ' , num2str(fitresult.a)];
                    %                     BB = ['b = ' , num2str(fitresult.b)];
                    %                     LLL = ['c = ' , num2str(fitresult.c)];
                    %
                    %                     Tension =['Tension value [kN]= ' num2str(T)];
                    %                     EII = ['EI value [kN-m^2]= ' num2str(EI)];
                    %                     SSE =['SSE =' num2str(gof.sse)];
                    %                     rr = ['adjrsquare = ' num2str(gof.adjrsquare)];
                    %                     bb = ['dfe = ' num2str(gof.dfe)];
                    %                     gg = ['rmse = ' num2str(gof.rmse)];
                    %                     aa = ['rsquare = ' num2str(gof.rsquare)];
                    %
                    %                     app.TextArea.Value = cellstr(strvcat(' ',' ',R,'','',' ',' ',msg,['Robust = ' Robust]...
                    %                         ,['Algorithm = ' alg] ,AA,BB,LLL,Tension,EII,SSE,rr,bb,gg,aa));
                    
                    
            end
            
        end

        % Callback function
        function Sensor1ButtonPushed(app, event)
            global Acc1
            global matrix
            Acc1 = matrix(:,1);
           
        end

        % Callback function
        function Sensor2ButtonPushed(app, event)
            global Acc2
            global matrix
            Acc1 = matrix(:,2);
           
        end

        % Callback function
        function Sensor3ButtonPushed(app, event)
            global Acc3
            global matrix
            Acc1 = matrix(:,3);
         
        end

        % Callback function
        function Sensor4ButtonPushed(app, event)
            global Acc4
            global matrix
            Acc1 = matrix(:,4);
           
        end

        % Callback function
        function Sensor5ButtonPushed(app, event)
            global Acc5
            global matrix
            Acc1 = matrix(:,5);
            
        end

        % Callback function
        function Sensor6ButtonPushed(app, event)
            global Acc6
            global matrix
            Acc1 = matrix(:,6);
           
        end

        % Callback function
        function Sensor7ButtonPushed(app, event)
            global Acc7
            global matrix
            Acc1 = matrix(:,7);
           
        end

        % Callback function
        function Sensor8ButtonPushed(app, event)
            global Acc8
            global matrix
            Acc1 = matrix(:,8);
           
        end

        % Callback function
        function Sensor9ButtonPushed(app, event)
            global Acc9
            global matrix
            Acc1 = matrix(:,9);
           
        end

        % Callback function
        function Sensor10ButtonPushed(app, event)
            global Acc10
            global matrix
            Acc1 = matrix(:,10);
            
        end

        % Value changed function: SensorNumberDropDown
        function SensorNumberDropDownValueChanged(app, event)
            value = app.SensorNumberDropDown.Value;
            
            
            switch value
                
                case'1 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'off';
                    app.Sensor3Button.Enable = 'off';
                    app.Sensor4Button.Enable = 'off';
                    app.Sensor5Button.Enable = 'off';
                    app.Sensor6Button.Enable = 'off';
                    app.Sensor7Button.Enable = 'off';
                    app.Sensor8Button.Enable = 'off';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'off';
                    app.LocationEditField_3.Enable = 'off';
                    app.LocationEditField_4.Enable = 'off';
                    app.LocationEditField_5.Enable = 'off';
                    app.LocationEditField_6.Enable = 'off';
                    app.LocationEditField_7.Enable = 'off';
                    app.LocationEditField_8.Enable = 'off';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                    
                case'2 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'off';
                    app.Sensor4Button.Enable = 'off';
                    app.Sensor5Button.Enable = 'off';
                    app.Sensor6Button.Enable = 'off';
                    app.Sensor7Button.Enable = 'off';
                    app.Sensor8Button.Enable = 'off';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'off';
                    app.LocationEditField_4.Enable = 'off';
                    app.LocationEditField_5.Enable = 'off';
                    app.LocationEditField_6.Enable = 'off';
                    app.LocationEditField_7.Enable = 'off';
                    app.LocationEditField_8.Enable = 'off';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'3 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'off';
                    app.Sensor5Button.Enable = 'off';
                    app.Sensor6Button.Enable = 'off';
                    app.Sensor7Button.Enable = 'off';
                    app.Sensor8Button.Enable = 'off';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'off';
                    app.LocationEditField_5.Enable = 'off';
                    app.LocationEditField_6.Enable = 'off';
                    app.LocationEditField_7.Enable = 'off';
                    app.LocationEditField_8.Enable = 'off';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'4 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'on';
                    app.Sensor5Button.Enable = 'off';
                    app.Sensor6Button.Enable = 'off';
                    app.Sensor7Button.Enable = 'off';
                    app.Sensor8Button.Enable = 'off';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'on';
                    app.LocationEditField_5.Enable = 'off';
                    app.LocationEditField_6.Enable = 'off';
                    app.LocationEditField_7.Enable = 'off';
                    app.LocationEditField_8.Enable = 'off';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'5 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'on';
                    app.Sensor5Button.Enable = 'on';
                    app.Sensor6Button.Enable = 'off';
                    app.Sensor7Button.Enable = 'off';
                    app.Sensor8Button.Enable = 'off';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'on';
                    app.LocationEditField_5.Enable = 'on';
                    app.LocationEditField_6.Enable = 'off';
                    app.LocationEditField_7.Enable = 'off';
                    app.LocationEditField_8.Enable = 'off';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'6 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'on';
                    app.Sensor5Button.Enable = 'on';
                    app.Sensor6Button.Enable = 'on';
                    app.Sensor7Button.Enable = 'off';
                    app.Sensor8Button.Enable = 'off';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'on';
                    app.LocationEditField_5.Enable = 'on';
                    app.LocationEditField_6.Enable = 'on';
                    app.LocationEditField_7.Enable = 'off';
                    app.LocationEditField_8.Enable = 'off';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'7 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'on';
                    app.Sensor5Button.Enable = 'on';
                    app.Sensor6Button.Enable = 'on';
                    app.Sensor7Button.Enable = 'on';
                    app.Sensor8Button.Enable = 'off';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'on';
                    app.LocationEditField_5.Enable = 'on';
                    app.LocationEditField_6.Enable = 'on';
                    app.LocationEditField_7.Enable = 'on';
                    app.LocationEditField_8.Enable = 'off';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'8 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'on';
                    app.Sensor5Button.Enable = 'on';
                    app.Sensor6Button.Enable = 'on';
                    app.Sensor7Button.Enable = 'on';
                    app.Sensor8Button.Enable = 'on';
                    app.Sensor9Button.Enable = 'off';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'on';
                    app.LocationEditField_5.Enable = 'on';
                    app.LocationEditField_6.Enable = 'on';
                    app.LocationEditField_7.Enable = 'on';
                    app.LocationEditField_8.Enable = 'on';
                    app.LocationEditField_9.Enable = 'off';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'9 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'on';
                    app.Sensor5Button.Enable = 'on';
                    app.Sensor6Button.Enable = 'on';
                    app.Sensor7Button.Enable = 'on';
                    app.Sensor8Button.Enable = 'on';
                    app.Sensor9Button.Enable = 'on';
                    app.Sensor10Button.Enable = 'off';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'on';
                    app.LocationEditField_5.Enable = 'on';
                    app.LocationEditField_6.Enable = 'on';
                    app.LocationEditField_7.Enable = 'on';
                    app.LocationEditField_8.Enable = 'on';
                    app.LocationEditField_9.Enable = 'on';
                    app.LocationEditField_10.Enable = 'off';
                    
                case'10 Sensor'
                    app.Sensor1Button.Enable = 'on';
                    app.Sensor2Button.Enable = 'on';
                    app.Sensor3Button.Enable = 'on';
                    app.Sensor4Button.Enable = 'on';
                    app.Sensor5Button.Enable = 'on';
                    app.Sensor6Button.Enable = 'on';
                    app.Sensor7Button.Enable = 'on';
                    app.Sensor8Button.Enable = 'on';
                    app.Sensor9Button.Enable = 'on';
                    app.Sensor10Button.Enable = 'on';
                    
                    app.LocationEditField.Enable = 'on';
                    app.LocationEditField_2.Enable = 'on';
                    app.LocationEditField_3.Enable = 'on';
                    app.LocationEditField_4.Enable = 'on';
                    app.LocationEditField_5.Enable = 'on';
                    app.LocationEditField_6.Enable = 'on';
                    app.LocationEditField_7.Enable = 'on';
                    app.LocationEditField_8.Enable = 'on';
                    app.LocationEditField_9.Enable = 'on';
                    app.LocationEditField_10.Enable = 'on';
                    
            end
        end

        % Callback function
        function PlotAddWitheGoussianNoiseButtonPushed(app, event)
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10,global m;
            
            value = app.SensorNumberDropDown_2.Value;
            
            switch value
                case '1 Sensor'
                    m = Acc1;
                case '2 Sensor'
                    m = Acc2;
                case '3 Sensor'
                    m = Acc3;
                case '4 Sensor'
                    m = Acc4;
                case '5 Sensor'
                    m= Acc5;
                case '6 Sensor'
                    m = Acc6;
                case '7 Sensor'
                    m = Acc7;
                case '8 Sensor'
                    m = Acc8;
                case '9 Sensor'
                    m = Acc9;
                case '10 Sensor'
                    m = Acc10;
                    
            end
            
            m = m';
            m = m(:);
            
            SNR = app.SNRKnob.Value;
            
            m = awgn(m,SNR);
            global t
            global sf
            
            global frequencysample
            global filterordere
            
            
            frequencysample = app.SamplingFrequencySpinner.Value;
            filterordere = str2double(app.FilterOrderKnob.Value);
            
            
            dt = 1/frequencysample ;
            t = dt:dt:size(m,1)*dt;
            t = t';
            
            %% Design Low Pass Filter
            Wn = 15/(frequencysample /2);% 3-db Frequency = 25Hz
            [B,A] = butter(filterordere,Wn);
            %% Filter Signal
            sf = filtfilt(B,A,m);
            
            plot(app.UIAxes,t, m...
                ,'b--',t , sf,'ro-','LineWidth',1,'MarkerSize',3,...
                'MarkerEdgeColor','r','MarkerFaceColor','y');
            
            
            app.UITable.Data = [t m sf];
            app.UITable.RowName = 1:size(m);
        end

        % Button pushed function: SavePositionsButton
        function SavePositionsButtonPushed(app, event)
            global p1,global p2, global p3, global p4, global p5, global p6,...
                global p7, global p8 , global p9 , global p10;
            
            global Position;
            global correct
            %
            %             a = 1:size(correct);
            %             a = a';
            %             app.UITable.Data = [a correct(:,1)];
            %
 
            value =  app.SensorNumberDropDown.Value;
            p1 = app.LocationEditField.Value;
            p2 = app.LocationEditField_2.Value;
            p3 = app.LocationEditField_3.Value;
            p4 = app.LocationEditField_4.Value;
            p5 = app.LocationEditField_5.Value;
            p6 = app.LocationEditField_6.Value;
            p7 = app.LocationEditField_7.Value;
            p8 = app.LocationEditField_8.Value;
            p9 = app.LocationEditField_9.Value;
            p10 = app.LocationEditField_10.Value;
            
            switch value
                case '1 Sensor'
                    Position = p1 ;
                case '2 Sensor'
                    Position = [p1 p2 ];
                case '3 Sensor'
                    Position = [p1 p2 p3 ];
                case '4 Sensor'
                    Position = [p1 p2 p3 p4 ];
                case '5 Sensor'
                    Position = [p1 p2 p3 p4 p5 ];
                case '6 Sensor'
                    Position = [p1 p2 p3 p4 p5 p6 ];
                case '7 Sensor'
                    Position = [p1 p2 p3 p4 p5 p6 p7 ];
                case '8 Sensor'
                    Position = [p1 p2 p3 p4 p5 p6 p7 p8 ];
                case '9 Sensor'
                    Position = [p1 p2 p3 p4 p5 p6 p7 p8 p9 ];
                case '10 Sensor'
                    Position = [p1 p2 p3 p4 p5 p6 p7 p8 p9 p10];
                    
            end
            
            Fs = app.SamplingFrqSpinner.Value;
            T = 1/Fs;
            L =  numel(correct(:,1));             % Length of signal
            t = (0:L-1)*T;                       % Time vector
            NFFT = 2^nextpow2(L);                % Next power of 2 from length of y
            Y = fft(correct(:,1),NFFT)/L;
            f = Fs/2*linspace(0,1,NFFT/2+1);
            
            a = 1:size(f,2);
            
            app.UITable5.Data = [a',f'];
        end

        % Callback function
        function SNRKnobValueChanged(app, event)
            value = app.SNRKnob.Value;
            app.Label_48.Text = num2str(value);
        end

        % Value changed function: FilterTypeDropDown
        function FilterTypeDropDownValueChanged(app, event)
            
            value = app.FilterTypeDropDown.Value;
            switch value
                
                case 'Low Path'
                    app.LowLimitFrequencyKnob.Enable = 'off';
                    app.HighLimitFrequencyKnob.Enable = 'off';
                    app.CuttOffKnob.Enable = 'on';
                    
                    app.FilterOrderKnob.Items = {'2' '3' '4' '5' '6' '7' '8' '9' '10'};
                case 'High Path'
                    app.LowLimitFrequencyKnob.Enable = 'off';
                    app.HighLimitFrequencyKnob.Enable = 'off';
                    app.CuttOffKnob.Enable = 'on';
                    app.FilterOrderKnob.Items = {'2' '3' '4' '5' '6' '7' '8' '9' '10'};
                case 'Band Path'
                    app.LowLimitFrequencyKnob.Enable = 'on';
                    app.HighLimitFrequencyKnob.Enable = 'on';
                    app.CuttOffKnob.Enable = 'off';
                    app.FilterOrderKnob.Items = {'2' '3' '4' '5'};
                case 'Band Stop'
                    app.LowLimitFrequencyKnob.Enable = 'on';
                    app.HighLimitFrequencyKnob.Enable = 'on';
                    app.CuttOffKnob.Enable = 'off';
                    app.FilterOrderKnob.Items = {'2' '3' '4' '5'};
            end
            
        end

        % Size changed function: FitOptionTab
        function FitOptionTabSizeChanged(app, event)
            position = app.FitOptionTab.Position;
            
        end

        % Button pushed function: ModeshapeRatioCalcButton
        function ModeshapeRatioCalcButtonPushed(app, event)

            Row1 = app.FrequencyRowMode1EditField.Value;
            Row2 = app.FrequencyRowMode2EditField.Value;
            Row3 = app.FrequencyRowMode3EditField.Value;
            Row4 = app.FrequencyRowMode4EditField.Value;
            Row5 = app.FrequencyRowMode5EditField.Value;
            Row6 = app.FrequencyRowMode6EditField.Value;
            Row7 = app.FrequencyRowMode7EditField.Value;
            Row8 = app.FrequencyRowMode8EditField.Value;
            Row9 = app.FrequencyRowMode9EditField.Value;
            Row10 = app.FrequencyRowMode10EditField.Value;
            
            global frequencysample
            global Position
            
            global ratio
            global correct
            
            [f,yy,modeshape] = ModeShapeRatioFunction(app,correct,frequencysample);

            value2 = app.ModeDropDown.Value;
            switch value2
                case '1'
                    ratio = modeshape(:,Row1)./modeshape(1,Row1)';
                case '2'
                    ratio = modeshape(:,Row2)./modeshape(1,Row2)';
                case '3'
                    ratio = modeshape(:,Row3)./modeshape(1,Row3)';
                case '4'
                    ratio = modeshape(:,Row4)./modeshape(1,Row4)';
                case '5'
                    ratio = modeshape(:,Row5)./modeshape(1,Row5)';
                case '6'
                    ratio = modeshape(:,Row6)./modeshape(1,Row6)';
                case '7'
                    ratio = modeshape(:,Row7)./modeshape(1,Row7)';
                case '8'
                    ratio = modeshape(:,Row8)./modeshape(1,Row8)';
                case '9'
                    ratio = modeshape(:,Row9)./modeshape(1,Row9)';
                case '10'
                    ratio = modeshape(:,Row10)./modeshape(1,Row10)';
            end
            plot(app.UIAxes_2,Position,ratio,'Marker','s','MarkerSize',10,...
                'MarkerEdgeColor','m',...
                'MarkerFaceColor','b');
            
            
           
            
            
            str1 = 'Mode Shape Function Method';
            str2 = 'This Method is Based on Each Node Displcament In Diffrent Modes';
            str3 = 'Ref: Chen CC, Wu WH, Huang CH, Lai G. Determination of stay cable force based on effective vibration length accurately estimated from multiple measurements. ';
            str4 = app.ModeNumberDropDown.Value;
            str5= app.SensorNumberDropDown.Value;
            
            app.TextArea_4.Value = cellstr(strvcat(str1,str2,str3,str4,str5));
            
            
            str1 = 'Result ---------------------------------------------------------------------------------------------'
            str2 = ['Position X =  ' num2str(Position)];
            str3 = ['Amplitude Y =  ' num2str(ratio')];
            app.TextArea_6.Value = cellstr(strvcat(str2,str3));
            
        end

        % Value changed function: ModeNumberDropDown
        function ModeNumberDropDownValueChanged(app, event)
            
            value = app.ModeNumberDropDown.Value;
            switch value
                
                case '1 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'off';
                    app.FrequencyRowMode3EditField.Enable = 'off';
                    app.FrequencyRowMode4EditField.Enable = 'off';
                    app.FrequencyRowMode5EditField.Enable = 'off';
                    app.FrequencyRowMode6EditField.Enable = 'off';
                    app.FrequencyRowMode7EditField.Enable = 'off';
                    app.FrequencyRowMode8EditField.Enable = 'off';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '2 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'off';
                    app.FrequencyRowMode4EditField.Enable = 'off';
                    app.FrequencyRowMode5EditField.Enable = 'off';
                    app.FrequencyRowMode6EditField.Enable = 'off';
                    app.FrequencyRowMode7EditField.Enable = 'off';
                    app.FrequencyRowMode8EditField.Enable = 'off';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '3 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'off';
                    app.FrequencyRowMode5EditField.Enable = 'off';
                    app.FrequencyRowMode6EditField.Enable = 'off';
                    app.FrequencyRowMode7EditField.Enable = 'off';
                    app.FrequencyRowMode8EditField.Enable = 'off';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '4 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'on';
                    app.FrequencyRowMode5EditField.Enable = 'off';
                    app.FrequencyRowMode6EditField.Enable = 'off';
                    app.FrequencyRowMode7EditField.Enable = 'off';
                    app.FrequencyRowMode8EditField.Enable = 'off';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '5 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'on';
                    app.FrequencyRowMode5EditField.Enable = 'on';
                    app.FrequencyRowMode6EditField.Enable = 'off';
                    app.FrequencyRowMode7EditField.Enable = 'off';
                    app.FrequencyRowMode8EditField.Enable = 'off';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '6 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'on';
                    app.FrequencyRowMode5EditField.Enable = 'on';
                    app.FrequencyRowMode6EditField.Enable = 'on';
                    app.FrequencyRowMode7EditField.Enable = 'off';
                    app.FrequencyRowMode8EditField.Enable = 'off';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '7 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'on';
                    app.FrequencyRowMode5EditField.Enable = 'on';
                    app.FrequencyRowMode6EditField.Enable = 'on';
                    app.FrequencyRowMode7EditField.Enable = 'on';
                    app.FrequencyRowMode8EditField.Enable = 'off';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '8 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'on';
                    app.FrequencyRowMode5EditField.Enable = 'on';
                    app.FrequencyRowMode6EditField.Enable = 'on';
                    app.FrequencyRowMode7EditField.Enable = 'on';
                    app.FrequencyRowMode8EditField.Enable = 'on';
                    app.FrequencyRowMode9EditField.Enable = 'off';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '9 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'on';
                    app.FrequencyRowMode5EditField.Enable = 'on';
                    app.FrequencyRowMode6EditField.Enable = 'on';
                    app.FrequencyRowMode7EditField.Enable = 'on';
                    app.FrequencyRowMode8EditField.Enable = 'on';
                    app.FrequencyRowMode9EditField.Enable = 'on';
                    app.FrequencyRowMode10EditField.Enable = 'off';
                case '10 Mode'
                    app.FrequencyRowMode1EditField.Enable = 'on';
                    app.FrequencyRowMode2EditField.Enable = 'on';
                    app.FrequencyRowMode3EditField.Enable = 'on';
                    app.FrequencyRowMode4EditField.Enable = 'on';
                    app.FrequencyRowMode5EditField.Enable = 'on';
                    app.FrequencyRowMode6EditField.Enable = 'on';
                    app.FrequencyRowMode7EditField.Enable = 'on';
                    app.FrequencyRowMode8EditField.Enable = 'on';
                    app.FrequencyRowMode9EditField.Enable = 'on';
                    app.FrequencyRowMode10EditField.Enable = 'on';
                    
            end
        end

        % Button pushed function: RunButton_2
        function RunButton_2Pushed(app, event)
            
            value = app.ModeDropDown.Value;
            
            global Position
            global ratio
            global ALGORITHEM
            global ROBUST
            global STARTPOINT
            global DLL
            global ULL
            global DLa
            global ULa
            
            DLL = app.DownLimLEditField.Value;
            ULL = app.UpLimLEditField.Value;
            DLa = app.DownLimaEditField.Value;
            ULa = app.UpLimaEditField.Value;

            ROBUST = app.RobustDropDown_2.Value;
            ALGORITHEM = app.algorithemDropDown_2.Value;
            starta = app.strataEditField_2.Value;
            startb = app.stratbEditField_2.Value;
            STARTPOINT = [starta startb];
            x = Position;
            y = ratio;
            
            switch value
                
                case '1'
                    [fitresult, gof] = ModeFit1(app,x, y);
                    Function = 'a*cos((1*pi*x)/L)';
                    
                case '2'
                    [fitresult, gof] = ModeFit2(app,x, y);
                    Function = 'a*sin((2*pi*x)/L)';
                    
                case '3'
                    [fitresult, gof] = ModeFit3(app,x, y);
                    Function = 'a*cos((3*pi*x)/L)';
                    
                case '4'
                    [fitresult, gof] = ModeFit4(app,x, y);
                    Function = 'a*sin((4*pi*x)/L)';
                    
                case '5'
                    [fitresult, gof] = ModeFit5(app,x, y);
                    Function = 'a*cos((5*pi*x)/L)';
                    
                case '6'
                    [fitresult, gof] = ModeFit6(app,x, y);
                    Function = 'a*sin((6*pi*x)/L)';
                    
                case '7'
                    [fitresult, gof] = ModeFit7(app,x, y);
                    Function = 'a*cos((7*pi*x)/L)';
                    
                case '8'
                    [fitresult, gof] = ModeFit8(app,x, y);
                    Function = 'a*sin((8*pi*x)/L)';
                    
                case '9'
                    [fitresult, gof] = ModeFit9(app,x, y);
                    Function = 'a*cos((9*pi*x)/L)';
                    
                case '10'
                    [fitresult, gof] = ModeFit10(app,x, y);
                    Function = 'a*sin((10*pi*x)/L)';
                    
            end
            
            yy = feval(fitresult,x);
            plot(app.UIAxes_2,x,yy,'r--',x,y,'bs');
            
            
            R = 'Results --------------------- ';
            msg = 'Algorithm =  Non-Linear Least Square  ';
            
            AA = ['a = ' , num2str(fitresult.a)];
            BB = ['L = ' , num2str(fitresult.L)];
            
            
            SSE =['SSE =' num2str(gof.sse)];
            rr = ['adjrsquare = ' num2str(gof.adjrsquare)];
            bb = ['dfe = ' num2str(gof.dfe)];
            gg = ['rmse = ' num2str(gof.rmse)];
            aa = ['rsquare = ' num2str(gof.rsquare)];
            
            app.TextArea_2.Value = cellstr(strvcat(R,'','',' ',' ',['F(x) = '  Function],msg,['Robust = ' ROBUST]...
                ,['Algorithm = ' ALGORITHEM] ,['Amplitude' AA],['Lenght' BB],SSE,rr,bb,gg,aa));

        end

        % Callback function
        function RunButton_4Pushed(app, event)
           global matrix
         
            
            Acc = matrix;
            Fs = app.SamplingFrequencySpinner.Value;
            
            for I=1:size(Acc,2)
                for J=1:size(Acc,2)
                    [PSD(I,J,:),F(I,J,:)]=cpsd(Acc(:,I),Acc(:,J),[],[],[],Fs);
                end
            end
            Frequencies(:,1)=F(1,1,:);
            for I=1:size(PSD,3)
                [~,s,~] = svd(PSD(:,:,I));
                s1(I) = s(1);                                                          % First eigen values
                % Mode shape
            end
            
            % Plot first singular values of the PSD matrix
            
            for I=1:size(PSD,1)
                [u,s,~] = svd(PSD(I));
                s1(I) = s(1);                                                          % First eigen values
                %     s2(I) = s(2,2);                                                        % Second eigen values
                %     ms(:,I)=u(:,1);                                                        % Mode shape
            end

            MinPeakDistance = app.MinPeakDistanceEditField_2.Value;
            MinPeakHeight = app.MinPeakHeightEditField.Value;
            [pks,locs] = findpeaks(mag2db(s1),Frequencies,'MinPeakDistance',MinPeakDistance,'MinPeakHeight',MinPeakHeight);
            plot(app.UIAxes2,Frequencies,mag2db(s1),locs,pks,'o','MarkerFaceColor','g','MarkerEdgeColor','r','MarkerSize',10)
            text(app.UIAxes2,locs+.9,pks+1,num2str((1:numel(pks))'))
            if ~isempty(app.ListBox.Items)
            app.ListBox.Items = {};
            end
            for i = 1:size(locs,1)
            app.ListBox.Items(i) = {['Freqecy' num2str(i) ' (Hz) : '  num2str(locs(i))]};
            
            end
            
            
            
        end

        % Key press function: TCMS
        function TCMSKeyPress(app, event)
            
            
        end

        % Button pushed function: RunPeakPickingButton
        function RunPeakPickingButtonPushed(app, event)
            global correct
            global pks
            global locs
            global w
            global anpsd
            
            
            if  isempty(correct)
             msgbox('Select the Settings First In Pervious Tab','Data Cleaning Settings','error','Modal')
                
                
            end
            
            sampling_frequency = app.SampligFrequencyEditField.Value;
            window_length = app.WindiwLengthEditField.Value;
            overlap = app.OverLapEditField.Value;

            if  ~isempty(correct)
            
            
            hamm_status = app.HammingButton.Value;
            hann_status = app.HaningButton.Value;
            rect_status = app.RectangularButton.Value;
            
            window_type='hamm';
            
            if hann_status==1
                window_type='hann';
            end
            if rect_status==1
                window_type='rect';
            end
            
            freq_res=sampling_frequency/window_length;
            app.ResolutionEditField.Value = freq_res;

            data_array = correct;
%            k =size(matrix,2);
            % % %change the overlap from percent to points
            noverlap=round(.01*overlap*window_length);
            % %
            switch window_type
                case 'hamm'
                    cwintype=hamming(window_length);
                case 'hann'
                    cwintype=hann(window_length);
                case 'rect'
                    cwintype=rectwin(window_length);
            end
            % %
            % %
            nof =size(correct,2);
            for k=1:nof
                [pxx,w]=pwelch(data_array(:,k),cwintype,noverlap,[],sampling_frequency);
                psddata(:,k)=pxx;
            end
            % %
            % %
            psd_size=size(psddata);
            for k=1:psd_size(2)
                sumpsddata(k)=0;
                for m=1:psd_size(1)
                    sumpsddata(k)=psddata(m,k)+sumpsddata(k);
                end
            end
            
            for k=1:psd_size(2)
                for m=1:psd_size(1)
                    normal_psddata(m,k)=psddata(m,k)/sumpsddata(k);
                end
            end
            %
            anpsd=[];
            for m=1:psd_size(1)
                anpsd(m)=0;
                for k=1:psd_size(2)
                    anpsd(m)=normal_psddata(m,k)+anpsd(m);
                end
                anpsd(m)=anpsd(m)/psd_size(2);
            end
            
            anpsd=anpsd';
            MinPeakDistance = app.MinPeakDistanceEditField_3.Value;
            MinPeakHeight = app.MinPeakHeightEditField_2.Value;
            [pks,locs] = findpeaks(anpsd,w,'MinPeakDistance',MinPeakDistance,'MinPeakHeight',MinPeakHeight);
            % save d.mat anpsd w;

            
            plot(app.UIAxes3,w,anpsd);
            
            
            PeakSelectionAuto = app.AutoButton.Value;
            PeakSelectionManual = app.ManualButton.Value;
            
            if PeakSelectionAuto == 1
                
                method = 'Auto';
            end
              
            if PeakSelectionManual == 1
                method = 'Manual';
            
                
            end
            
            switch method
                
                case 'Auto'
                    app.FindPeaksandAddButton.Enable = 'on';
                   app.SaveFrequenciesButton_2.Enable = 'off';
                    
                    
                    
                case 'Manual'
                    app.FindPeaksandAddButton.Enable = 'off';
                    app.SaveFrequenciesButton_2.Enable = 'on';
                   
            end

            frequency_range1=app.FromEditField.Value;
            frequency_range2=app.ToHzEditField.Value;
            
            
            app.UIAxes3.XLim = [frequency_range1 frequency_range2];
            app.UIAxes3.YScale = 'log';

            text1 = 'results --------------------------------------------------------------------------------------------';
            text2 = 'Average Normalized Power Spectral Density Function:';
            text3 = 'To Detrmine The PSDs The "Pwelch" Built-in Function Is Used ';
            text4 = 'For Auto Peak Selection The Bilt-in "findpeak" Function Is Used ';
            text5 = 'Diffrent Options Are Also Added For Ovelapping And Window Type Selection';
            
            app.TextArea_8.Value = cellstr(strvcat(text1,'    ',text2,text3,text4,text5,['Window Type: ' window_type],['Sampling Frequency : ' num2str(sampling_frequency)],...
               ['Window Lenght: ' num2str(window_length)]));
            
            end
            
%             
%             b =1:size(w);
%             b = b';
%             app.UITable2.Data = [b w anpsd];
        end

        % Button pushed function: FindPeaksandAddButton
        function FindPeaksandAddButtonPushed(app, event)
           
            global sampling_frequency
            global w
            global anpsd
            global Frequency
            
            
            MinPeakDistance = app.MinPeakDistanceEditField_3.Value;
            MinPeakHeight = app.MinPeakHeightEditField_2.Value;
            [pks,locs] = findpeaks(anpsd,w,'MinPeakDistance',MinPeakDistance,'MinPeakHeight',MinPeakHeight);
            
            plot(app.UIAxes3,w,anpsd,locs,pks,'s','MarkerFaceColor','r','MarkerEdgeColor','b','MarkerSize',12);
            app.UIAxes3.YScale = 'log';
            frequency_range1=app.FromEditField.Value;
            frequency_range2=app.ToHzEditField.Value;
            app.UIAxes3.XLim = [frequency_range1 frequency_range2];
            
            %             for i = 1:size(locs)
            %                 area(app.UIAxes3,locs(i)-0.2:0.01*locs(i):locs(i)+0.2,...
            %                     repmat(min(log10(pks)),1,size((locs(i)-0.2:0.01*locs(i):locs(i)+0.2),2)),...
            %                     max(log10(pks)),'FaceColor',0.92*[1 1 1],'LineStyle','none');
            %                 hold(app.UIAxes3)
            %
            %             end
            
            hold(app.UIAxes3)
            
            for i = 1:size(locs)
                text(app.UIAxes3,locs(i),log(pks(i)+1),sprintf(num2str(locs(i,1)')),'FontSize',15,'FontWeight','bold','FontName','Times New Roman')
            end
            

            
            if ~isempty(app.ListBox_2.Items)
            app.ListBox_2.Items = {};
            end
            
            for i = 1:size(locs,1)
                app.ListBox_2.Items(i) = {['Freqecy' num2str(i) ' (Hz) : '  num2str(locs(i))]};
                
            end

            sf = app.SampligFrequencyEditField.Value;
           
            row = [sf.*locs]';
            
            
            text1 = 'results --------------------------------------------------------------------------------------------';
            text2 = 'Average Normalized Power Spectral Density Function:';
            text3 = 'To Detrmine The PSDs The "Pwelch" Built-in Function Is Used ';
            text4 = 'For Auto Peak Selection The Bilt-in "findpeak" Function Is Used ';
            text5 = 'Diffrent Options Are Also Added For Ovelapping And Window Type Selection';
            
            app.TextArea_8.Value = cellstr(strvcat(text1,'    ',text2,text3,text4,text5,['Rows: ' num2str(row)]));
         
            ass= locs';
            Frequency = ass;
            
        end

        % Callback function
        function RunFFTButton_2Pushed(app, event)
            global frequencysample
            global filterordere
            global CutOfffrequency
            global f
            global S
            global Sf
            
            global matrix
            matrix = matrix';
            matrix = matrix(:);
            if isempty(matrix)
                msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
            end
            
            
            
            global t
            global sf
            
            frequencysample = app.SamplingFrequencySpinner.Value;
            filterordere = str2double(app.FilterOrderKnob.Value);
            
            value = app.FilterTypeDropDown.Value;
            
            switch value
                
                case 'low'
                    
                    CutOfffrequency = app.CuttOffKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    
                    Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,Wn);
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
                case 'high'
                    
                    CutOfffrequency = app.CuttOffKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,Wn,'high');
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
                case 'bandpath'
                    
                    
                    CutOfffrequencylow = app.LowLimitFrequencyKnob.Value;
                    CutOfffrequencyHigh = app.HighLimitFrequencyKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    WnLow = CutOfffrequencylow/(frequencysample /2);
                    WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,[WnLow WnHigh],"bandpass");
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
                case 'stop'
                    
                    
                    CutOfffrequencylow = app.LowLimitFrequencyKnob.Value;
                    CutOfffrequencyHigh = app.HighLimitFrequencyKnob.Value;
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(matrix,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    WnLow = CutOfffrequencylow/(frequencysample /2);
                    WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,[WnLow WnHigh],"stop");
                    %% Filter Signal
                    sf = filtfilt(B,A,matrix);
                    nfft = 2^(nextpow2( length(t) ));
                    S = fft(matrix,nfft);
                    Sf = fft(sf,nfft);
                    
                    df = frequencysample /nfft;
                    f = 0:df:frequencysample /2;
                    S = abs(S(1:nfft/2+1));
                    Sf = abs(Sf(1:nfft/2+1));
                    
                    f = f';
                    
                    
                    plot(app.FFTaxes,f,S,'b',f,Sf,'ro-','LineWidth',1,'MarkerSize',5,...
                        'MarkerEdgeColor','r',...
                        'MarkerFaceColor','y');
                    
                    app.FFTtable.Data = [f S Sf];
                    
                    app.FFTtable.RowName = 1:size(matrix);
                    
                    
            end
           
            %
        end

        % Callback function
        function FindPeaksandAddButton_2Pushed(app, event)
            global f
            global Sf
            
            
            
            MinPeakDistance = app.MinPeakDistanceEditField_4.Value;
            MinPeakHeight = app.MinPeakHeightEditField_3.Value;
            
            [pks,locs] = findpeaks(Sf,f,'MinPeakDistance',MinPeakDistance,'MinPeakHeight',MinPeakHeight);
            plot(app.FFTaxes,f,Sf,locs,pks,'o','MarkerFaceColor','g','MarkerEdgeColor','r','MarkerSize',10)
            text(app.FFTaxes,locs+.9,pks+1,num2str((1:numel(pks))'))
            if ~isempty(app.FrequencyRowListBox.Items)
                app.FrequencyRowListBox.Items = {};
            end
            for i = 1:size(locs,1)
                app.FrequencyRowListBox.Items(i) = {['Freqecy' num2str(i) ' (Hz) : '  num2str(locs(i))]};
                
            end
        end

        % Selection changed function: Tree4
        function Tree4SelectionChanged(app, event)
            
            selectedNodes = app.Tree4.SelectedNodes;
            global correct
            global matrix
            global PreProcess
            global MatrixChennel

            if  isempty(correct)
             msgbox('Select the Settings First','Data Cleaning Settings','error','Modal')
 
            end
            
            if ~isempty(correct)
            Sam = app.SamplingFrqSpinner.Value;
            dt = 1/Sam;
            t = dt:dt:size(correct,1)*dt;
            t = t';
            v = zeros(size(correct,1),size(correct,2));
            d = zeros(size(correct,1),size(correct,2));
            
            v = cumtrapz(t,correct);
            d = cumtrapz(t,v);
          
            
            for j = 1:size(correct,2)
                switch selectedNodes.Text
                    case MatrixChennel(j)
                        
                        plot(app.UIAxes4,t,matrix(:,j),'b',t,correct(:,j),'r');
                        
                        plot(app.UIAxes4_2,t,v(:,j));
                        plot(app.UIAxes4_3,t,d(:,j));
                        
                        app.UITable4.Data = [t matrix(:,j) v(:,j) d(:,j) ];
                end
            end
            
            end
            
        end

        % Callback function
        function CreateReportButtonPushed(app, event)
           

        end

        % Button pushed function: SaveButton
        function SaveButtonPushed(app, event)
            value = app.DropDown_2.Value;
            
           
%             global PreProcess
%             global MatrixChennel
%             global matrix
%        
            
%             %% Preprocessing Tab Data
%             PreProcess.ChannelDataNode = MatrixChennel;
%             PreProcess.MatrixData = matrix;
%             PreProcess.Table1Data = app.UITable4.Data;
%             h = findobj(app.UIAxes4,'Type','line');
%             x = get(h,'Xdata');
%             y = get(h,'Ydata');
%             PreProcess.Fig1xData =  x' ;
%             PreProcess.Fig1yData =  y' ;
%             PreProcess.SamplingFreq = app.SamplingFrqSpinner.Value;
            
            [FileName, Dir] = uiputfile({'*.mat','Matlab File'},'Save Results','Unkown.mat');
            File = fullfile(Dir,FileName);
                    
            global matrix       
            switch value
                case 'Save'
                    if ~isempty(matrix)
                    save(File,'matrix','-mat','-append');
                    end
                    if isempty(matrix)
                    msg("pls import the channel data first",'User Guide','error')
                    end
                case 'Save As'
                    if ~isempty(matrix)
                    save(File,'matrix','-mat');
                    end
                    if isempty(matrix)
                    msg("pls import the channel data first",'User Guide','error')
                    end
                    
            end

        end

        % Button pushed function: NEw_2
        function NEw_2ButtonPushed(app, event)
            [FileName, Dir] = uigetfile({'*.mat','Matlab File'},'Save Results','Unkown.mat');
            File = fullfile(Dir,FileName);
            global matrix
            matrix = load(File,"-mat");
            matrix = matrix.matrix;
            
            global MatrixChennel
            MatrixChennel = {};
            for j = 1:size(matrix,2)
                MatrixChennel{j} = ['Sensor''s Data ' num2str(j)];
                uitreenode(app.ChannelDataNode,'Text', MatrixChennel{j});
            end
            
            if ~isempty(matrix)
                msgbox('Loading The Data Is Seccssefully Done','Loading the Data','help','modal')
            else isempty(matrix)
                msgbox('Loading The Data Is Failed','Loading the Data','help','modal')
            end
            %             global PreProcess
            %             global MatrixChennel
            
            %             matrix =  PreProcess.MatrixData;
            %             app.UITable4.Data = [ PreProcess.Fig1xData  PreProcess.Fig1yData];
            %             plot(app.UIAxes4, PreProcess.Fig1xData , PreProcess.Fig1yData);
            %
            %             MatrixChennel = {};
            %             for j = 1:size(matrix,2)
            %                 MatrixChennel{j} = ['Sensor''s Data ' num2str(j)];
            %                 uitreenode(app.ChannelDataNode,'Text', MatrixChennel{j});
            %             end

        end

        % Button pushed function: CreateReportButton
        function CreateReportButtonPushed2(app, event)
            
            value = app.DropDown_3.Value;
            
            switch value
                case 'PDF'
                    Type = 'PDF';
                case 'Word'
                    Type = 'docx';
                case 'HTML'
                    Type = 'html';
                case 'Advanced'
                    
            end
            import mlreportgen.report.*
            import mlreportgen.dom.*
            
            [FileName , Dir ] = uiputfile({'*.docx','Word Files(.docx)';'*.pdf','PDF Files';'*.html','html Files'},'Directory Selection','DataProcessing.docx');
            File = fullfile(Dir,FileName);
            
            rpt = Report(File,Type);
            
            tp = TitlePage;
            tp.Title = 'Tendon Condition Monitoring Software';
            tp.Subtitle = 'International institution of Earthquake Engineering and seismology';
            tp.Image = 'D:\MiladCherahgzade\ReportGeneration\IIEESLogoEnglish.png';
            tp.Author = 'Mohsen Ghafory Ashtyani, Dr.Omid Bahar, Milad Cheraghzade';
            
            add(rpt,tp)
            
            add(rpt,TableOfContents);
            
            
            ch1 = Chapter;
            ch1.Title = 'Introduction';
            sec1 = Section;
            sec1.Title = ' IIEES ';
            para = Paragraph(['an Organization in north of tehran'...
                'For Erathquake engineering and seismilogy ']);
                
            add(sec1,para)
            add(ch1,sec1)
            
            sec2=Section;
            sec2.Title = 'Abstract';
            para = Paragraph([' TCMS is a developed software' ...
                '(Tendon Condition Monitoring Software) for condition monitoring' ...
                ' of post-tensioned external tendons. Tendons are one-dimensional' ...
                ' axially tensioned members which carry tensile force through their ' ...
                'length with different geometrical and boundary conditions. Damages in' ...
                ' post-tensioning structures cause distress in the post-tensioning system' ...
                ' which result in loss of integrity and reduction in structure safety.' ...
                ' Tensile force bearing elements are the most important part of post-tensioning' ...
                'system. Therefore, tension estimation in these elements plays an important role' ...
                ' in condition monitoring. This software allows to run a complete process with three' ...
                ' main goals in four tabs and three sub-tabs: pre-processing of the input data,' ...
                ' system identification for operational modal analysis and tension estimation. In' ...
                ' the first tab input data can be observed in both time and frequency domain' ...
                'simultaneously, while best filter settings can also be selected. In the second' ...
                ' tab the filter and base line correction algorithms can be applied on the whole' ...
                ' data channels. In the third tab Peak Picking algorithm is used for system' ...
                'Identification and automatic modal frequencies extraction. Finally, in the' ...
                'last tab two different approach are used for tension estimation using mode' ...
                'shape functions with multiple measurement and pre-determined formulas as beam' ...
                ' and string theory which are fully explored in previous research. Moreover,' ...
                ' Lest-Square generated functions and settings are also embedded in this' ...
                'tab from MATLAB''s Curve Fitting Toolbox for regression purposes.' ...
                'To validate the applicability of TCMS finite element model''s modal' ...
                ' parameters are identified through operational and analytical modal' ...
                ' analysis. Then, the identified mode shape ratios and frequencies are' ...
                ' used for tension estimation. This work as a comparative study demonstrate' ...
                ' the power of TCMS for sensitivity analysis with proper pre-processing,' ...
                ' tackling parameter issues for tension estimation and finally effects of' ...
                ' accurate or inaccurate modal analysis on tension estimation.']);
            add(sec2,para)
            add(ch1,sec2)
            
            sec3 = Section;
            sec3.Title = 'Introductoin';
            para = Paragraph(['Tension estimation of cables as axially one dimensional tensioned members in different struture types including cablestayed bridges, arch bridges, post-tensioned segmental box girder concrete bridges has a significant effect in health'...
                'monitoring of the entire structure. Moreover, ten- sion in post tensioning system reflects the health of entire structure. In engineering practice some approaches have been adopted for tension esti- mation in service stage and during construction. Direct measurement using lift-off hydraulic jack, load cells or strain gages have been used for ten- sion estimation but high cost, lack of accuracy, and making damage potential restricted all these methods applicability. Recently, optic fiber Bragg grating sensors (OFBGS) have been used to moni- tor the stresses in bridge stay cables by embedding',...
                'inside the cross-section by measuring the corre- sponding strain and then changes in cable forces [1]. The magnetoelastic method also has been adopted to this aim, however, the low sensitiv- ity, low signal-to-noise ratio, slow response, and complicated installation of the EM sensors limit their application flexibility [2].'...
                'For system identification of cables two different approach have been adopted in engineering prac- tice. Force vibration and ambient vibration have been widely used to excite the systems, where their dynamic characteristics can be sensed and extracted as vibrational responses. To extract system features with lower dimension from time domain into frequency domain mathematical al- gorithms are used as system identification algo- rithms. BIRMOS (Bridge Monitoring System) has been successfully used to this  aim  adopt- ing different mathematical algorithm including: Peak-Peaking and Stochastic Subbase Identifica- tion [3].'...
                'Ambient vibration at the earlier stage has been used by determining the fundamental frequen- cies of stay cables. Where the identified frequen- cies have been used as input for predetermined formula as "String Theory" for tension estima- tion [4]. Sag effects, flexural stiffness, compli- cated boundary conditions that are not consid- ered in "String Theory" result in questionable ac- curacy for tension estimation [5, 6]. In more re- cent works, the effect of flexural stiffness is consid- ered using beam theory as beam subjected to ax- ial load. Moreover, different boundary conditions are also considered for tension estimation. Sagüés conducted force vibration method for tension es- timation of external post-tensioned tendons using beam theory, where they used dead blow hammer to excite the tendons and recorded the acceler- ation response of the tendon.  At  the beginning  of their work, they considered beam theory with hinged-hinged boundary condition at both end then they concluded that the clamped-clamped boundary condition is the best formula for ten- sion estimation of tendons [7-9]. Also, Different damage effects on tendon grout and load carry- ing members using vibrational responses also have been investigated for different experimental ten'...
                'don specimens [21].'...
                'All above formulas for "string" and "beam" theory have ambiguous state for different types  of cables with different boundary and geometrical conditions. A comprehensive field study have also been conducted for all available vibration based tension estimation techniques by classifying the relationship between frequencies and tension [29]. A novel method has been fully explored using mode shape functions determined from multiple measurement. Multiple measurement on different locations of cable and determining the mode shape ratios effectively tackled the parameters is- sues for using in predetermined formulas. Where this method is successfully applied on different cable types including stay cables of ChiLo Bridge [10], tendons in segmental Box Girder bridges [11], suspensions in Arch bridges [12] and moreover, the method has been extensively explored to establish a mathematical foundation by means of sensor deployment in engineering applications [13].'...
                'To better observe and control data quality through data analysis procedures, and to make  the built-in functions interactive between user and computer, the TCMS is provided with interface using MATLAB app-designer front-end program- ming tool. MATLAB already has front-end pro- gramming tools as code base and GUI (Guide En- vironment) programming. But, since 2017 versions it has been provided with App-Designer which has more advantageous over the others. Multiple tab, Tree and variety of knobs are added with object oriented nature of its script coding, moreover it has provided the users to execute their product as "Stand Alone" or "Web Based" ver- sions.'...
                'In here we introduce a stand-alone software TCMS for condition monitoring of post-tensioned tendons with biult-in functions on MATLAB platform. To make the manuscript stand-alone diffrent approaches and algorithms embbeded in the software are also explained in summary. The TCMS is develped with three main goals in four individual tabs and three sub-tabs as: data pro-processing, system identification and tension estimation tabs. Here we first give an overview of the'...
                'software in all mentioned parts, then, functuonality and applicabity of the TCMS is validated with diffrent FE models with a user friendly interface where the data analysis can be done with great ease.']);
            add(sec3,para)
            add(ch1,sec3)
            
            
            add(rpt,ch1)
            
            ch2 = Chapter;
            ch2.Title = 'FFT';
            sec1 = Section;
            sec1.Title = 'Frequencies';
            A = [1 2 3 4 5];
            para = Paragraph(['Frequencies are :' num2str(A)]);
            
            add(sec1,para)
            add(ch2,sec1)
            add(rpt,ch2)
            
            
            ch3 = Chapter;
            ch3.Title = 'Figures';
            sec1 = Section;
            sec1.Title = 'Figure plot';
            
            fig = imread('C:\Users\Public\Pictures\Sample Pictures\Chrysanthemum.jpg');
            
            figure = Figure();
            image(fig);
            
            add(sec1,figure);
            add(ch3,sec1)
            add(rpt,ch3)
            clf;
            
            ch4 = Chapter;
            ch4.Title = 'plot';
            sec1 = Section;
            sec1.Title = 'e plot';
            figure = Figure();
            plot(linspace(1,100,100),sin(linspace(1,100,100)));
            
            add(sec1,figure);
            add(ch4,sec1)
            add(rpt,ch4)
            clf;
            
            ch5 = Chapter();
            ch5.Title = 'Table';
            
            square = [1 2 3 4 5 6 7 8 9];
            
            tbl = Table(square);
            
            tbl.Style = {...
                RowSep('solid','black','1px'),...
                ColSep('solid','black','1px'),};
            tbl.Border = 'double';
            tbl.TableEntriesStyle = {HAlign('center')};
            
            add(ch5,tbl);
            add(rpt,ch5);
            
            delete(gcf)
            close(rpt)
            rptview(rpt)
        end

        % Value changed function: BaseLineCorrectionCheckBox
        function BaseLineCorrectionCheckBoxValueChanged(app, event)
            value =  app.BaseLineCorrectionCheckBox.Value;
            
            if value == 1
                app.ButtonGroup.Visible = 'on';
                
            else
                app.ButtonGroup.Visible = 'off';
                
                
            end
            
        end

        % Button pushed function: applyProcessButton
        function applyProcessButtonPushed(app, event)
            
            global matrix
            global correctFinal
            global t
            global correct
            
            if isempty(matrix)
                msgbox('From New Tab Input the Channel Data First','help','modal')
            end

            if ~isempty(matrix)
                filterordere = app.OrderSpinner.Value;
                frequencysample = app.SamplingFrqSpinner.Value;
                value = app.FilterDropDown.Value;
                
                switch value
                    
                    case 'Low Path'
                        
                        app.CutOffSpinner_2.Enable = 'off';
                        app.CutOffSpinner_3.Enable = 'off';
                        
                        CutOfffrequency = app.CutOffSpinner.Value;
                        
                        dt = 1/frequencysample ;
                        t = dt:dt:size(matrix,1)*dt;
                        t = t';
                        
                        %% Design Low Pass Filter
                        Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                        [B,A] = butter(filterordere,Wn,'low');
                        
                        %% Filter Signal
                        for i = 1:size(matrix,2)
                            correct(:,i)= filtfilt(B,A,matrix(:,i));
                            
                        end
                        
                        
                    case 'High Path'
                        
                        app.CutOffSpinner_2.Enable = 'off';
                        app.CutOffSpinner_3.Enable = 'off';
                        
                        CutOfffrequency = app.CutOffSpinner.Value;

                        dt = 1/frequencysample ;
                        t = dt:dt:size(matrix,1)*dt;
                        t = t';
                        
                        %% Design Low Pass Filter
                        Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                        [B,A] = butter(filterordere,Wn,'high');
                        %% Filter Signal
                        for i = 1:size(matrix,2)
                            correct(:,i)= filtfilt(B,A,matrix(:,i));
                            
                        end
                        
                        if isempty(matrix)
                            msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
                        end
    
                    case 'Band Stop'
                        
                        app.CutOffSpinner.Enable = 'off';
                        app.CutOffSpinner_2.Enable = 'on';
                        app.CutOffSpinner_3.Enable = 'on';

                        CutOfffrequencylow = app.CutOffSpinner_2.Value;
                        CutOfffrequencyHigh = app.CutOffSpinner_3.Value;
                        
                        
                        
                        dt = 1/frequencysample ;
                        t = dt:dt:size(matrix,1)*dt;
                        t = t';
                        
                        %% Design Low Pass Filter
                        WnLow = CutOfffrequencylow/(frequencysample /2);
                        WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                        [B,A] = butter(filterordere,[WnLow WnHigh],"stop");
                        %% Filter Signal
                        for i = 1:size(matrix,2)
                            correct(:,i)= filtfilt(B,A,matrix(:,i));
                            
                        end

                        if isempty(matrix)
                            msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
                        end
                        
                        app.FilterTable.RowName = 1:size(matrix);
                        
                    case 'Band Path'
                        app.CutOffSpinner.Enable = 'off';
                        app.CutOffSpinner_2.Enable = 'on';
                        app.CutOffSpinner_3.Enable = 'on';
                        
                        CutOfffrequencylow = app.CutOffSpinner_2.Value;
                        CutOfffrequencyHigh = app.CutOffSpinner_3.Value;

                        dt = 1/frequencysample ;
                        t = dt:dt:size(matrix,1)*dt;
                        t = t';
                        
                        %% Design Low Pass Filter
                        WnLow = CutOfffrequencylow/(frequencysample /2);
                        WnHigh = CutOfffrequencyHigh/(frequencysample /2);% 3-db Frequency = 15Hz
                        [B,A] = butter(filterordere,[WnLow WnHigh],"bandpass");
                        %% Filter Signal
                        
                        for i = 1:size(matrix,2)
                            correct(:,i)= filtfilt(B,A,matrix(:,i));
                            
                        end
                        
                        
                        if isempty(matrix)
                            msgbox('Input data first << from home tab -> New -> New Record >> ','Help','help','modal')
                        end
      
                end
            end
            
            value = app.BaseLineCorrectionCheckBox.Value;
            or1 = app.enpolButton1.Value;
            or2 = app.enpolButton2.Value;
            or3 = app.enpolButton3.Value;
            filtorder = app.OrderSpinner_2.Value;
            fcut = app.CutOffSpinner_4.Value;
            
            if or1 == 1
                fitorder = 1;
            elseif or2 == 1
                fitorder = 2;
            elseif or3 == 1
                fitorder = 3;
            end
            
            if value == 1
                %                     app.ButtonGroup.Visible = 'on'
                for i = 1:size(correct,2)
                    [~, ~, ~,correct(:,i)] = baseline_cor_chiu(app,t,correct(:,i),fcut,fitorder,filtorder);
                    
                end
            else

                correct = correct;
   
            end 
        end

        % Value changed function: FilterDropDown
        function FilterDropDownValueChanged(app, event)
            value = app.FilterDropDown.Value;
            
            switch value
                
                case 'Low Path'
                    
                    app.CutOffSpinner.Enable = 'on';
                    app.CutOffSpinner_2.Enable = 'off';
                    app.CutOffSpinner_3.Enable = 'off';
                    
                    
                case 'High Path'
                    
                    
                    app.CutOffSpinner.Enable = 'on';
                    app.CutOffSpinner_2.Enable = 'off';
                    app.CutOffSpinner_3.Enable = 'off';
                    
                    
                case 'Band Stop'
                    
                    
                    app.CutOffSpinner.Enable = 'off';
                    app.CutOffSpinner_2.Enable = 'on';
                    app.CutOffSpinner_3.Enable = 'on';
                    
                    
                case 'Band Path'
                    
                    app.CutOffSpinner.Enable = 'off';
                    app.CutOffSpinner_2.Enable = 'on';
                    app.CutOffSpinner_3.Enable = 'on';
            end
        end

        % Value changed function: SamplingFrequencySpinner
        function SamplingFrequencySpinnerValueChanged(app, event)
            value = app.SamplingFrequencySpinner.Value;
            
        end

        % Value changed function: DataTypeDropDown
        function DataTypeDropDownValueChanged(app, event)
            global matrix
            global correct
            global t
            
            value = app.DataTypeDropDown.Value;
            v = zeros(size(matrix,1),size(matrix,2));
            d = zeros(size(matrix,1),size(matrix,2));
            
            v = cumtrapz(t,correct);
            d = cumtrapz(t,v);
            
            
            
            switch value
                case 'Channel Data'
                    app.UITable4.Data = [t matrix];
                    
                    result = 'Results Channel Data ';
                    app.TextArea_9.Value = cellstr(strvcat(result,['Data Size  : ' num2str(size(matrix))]));
                    
                    
                case 'Filtered data'
                    app.UITable4.Data = [t correct];
                    
                    result = 'Results Filtered Data ';
                    app.TextArea_9.Value = cellstr(strvcat(result,['Data Size  : ' num2str(size(correct))]));
                    
                case 'Displacment Data'
                    app.UITable4.Data = [t d];
                    
                    result = 'Results Displacment Data ';
                    app.TextArea_9.Value = cellstr(strvcat(result,['Data Size  : ' num2str(size(matrix))]));
                    
                case 'Velocity Data'
                    app.UITable4.Data = [t v];
                    
                    result = 'Results Velocity Data ';
                    app.TextArea_9.Value = cellstr(strvcat(result,['Data Size  : ' num2str(size(matrix))]));
                    
            end
            
        end

        % Value changed function: Sensor1Button
        function Sensor1ButtonValueChanged(app, event)
            
        
        
        value = app.Sensor1Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
            
        end

        % Value changed function: Sensor2Button
        function Sensor2ButtonValueChanged(app, event)
            value = app.Sensor2Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor3Button
        function Sensor3ButtonValueChanged(app, event)
            value = app.Sensor3Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor4Button
        function Sensor4ButtonValueChanged(app, event)
            value = app.Sensor4Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor5Button
        function Sensor5ButtonValueChanged(app, event)
            value = app.Sensor5Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor6Button
        function Sensor6ButtonValueChanged(app, event)
            value = app.Sensor6Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor7Button
        function Sensor7ButtonValueChanged(app, event)
            value = app.Sensor7Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor8Button
        function Sensor8ButtonValueChanged(app, event)
            value = app.Sensor8Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor9Button
        function Sensor9ButtonValueChanged(app, event)
            value = app.Sensor9Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Value changed function: Sensor10Button
        function Sensor10ButtonValueChanged(app, event)
            value = app.Sensor10Button.Value;
            global Acc1, global Acc2, global Acc3,global Acc4,global Acc5,global Acc6,...
                global Acc7,global Acc8,global Acc9,global Acc10
            global correct
            switch value
                case '1 Sensor'
                    Acc1 =correct(:,1);
                case '2 Sensor'
                    Acc2 =correct(:,2);
                case '3 Sensor'
                    Acc3 =correct(:,3);
                case '4 Sensor'
                    Acc4 =correct(:,4);
                case '5 Sensor'
                    Acc5 =correct(:,5);
                case '6 Sensor'
                    Acc6 =correct(:,6);
                case '7 Sensor'
                    Acc7 =correct(:,7);
                case '8 Sensor'
                    Acc8 =correct(:,8);
                case '9 Sensor'
                    Acc9 =correct(:,9);
                case '10 Sensor'
                    Acc10 =correct(:,10);
                    
            end
        end

        % Callback function
        function TableDataButtonPushed(app, event)
            global frequencysample
            global correct
            
            
            
            
            [f,~,~,Amplitude] = ModeShapeRatioFunction(app,correct,frequencysample);
            
         
            a = 1:size(Amplitude,2);
            
            app.UITable.Data = [a' f(1,:)'];
            
        end

        % Value changed function: ModeDropDown
        function ModeDropDownValueChanged(app, event)
            value = app.ModeDropDown.Value;
            
        end

        % Button pushed function: DPlotModeShapesButton
        function DPlotModeShapesButtonPushed(app, event)
            global frequencysample
            global Position
            
            
            global correct
            
            [f,yy,modeshape] = ModeShapeRatioFunction(app,correct,frequencysample);
            
            
            stem3(app.UIAxes,f,yy,modeshape,'-o')
            app.UIAxes.XLabel.String='Frequency (Hz)';
            app.UIAxes.YLabel.String='Sensor Number';
            app.UIAxes.ZLabel.String='Mode Shape Ratio';
            app.UIAxes.Title.String='Mode Shape Ratio Determination';
            
        end

        % Selection changed function: windowTypeButtonGroup
        function windowTypeButtonGroupSelectionChanged(app, event)
            selectedButton = app.windowTypeButtonGroup.SelectedObject;
            
        end

        % Selection changed function: 
        % FrquecciesIdentificationMethodButtonGroup
        function FrquecciesIdentificationMethodButtonGroupSelectionChanged(app, event)
            selectedButton = app.FrquecciesIdentificationMethodButtonGroup.SelectedObject;
            
        end

        % Button pushed function: SaveFrequenciesButton_2
        function SaveFrequenciesButton_2Pushed(app, event)
%             global F1, global F2, global F3, global F4, global F5, global F6...
%                 ,global F7, global F8, global F9, global F10, global Frequency;
            global Frequency
            F1 = app.mode1EditField_2.Value;
            F2 = app.mode2EditField_2.Value;
            F3 = app.mode3EditField_2.Value;
            F4 = app.mode4EditField_2.Value;
            F5 = app.mode5EditField_2.Value;
            F6 = app.mode6EditField_2.Value;
            F7 = app.mode7EditField_2.Value;
            F8 = app.mode8EditField_2.Value;
            F9 = app.mode9EditField_2.Value;
            F10 = app.mode10EditField_2.Value;
            
            
            value =  app.modenumberDropDown_2.Value;
            
            switch value
                case '1 mode'
                    Frequency = [F1];
                case '2 mode'
                    Frequency = [F1 F2 ];
                case '3 mode'
                    Frequency = [F1 F2 F3 ];
                case '4 mode'
                    Frequency = [F1 F2 F3 F4 ];
                case '5 mode'
                    Frequency = [F1 F2 F3 F4 F5 ];
                case '6 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 ];
                case '7 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7];
                case '8 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7 F8 ];
                case '9 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7 F8 F9 ];
                case '10 mode'
                    Frequency = [F1 F2 F3 F4 F5 F6 F7 F8 F9 F10];
                    
            end
            
            
           
            sf = app.SampligFrequencyEditField.Value;
            row = [sf.*Frequency];
            
            
            text1 = 'results --------------------------------------------------------------------------------------------';
            text2 = 'Average Normalized Power Spectral Density Function:';
            text3 = 'To Detrmine The PSDs The "Pwelch" Built-in Function Is Used ';
            text4 = 'For Auto Peak Selection The Bilt-in "findpeak" Function Is Used ';
            text5 = 'Diffrent Options Are Also Added For Ovelapping And Window Type Selection';
            
            app.TextArea_8.Value = cellstr(strvcat(text1,'    ',text2,text3,text4,text5,['Rows:' num2str(row)]));
            
        end

        % Value changed function: modenumberDropDown_2
        function modenumberDropDown_2ValueChanged(app, event)
            value = app.modenumberDropDown_2.Value;
            
            switch value
                case '1 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'off';
                    app.mode3EditField_2.Enable = 'off';
                    app.mode4EditField_2.Enable = 'off';
                    app.mode5EditField_2.Enable = 'off';
                    app.mode6EditField_2.Enable = 'off';
                    app.mode7EditField_2.Enable = 'off';
                    app.mode8EditField_2.Enable = 'off';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                    
                case '2 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'off';
                    app.mode4EditField_2.Enable = 'off';
                    app.mode5EditField_2.Enable = 'off';
                    app.mode6EditField_2.Enable = 'off';
                    app.mode7EditField_2.Enable = 'off';
                    app.mode8EditField_2.Enable = 'off';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                case '3 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'off';
                    app.mode5EditField_2.Enable = 'off';
                    app.mode6EditField_2.Enable = 'off';
                    app.mode7EditField_2.Enable = 'off';
                    app.mode8EditField_2.Enable = 'off';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                case '4 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'on';
                    app.mode5EditField_2.Enable = 'off';
                    app.mode6EditField_2.Enable = 'off';
                    app.mode7EditField_2.Enable = 'off';
                    app.mode8EditField_2.Enable = 'off';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                case '5 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'on';
                    app.mode5EditField_2.Enable = 'on';
                    app.mode6EditField_2.Enable = 'off';
                    app.mode7EditField_2.Enable = 'off';
                    app.mode8EditField_2.Enable = 'off';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                case '6 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'on';
                    app.mode5EditField_2.Enable = 'on';
                    app.mode6EditField_2.Enable = 'on';
                    app.mode7EditField_2.Enable = 'off';
                    app.mode8EditField_2.Enable = 'off';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                case '7 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'on';
                    app.mode5EditField_2.Enable = 'on';
                    app.mode6EditField_2.Enable = 'on';
                    app.mode7EditField_2.Enable = 'on';
                    app.mode8EditField_2.Enable = 'off';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                case '8 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'on';
                    app.mode5EditField_2.Enable = 'on';
                    app.mode6EditField_2.Enable = 'on';
                    app.mode7EditField_2.Enable = 'on';
                    app.mode8EditField_2.Enable = 'on';
                    app.mode9EditField_2.Enable = 'off';
                    app.mode10EditField_2.Enable = 'off';
                case '9 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'on';
                    app.mode5EditField_2.Enable = 'on';
                    app.mode6EditField_2.Enable = 'on';
                    app.mode7EditField_2.Enable = 'on';
                    app.mode8EditField_2.Enable = 'on';
                    app.mode9EditField_2.Enable = 'on';
                    app.mode10EditField_2.Enable = 'off';
                case '10 mode'
                    app.mode1EditField_2.Enable = 'on';
                    app.mode2EditField_2.Enable = 'on';
                    app.mode3EditField_2.Enable = 'on';
                    app.mode4EditField_2.Enable = 'on';
                    app.mode5EditField_2.Enable = 'on';
                    app.mode6EditField_2.Enable = 'on';
                    app.mode7EditField_2.Enable = 'on';
                    app.mode8EditField_2.Enable = 'on';
                    app.mode9EditField_2.Enable = 'on';
                    app.mode10EditField_2.Enable = 'on';
                    
            end
            
        end

        % Size changed function: SimpleBeamRegressionTab
        function SimpleBeamRegressionTabSizeChanged(app, event)
            position = app.SimpleBeamRegressionTab.Position;
            
        end

        % Button pushed function: RunButton_3
        function RunButton_3Pushed(app, event)
            
            
            global Frequency
            global StartPoint
            global FitType
            global Robust
            global alg
            
            
            m = app.mEditField_3.Value;
            L = app.LEditField_3.Value;

            StartPoint =[app.strataEditField_3.Value ...
                app.stratbEditField_3.Value];
            FitType = 'sqrt(a*x^2+b*x^4)';
            Robust = app.RobustDropDown_3.Value;
            alg =  app.algorithemDropDown_3.Value;
            x = 1:size(Frequency,2);
            [fitresult, gof] = RegresionSimpleBeamTheorey1(app,x, Frequency);
            
            A = fitresult.a;
            B = fitresult.b;
            
            T = 4*m*L^2*A;
            T = sprintf('%0.3f',T/1000);
            EI = (4*L^4*m*B)/(pi^2);
            EI = sprintf('%0.2f',EI/1000);
            
            app.Label_44.Text = num2str(T);
            app.Label_45.Text = num2str(EI);
            
            y = feval(fitresult,x);
            plot(app.UIregressionAxes,x,y,'r--',x,Frequency,'bs');
            
            
            R = 'Results ----------------------------- ';
            msg = 'Algorithm =  Non-Linear Least Square  ';
            
            AA = ['a = ' , num2str(fitresult.a)];
            BB = ['b = ' , num2str(fitresult.b)];
            
            Tension =['Tension value [kN]= ' num2str(T)];
            EII = ['EI value [kN-m^2]= ' num2str(EI)];
            SSE =['SSE =' num2str(gof.sse)];
            rr = ['adjrsquare = ' num2str(gof.adjrsquare)];
            bb = ['dfe = ' num2str(gof.dfe)];
            gg = ['rmse = ' num2str(gof.rmse)];
            aa = ['rsquare = ' num2str(gof.rsquare)];
            
            app.TextArea_3.Value = cellstr(strvcat(R,'','',' ',' ',msg,['Robust = ' Robust]...
                ,['Algorithm = ' alg] ,AA,BB,Tension,EII,SSE,rr,bb,gg,aa));
            
            
            
        end

        % Button pushed function: SaveTableButton
        function SaveTableButtonPushed(app, event)
           
            
            [FileName , Dir ] = uiputfile({'*.txt','TableDataTextFiles'},'Directory Selection','TableData.txt');
            File = fullfile(Dir,FileName);
            val = app.UITable4.Data;
            save(File,'val','-ascii')
        end

        % Callback function
        function ButtonPushed(app, event)
          
        end

        % Selection changed function: Tree5
        function Tree5SelectionChanged(app, event)
            selectedNodes = app.Tree5.SelectedNodes;
            switch selectedNodes.Text
                
                case 'FB Index'
                    app.SegmentLEditField.Enable = 'on';
                    app.LevelEditField.Enable = 'on';
                    app.mEditField_4.Enable = 'off';
                    app.dEditField_2.Enable     = 'on';
                    
                    
                    
                case 'ED Index'
                    app.SegmentLEditField.Enable = 'off';
                    app.LevelEditField.Enable = 'on';
                    app.mEditField_4.Enable = 'on';
                    app.dEditField_2.Enable     = 'off';
                    
                    
                    
          
            end
        end

        % Button pushed function: UnDamgedDataButton
        function UnDamgedDataButtonPushed(app, event)
             global UnDamaged
            
            
            [FileName, Dir] = uigetfile({'.mat','Matlab Files';'*.txt;*.dat','Text Files';'*.xls;*.xlsx','Excel Files';...
                '*.*','All Files'},'File Selection','Uititled.txt');
            File = fullfile ( Dir , FileName );
            [~,~,Extension]=fileparts(File);
            
            if isempty(FileName)
                return
            end
            
            switch Extension
                case '.mat'
                    
                    load(File.mat);
                    
                case {'.txt','.dat'}
                    
                    UnDamaged =  load(File,'-ascii');
                    
                case {'.xlsx','.xls'}
                    
                    UnDamaged =  xlsread(File);
            end
        end

        % Button pushed function: DamgedDataButton
        function DamgedDataButtonPushed(app, event)
            global Damaged
            
            
            [FileName, Dir] = uigetfile({'.mat','Matlab Files';'*.txt;*.dat','Text Files';'*.xls;*.xlsx','Excel Files';...
                '*.*','All Files'},'File Selection','Uititled.txt');
            File = fullfile ( Dir , FileName );
            [~,~,Extension]=fileparts(File);
            
            if isempty(FileName)
                return
            end
            
            switch Extension
                case '.mat'
                    
                    load(File.mat);
                    
                case {'.txt','.dat'}
                    
                    Damaged =  load(File,'-ascii');
                    
                case {'.xlsx','.xls'}
                    
                    Damaged =  xlsread(File);
            end
        end

        % Value changed function: Switch_2
        function Switch_2ValueChanged(app, event)
            value = app.Switch_2.Value;
            switch value
                case 'off'
                    
                    app.ButtonGroup_2.Visible = 'off';
                    app.cuttoffSpinner_2.Enable = 'off';
                    app.orderSpinner_2.Enable = 'off';
                    
                case 'Apply'
                    
                    app.ButtonGroup_2.Visible = 'on';
                    app.cuttoffSpinner_2.Enable = 'on';
                    app.orderSpinner_2.Enable = 'on';
     
            end
        end

        % Value changed function: Switch
        function SwitchValueChanged(app, event)
            value = app.Switch.Value;
            
            switch value
                
                case 'off'
                    
                    app.cuttoffSpinner.Enable = 'off';
                    app.orderSpinner.Enable = 'off';
                    app.FreSamSpinner.Enable = 'off';
                    
                case 'Apply'
                    
                    app.cuttoffSpinner.Enable = 'on';
                    app.orderSpinner.Enable = 'on';
                    app.FreSamSpinner.Enable = 'on';
                    
            end
            
            
            
            
        end

        % Button pushed function: RunDamageDetectionAlgorithmButton
        function RunDamageDetectionAlgorithmButtonPushed(app, event)
            
            global Damaged
            global UnDamaged
            %% Filtering
            value1 = app.Switch.Value;
            switch value1
                case 'off'
                    correctDamaged =  Damaged;
                    correctUnDamaged = UnDamaged;
                case 'Apply'
                    
                    filterordere = app.orderSpinner.Value;
                    frequencysample = app.FreSamSpinner.Value;
                    CutOfffrequency = app.cuttoffSpinner.Value;
                    
                    
                    
                    dt = 1/frequencysample ;
                    t = dt:dt:size(Damaged,1)*dt;
                    t = t';
                    
                    %% Design Low Pass Filter
                    Wn = CutOfffrequency/(frequencysample /2);% 3-db Frequency = 15Hz
                    [B,A] = butter(filterordere,Wn,'low');
                    
                    %% Filter Signal
                    for i = 1:size(Damaged,2)
                        correctDamaged(:,i)= filtfilt(B,A,Damaged(:,i));
                        correctUnDamaged(:,i)= filtfilt(B,A,UnDamaged(:,i));
                        
                    end
            end
            
            or1 = app.thOrderButton.Value;
            or2 = app.thOrderButton_2.Value;
            or3 = app.thOrderButton_3.Value;
            filtorder = app.orderSpinner_2.Value;
            fcut = app.cuttoffSpinner_2.Value;
            
            if or1 == 1
                fitorder = 1;
            elseif or2 == 1
                fitorder = 2;
            elseif or3 == 1
                fitorder = 3;
            end
  
            
            value2 = app.Switch_2.Value;
            switch value2
 
                case 'off'
                    switch value1
                        case 'off'
                            correctDamaged =  Damaged;
                            correctUnDamaged = UnDamaged;
                            
                        case 'Apply'
                            correctDamaged =  correctDamaged;
                            correctUnDamaged = correctUnDamaged;
                    end
                    
                    
                case 'Apply'
                    switch value1
                        case 'off'
                            for i = 1:size(correctDamaged,2)
                                [~, ~, ~,correctDamaged(:,i)] = baseline_cor_chiu(app,t,Damaged(:,i),fcut,fitorder,filtorder);
                                [~, ~, ~,correctUnDamaged(:,i)] = baseline_cor_chiu(app,t,UnDamaged(:,i),fcut,fitorder,filtorder);
                            end
                            
                        case 'Apply'
                            for i = 1:size(correctDamaged,2)
                                [~, ~, ~,correctDamaged(:,i)] = baseline_cor_chiu(app,t,correctDamaged(:,i),fcut,fitorder,filtorder);
                                [~, ~, ~,correctUnDamaged(:,i)] = baseline_cor_chiu(app,t,correctUnDamaged(:,i),fcut,fitorder,filtorder);
                            end
                    end
       
            end
            
            
            
            
            selectedNodes = app.Tree5.SelectedNodes;
            
            value3 = app.motherwavDropDown.Value;
            n = app.wavletnumEditField.Value;
            
            switch value3
                case 'harr'
                    wfamily = 'harr';
                case 'db'
                    wfamily = ['db' num2str(n)];
                case 'sym'
                    wfamily = ['sym' num2str(n)];
                case 'coif'
                    wfamily = ['coif' num2str(n)];
                case 'fk'
                    wfamily = ['fk' num2str(n)];
            end
            
            L = app.SegmentLEditField.Value;
            d = app.dEditField_2.Value;
            level = app.LevelEditField.Value;
            m = app.mEditField_4.Value;
            
            switch selectedNodes.Text
                
                case 'FB Index'
                    
                    
                    app.mEditField_4.Value;
                    
                    app.SegmentLEditField.Enable = 'on';
                    app.LevelEditField.Enable = 'on';
                    app.mEditField_4.Enable = 'off';
                    
                    %% Rotational Acceleration Undamged
                    
                    AccelerationUndamaged = correctUnDamaged;
                    for i = 2:size(AccelerationUndamaged,2)
                        AccelerationUndamagedRotational(:,i-1) = (3*(AccelerationUndamaged(:,i)-AccelerationUndamaged(:,i-1)*...
                            L^2))/(L^2+d^2);
                    end
                    AccelerationUndamaged = AccelerationUndamagedRotational;
                    AccelerationUndamaged = normalize(AccelerationUndamaged,'range',[0 1]);
                    
                    
                    
                    %% Rotational Acceleration Damaged
                    Accelerationdamaged = correctDamaged;
                    for i = 2:size(Accelerationdamaged,2)
                        AccelerationdamagedRotational(:,i-1) = (3*(Accelerationdamaged(:,i)-Accelerationdamaged(:,i-1)*...
                            L^2))/(L^2+d^2);
                    end
                    Accelerationdamaged = AccelerationdamagedRotational;
                    Accelerationdamaged = normalize(Accelerationdamaged,'range',[0 1]);
                    
                    %% PGA Plot
                    maxUndamged = max(AccelerationUndamaged);
                    maxdamged = max(Accelerationdamaged);
                    MaxEvaluation = [maxUndamged; maxdamged]';
                    bar(app.UIAxes6,MaxEvaluation,'stacked')
                    legend(app.UIAxes6,'Damaged PA','Undamaged PA');
                    xlabel(app.UIAxes6,'Sensor Number');
                    ylabel(app.UIAxes6,'Peak Acceleration')
                    title(app.UIAxes6,'Normalized Acceleration ')
                    
                    %                     % Analysis and WPT Extraction
                    
                    for i = 1:size(Accelerationdamaged,2)
                        AccUndamged{i,1} = AccelerationUndamaged(:,i);
                        Accdamged{i,1} = Accelerationdamaged(:,i);
                    end
                    
                    for i = 1:size(Accdamged)
                        
                        [a1{i},a2{i},a3{i},a4{i},a5{i}] = modwpt(AccUndamged{i,1},wfamily,'FullTree',true,level);
                        [b1{i},b2{i},b3{i},b4{i},b5{i}] = modwpt(Accdamged{i,1},wfamily,'FullTree',true,level);
                        
                    end
                    
                    for i = 1:size(a4,2)
                        maxUndamgedEnergy(i) = max(a4{1,i});
                        maxdamgedEnergy(i) = max(b4{1,i});
                        
                    end
                    
                    MaxEvaluation =[ maxUndamgedEnergy; maxdamgedEnergy]';
                    
                    
                    bar(app.UIAxes6_2,MaxEvaluation,'stacked');
                    legend(app.UIAxes6_2,'Max Damaged Energy','Max Undamaged Energy');
                    xlabel(app.UIAxes6_2,'Segment Number');
                    ylabel(app.UIAxes6_2,'Energy');
                    title(app.UIAxes6_2,'Maximum Energy');
                    
                    MaxEvaluationDif =( maxdamgedEnergy-maxUndamgedEnergy)';
                    MaxEvaluationDif = MaxEvaluationDif.^6;
                    
                    
                    bar(app.UIAxes6_4,normalize(MaxEvaluationDif,'range',[0 100]),'stacked')
                    legend(app.UIAxes6_4,'Max Damaged Energy Diff','Max UnDamaged Energy Diff');
                    xlabel(app.UIAxes6_4,'Segment Number');
                    ylabel(app.UIAxes6_4,'Max Energy Diff')
                    title(app.UIAxes6_4,'Energy differences')
                    
                    % Damaged
                    for j = 1:size(Accelerationdamaged,2)
                        for i = 1:level
                            FixBas(i,1) = 2^i-(i-1);
                            BDamaged{j}(i,1) = b5{1,j}(FixBas(i),1);
                            BBDamaged=BDamaged';
                        end
                    end
                    
                    % Undamged
                    
                    for j = 1:size(AccUndamged)
                        for i = 1:level
                            FixBas(i,1) = 2^i-(i-1);
                            BunDamaged{j}(i,1) = a5{1,j}(FixBas(i),1);
                            BBUndamged= BunDamaged';
                        end
                    end
                    
                    % Damage Index
                    for i = 1:size(BBDamaged)
                        DamgeIndex{i} = (BBUndamged{i}(:,1)-BBDamaged{i}(:,1)).^6;
                    end
                    
                    DamgeIndex = cell2mat(DamgeIndex);
                    DamgeIndex = DamgeIndex';
                    % Damage Index Fixed Base
                    
                    [~ ,plotdata] = controlchart(abs((normalize((DamgeIndex),'range',[0 100]))),'charttype',{'ewma' },'display','off','limits',{});
                    FinalDamageResult = (plotdata.pts);
                    
                    bar(app.UIAxes6_3,FinalDamageResult)
                    hold(app.UIAxes6_3)
                    plot(app.UIAxes6_3,plotdata.ucl,'--','LineWidth',2);
                    xlabel(app.UIAxes6_3,'Sensor Number');
                    ylabel(app.UIAxes6_3,'FB Damage Imdex');
                    title(app.UIAxes6_3,'Wavelet Based Damage Identification of PT Tendons');
                    text(app.UIAxes6_3,1,plotdata.ucl(1)+2,'\uparrow Thereshold value For Damage Index')
                    close(gcf)
                    
                    
                    
                case 'ED Index'
                    app.SegmentLEditField.Enable = 'off';
                    app.LevelEditField.Enable = 'off';
                    app.mEditField_4.Enable = 'on';
                    
                    AccelerationUndamaged = correctUnDamaged;
                    
                    Accelerationdamaged = correctDamaged;
                    
                    %% PGA Plot
                    maxUndamged = max(AccelerationUndamaged);
                    maxdamged = max(Accelerationdamaged);
                    MaxEvaluation = [maxUndamged; maxdamged]';
                    
                    
                    bar(app.UIAxes6,MaxEvaluation/100,'stacked')
                    legend(app.UIAxes6,'Damaged PGA','Undamaged PGA');
                    xlabel(app.UIAxes6,'Sensor Number');
                    ylabel(app.UIAxes6,'Peak Acceleration')
                    
                    %% Analysis and WPT Extraction
                    
                    for i = 1:size(Accelerationdamaged,2)
                        AccUndamged{i,1} = AccelerationUndamaged(:,i);
                        Accdamged{i,1} = Accelerationdamaged(:,i);
                    end
                    
                    for i = 1:size(Accdamged)
                        
                        [a1{i},a2{i},a3{i},a4{i},a5{i}] = modwpt(AccUndamged{i,1},wfamily,'FullTree',true,level);
                        [b1{i},b2{i},b3{i},b4{i},b5{i}] = modwpt(Accdamged{i,1},wfamily,'FullTree',true,level);
                        
                    end
                    
                    for i = 1:size(a4,2)
                        maxUndamgedEnergy(i) = max(a5{1,i});
                        maxdamgedEnergy(i) = max(b5{1,i});
                        
                    end
                    
                    MaxEvaluation =[ maxUndamgedEnergy; maxdamgedEnergy]';
                    
                    
                    bar(app.UIAxes6_2,MaxEvaluation,'stacked')
                    legend(app.UIAxes6_2,'Max Damaged Energy','Max Undamaged Energy');
                    xlabel(app.UIAxes6_2,'Segment Number');
                    ylabel(app.UIAxes6_2,'Energy');
                    title(app.UIAxes6_2,'Maximum Energy');
                    
                    MaxEvaluationDif =(maxUndamgedEnergy- maxdamgedEnergy)';
                    MaxEvaluationDif = MaxEvaluationDif.^2;
                    
                    
                    bar(app.UIAxes6_4,normalize(MaxEvaluationDif,'range',[0 10]).^2,'stacked')
                    legend(app.UIAxes6_4,'Max Undamged Energy','Max Damaged Energy');
                    xlabel(app.UIAxes6_4,'Segment Number');
                    ylabel(app.UIAxes6_4,'Max Energy Diff')
                    title(app.UIAxes6_4,'Energy differences')
                    
                    %% Damaged
                    for i = 1:size(Accdamged)
                        BDamaged(i,:) = sort(b5{i},'descend');
                        BBDamaged=BDamaged';
                    end
                    
                    ehatdamaged=mean(BBDamaged(1:m,:),1);
                    
                    for j = 1:size(Accdamged)
                        for i = 1:m
                            keyDamaged(i,j) = (ehatdamaged(1,j) - BBDamaged(i,j));
                            key1Damged = keyDamaged.^2;
                            
                            sigmaDamaged = sum(key1Damged(1:end,:),1);
                            EDdamaged = sigmaDamaged.^0.5;
                        end
                    end
                    
                    %% Undamged
                    
                    for i = 1:size(AccUndamged)
                        BUndamged(i,:) = sort(a5{i},'descend');
                        BBUndamged=BUndamged';
                    end
                    
                    ehatundamaged=mean(BBUndamged(1:m,:),1);
                    for j = 1:size(AccUndamged)
                        for i = 1:m
                            keyUndamged(i,j) = (ehatundamaged(1,j) - BBUndamged(i,j));
                            key1Undamged = keyUndamged.^2;
                            
                            sigmaUnDamaged = sum(key1Undamged(1:end,:),1);
                            EDUndamaged = sigmaUnDamaged.^0.5;
                        end
                    end
                    
                    %% Damage Index
                    
                    DamgeIndex = (EDdamaged-EDUndamaged).^6;
                    
                    %% Results
                    
                    
                    [~ ,plotdata] = controlchart(abs((normalize((DamgeIndex),'range',[0 100]))),'charttype',{'i' },'display','off','limits',{});
                    FinalDamageResult = (plotdata.pts);
                    
                    bar(app.UIAxes6_3,FinalDamageResult)
                    hold(app.UIAxes6_3)
                    plot(app.UIAxes6_3,plotdata.ucl,'--','LineWidth',2);
                    xlabel(app.UIAxes6_3,'Sensor Number');
                    ylabel(app.UIAxes6_3,'ED Damage Imdex');
                    title(app.UIAxes6_3,'Wavelet Based Damage Identification of PT Tendons');
                    text(app.UIAxes6_3,1,plotdata.ucl(1)+2,'\uparrow Thereshold value For Damage Index')
                    close(gcf)
            end
            
            
          
            
            txt1 = 'Wavlet Packet Based Damage Detection Of Post-Tensioned Tendonds ---------------';
            txt2 = 'Two Different Damge Index are Embbeded in TCMS as Fixed Nodal Basis Relative Energy and  ED';
            txt3 = 'Filter Settings -----------------';
            txt4 = ['Order :' num2str(filterordere)];
            txt5 = ['Frequency Sample :' num2str(frequencysample)];
            txt6 = ['Cuttoff :' num2str(CutOfffrequency)];
            txt7 = 'Baseline Correction';
            txt8 = ['Segment Length :' , num2str(L)];
            txt9 = ['Diameter :' num2str(d)];
            txt10 = ['Level :' num2str(level)];
            txt11 = ['First Selected of Sorted Relative Energies :' num2str(m)];
            txt12 = ['Wavelet Family :' wfamily];
            txt13 = ['N :' num2str(n)];
            
            
            app.TextArea_10.Value = cellstr(strvcat(txt1,txt2,txt3,txt4,txt5,txt6,txt7,txt8,txt9,txt10,txt11,txt12,txt13));
            
        end

        % Value changed function: motherwavDropDown
        function motherwavDropDownValueChanged(app, event)
            value = app.motherwavDropDown.Value;
            switch value
                
                case 'Haar'
                    app.wavletnumEditField.Enable = 'off' ;
                case 'db'
                    app.wavletnumEditField.Enable = 'on' ;
                case 'sym'
                    app.wavletnumEditField.Enable = 'on' ;
                case 'coif'
                    app.wavletnumEditField.Enable = 'on' ;
                case 'fk'
                    app.wavletnumEditField.Enable = 'on' ;
            end
            
        end

        % Value changed function: wavletnumEditField
        function wavletnumEditFieldValueChanged(app, event)
            value = app.wavletnumEditField.Value;
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create TCMS and hide until all components are created
            app.TCMS = uifigure('Visible', 'off');
            app.TCMS.NumberTitle = 'on';
            app.TCMS.Colormap = [0.902 0.902 0.902;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.251 0.902;0.2784 0.2784 0.9216;0.2784 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824;1 1 1;1 1 1;1 1 1];
            app.TCMS.Position = [50 50 1292 673];
            app.TCMS.Name = 'TCMS';
            app.TCMS.KeyPressFcn = createCallbackFcn(app, @TCMSKeyPress, true);

            % Create TabGroup
            app.TabGroup = uitabgroup(app.TCMS);
            app.TabGroup.Position = [1 582 1292 92];

            % Create HomeTab
            app.HomeTab = uitab(app.TabGroup);
            app.HomeTab.Title = 'Home';
            app.HomeTab.BackgroundColor = [0.9412 0.9412 0.9412];
            app.HomeTab.ForegroundColor = [0.149 0.149 0.149];

            % Create DropDownNew
            app.DropDownNew = uidropdown(app.HomeTab);
            app.DropDownNew.Items = {'New Channel Records'};
            app.DropDownNew.Position = [10 10 118 22];
            app.DropDownNew.Value = 'New Channel Records';

            % Create NEw
            app.NEw = uibutton(app.HomeTab, 'push');
            app.NEw.ButtonPushedFcn = createCallbackFcn(app, @NEwPushed, true);
            app.NEw.Icon = 'iconfinder_new10_216291.png';
            app.NEw.FontName = 'Times New Roman';
            app.NEw.Position = [10 33 118 23];
            app.NEw.Text = 'New';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.HomeTab);
            app.DropDown_2.Items = {'Save', 'Save As'};
            app.DropDown_2.Position = [277 10 99 22];
            app.DropDown_2.Value = 'Save';

            % Create SaveButton
            app.SaveButton = uibutton(app.HomeTab, 'push');
            app.SaveButton.ButtonPushedFcn = createCallbackFcn(app, @SaveButtonPushed, true);
            app.SaveButton.Icon = 'Apple_classic_10Icon_5px_grid-04-512.png';
            app.SaveButton.Position = [277 33 99 23];
            app.SaveButton.Text = 'Save';

            % Create ExitButton
            app.ExitButton = uibutton(app.HomeTab, 'push');
            app.ExitButton.ButtonPushedFcn = createCallbackFcn(app, @ExitButtonPushed, true);
            app.ExitButton.Icon = 'iconfinder_Cancel_Icon_743823.png';
            app.ExitButton.IconAlignment = 'bottom';
            app.ExitButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ExitButton.FontName = 'Arial';
            app.ExitButton.FontWeight = 'bold';
            app.ExitButton.FontColor = [0.149 0.149 0.149];
            app.ExitButton.Position = [397 12 99 44];
            app.ExitButton.Text = 'Exit';

            % Create DropDownNew_2
            app.DropDownNew_2 = uidropdown(app.HomeTab);
            app.DropDownNew_2.Items = {'Existing Project'};
            app.DropDownNew_2.Position = [141 10 119 22];
            app.DropDownNew_2.Value = 'Existing Project';

            % Create NEw_2
            app.NEw_2 = uibutton(app.HomeTab, 'push');
            app.NEw_2.ButtonPushedFcn = createCallbackFcn(app, @NEw_2ButtonPushed, true);
            app.NEw_2.Icon = 'iconfinder_folder-open_1608888.png';
            app.NEw_2.Position = [141 33 119 23];
            app.NEw_2.Text = 'Open';

            % Create ToolsTab
            app.ToolsTab = uitab(app.TabGroup);
            app.ToolsTab.Title = 'Tools';

            % Create DropDown_3
            app.DropDown_3 = uidropdown(app.ToolsTab);
            app.DropDown_3.Items = {'PDF', 'Word', 'HTML', 'Advances'};
            app.DropDown_3.Position = [19 12 99 22];
            app.DropDown_3.Value = 'Word';

            % Create CreateReportButton
            app.CreateReportButton = uibutton(app.ToolsTab, 'push');
            app.CreateReportButton.ButtonPushedFcn = createCallbackFcn(app, @CreateReportButtonPushed2, true);
            app.CreateReportButton.Position = [19 35 99 23];
            app.CreateReportButton.Text = 'Create Report';

            % Create HelpTab
            app.HelpTab = uitab(app.TabGroup);
            app.HelpTab.Title = 'Help';

            % Create AboutButton
            app.AboutButton = uibutton(app.HelpTab, 'push');
            app.AboutButton.Position = [12 15 100 42];
            app.AboutButton.Text = 'About';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.TCMS);
            app.TabGroup2.Position = [2 1 1290 583];

            % Create FilterSelectionSettingsTab
            app.FilterSelectionSettingsTab = uitab(app.TabGroup2);
            app.FilterSelectionSettingsTab.Title = 'Filter Selection Settings';

            % Create TabGroup5
            app.TabGroup5 = uitabgroup(app.FilterSelectionSettingsTab);
            app.TabGroup5.TabLocation = 'left';
            app.TabGroup5.Position = [1 2 1288 556];

            % Create ButterworthTab
            app.ButterworthTab = uitab(app.TabGroup5);
            app.ButterworthTab.Title = 'Butterworth';

            % Create DataControlForFilteringPanel
            app.DataControlForFilteringPanel = uipanel(app.ButterworthTab);
            app.DataControlForFilteringPanel.TitlePosition = 'centertop';
            app.DataControlForFilteringPanel.Title = 'Data Control For Filtering';
            app.DataControlForFilteringPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DataControlForFilteringPanel.FontWeight = 'bold';
            app.DataControlForFilteringPanel.Scrollable = 'on';
            app.DataControlForFilteringPanel.Position = [1 3 863 553];

            % Create FilterAxes
            app.FilterAxes = uiaxes(app.DataControlForFilteringPanel);
            title(app.FilterAxes, '')
            xlabel(app.FilterAxes, 'Time (s)')
            ylabel(app.FilterAxes, 'Acceleration (m/s^2)')
            app.FilterAxes.PlotBoxAspectRatio = [6.008 1 1];
            app.FilterAxes.FontName = 'Times New Roman';
            app.FilterAxes.FontUnits = 'normalized';
            app.FilterAxes.FontSize = 0.08;
            app.FilterAxes.FontWeight = 'bold';
            app.FilterAxes.GridColor = [0.15 0.15 0.15];
            app.FilterAxes.GridAlpha = 0.15;
            app.FilterAxes.MinorGridColor = [0.1 0.1 0.1];
            app.FilterAxes.MinorGridAlpha = 0.25;
            app.FilterAxes.Box = 'on';
            app.FilterAxes.BoxStyle = 'full';
            app.FilterAxes.XColor = [0.15 0.15 0.15];
            app.FilterAxes.XMinorTick = 'on';
            app.FilterAxes.YColor = [0.15 0.15 0.15];
            app.FilterAxes.YMinorTick = 'on';
            app.FilterAxes.ZColor = [0.15 0.15 0.15];
            app.FilterAxes.XGrid = 'on';
            app.FilterAxes.XMinorGrid = 'on';
            app.FilterAxes.YGrid = 'on';
            app.FilterAxes.YMinorGrid = 'on';
            app.FilterAxes.Position = [23 318 818 204];

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.DataControlForFilteringPanel);
            title(app.UIAxes5, '')
            xlabel(app.UIAxes5, 'Frequency (Hz)')
            ylabel(app.UIAxes5, 'FFT Amplitude')
            app.UIAxes5.PlotBoxAspectRatio = [6.27049180327869 1 1];
            app.UIAxes5.FontName = 'Times New Roman';
            app.UIAxes5.FontUnits = 'normalized';
            app.UIAxes5.FontSize = 0.08;
            app.UIAxes5.FontWeight = 'bold';
            app.UIAxes5.Box = 'on';
            app.UIAxes5.XMinorTick = 'on';
            app.UIAxes5.YMinorTick = 'on';
            app.UIAxes5.XGrid = 'on';
            app.UIAxes5.XMinorGrid = 'on';
            app.UIAxes5.YGrid = 'on';
            app.UIAxes5.YMinorGrid = 'on';
            app.UIAxes5.Position = [23 115 818 204];

            % Create ResultShowTextArea
            app.ResultShowTextArea = uitextarea(app.DataControlForFilteringPanel);
            app.ResultShowTextArea.Editable = 'off';
            app.ResultShowTextArea.FontName = 'Tw Cen MT';
            app.ResultShowTextArea.FontSize = 14;
            app.ResultShowTextArea.FontWeight = 'bold';
            app.ResultShowTextArea.FontAngle = 'italic';
            app.ResultShowTextArea.Position = [62 23 768 85];

            % Create OptionPanel
            app.OptionPanel = uipanel(app.ButterworthTab);
            app.OptionPanel.Title = 'Option';
            app.OptionPanel.FontWeight = 'bold';
            app.OptionPanel.Position = [863 3 334 553];

            % Create FilterTypeDropDown
            app.FilterTypeDropDown = uidropdown(app.OptionPanel);
            app.FilterTypeDropDown.Items = {'Low Path', 'High Path', 'Band Path', 'Band Stop'};
            app.FilterTypeDropDown.ValueChangedFcn = createCallbackFcn(app, @FilterTypeDropDownValueChanged, true);
            app.FilterTypeDropDown.Position = [23 438 264 22];
            app.FilterTypeDropDown.Value = 'Low Path';

            % Create SamplingFrequencySpinner
            app.SamplingFrequencySpinner = uispinner(app.OptionPanel);
            app.SamplingFrequencySpinner.Limits = [0 Inf];
            app.SamplingFrequencySpinner.RoundFractionalValues = 'on';
            app.SamplingFrequencySpinner.ValueChangedFcn = createCallbackFcn(app, @SamplingFrequencySpinnerValueChanged, true);
            app.SamplingFrequencySpinner.HorizontalAlignment = 'center';
            app.SamplingFrequencySpinner.Position = [166 407 121 22];
            app.SamplingFrequencySpinner.Value = 100;

            % Create SamplingFrequencySpinnerLabel
            app.SamplingFrequencySpinnerLabel = uilabel(app.OptionPanel);
            app.SamplingFrequencySpinnerLabel.Position = [23 408 125 22];
            app.SamplingFrequencySpinnerLabel.Text = 'Frequency Sample';

            % Create FilterOrderKnob
            app.FilterOrderKnob = uiknob(app.OptionPanel, 'discrete');
            app.FilterOrderKnob.Items = {'2', '3', '4', '5', '6', '7', '8'};
            app.FilterOrderKnob.FontWeight = 'bold';
            app.FilterOrderKnob.FontColor = [1 0 0];
            app.FilterOrderKnob.Position = [215 318 53 53];
            app.FilterOrderKnob.Value = '5';

            % Create CuttOffKnob
            app.CuttOffKnob = uiknob(app.OptionPanel, 'continuous');
            app.CuttOffKnob.MajorTicks = [0 20 40 60 80 100];
            app.CuttOffKnob.MajorTickLabels = {'0', '20', '40', '60', '80', '100'};
            app.CuttOffKnob.FontWeight = 'bold';
            app.CuttOffKnob.FontColor = [0 0 1];
            app.CuttOffKnob.Position = [220 224 50 50];
            app.CuttOffKnob.Value = 5;

            % Create LowLimitFrequencyKnob
            app.LowLimitFrequencyKnob = uiknob(app.OptionPanel, 'continuous');
            app.LowLimitFrequencyKnob.Enable = 'off';
            app.LowLimitFrequencyKnob.FontWeight = 'bold';
            app.LowLimitFrequencyKnob.FontColor = [0 0 1];
            app.LowLimitFrequencyKnob.Position = [217 127 50 50];
            app.LowLimitFrequencyKnob.Value = 2;

            % Create HighLimitFrequencyKnob
            app.HighLimitFrequencyKnob = uiknob(app.OptionPanel, 'continuous');
            app.HighLimitFrequencyKnob.Enable = 'off';
            app.HighLimitFrequencyKnob.FontWeight = 'bold';
            app.HighLimitFrequencyKnob.FontColor = [0 0 1];
            app.HighLimitFrequencyKnob.Position = [222 43 45 45];
            app.HighLimitFrequencyKnob.Value = 20;

            % Create RunFilteringButton
            app.RunFilteringButton = uibutton(app.OptionPanel, 'push');
            app.RunFilteringButton.ButtonPushedFcn = createCallbackFcn(app, @RunFilteringButtonPushed, true);
            app.RunFilteringButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.RunFilteringButton.BackgroundColor = [0.902 0.902 0.902];
            app.RunFilteringButton.Position = [23 499 264 23];
            app.RunFilteringButton.Text = 'Run Filtering';

            % Create FilterTypeDropDown_2
            app.FilterTypeDropDown_2 = uidropdown(app.OptionPanel);
            app.FilterTypeDropDown_2.Items = {};
            app.FilterTypeDropDown_2.Position = [166 468 120 22];
            app.FilterTypeDropDown_2.Value = {};

            % Create SamplingFrequencySpinnerLabel_2
            app.SamplingFrequencySpinnerLabel_2 = uilabel(app.OptionPanel);
            app.SamplingFrequencySpinnerLabel_2.Position = [23 468 100 22];
            app.SamplingFrequencySpinnerLabel_2.Text = 'Selected Channel';

            % Create SamplingFrequencySpinnerLabel_3
            app.SamplingFrequencySpinnerLabel_3 = uilabel(app.OptionPanel);
            app.SamplingFrequencySpinnerLabel_3.FontWeight = 'bold';
            app.SamplingFrequencySpinnerLabel_3.Position = [23 333 125 22];
            app.SamplingFrequencySpinnerLabel_3.Text = 'Order';

            % Create SamplingFrequencySpinnerLabel_4
            app.SamplingFrequencySpinnerLabel_4 = uilabel(app.OptionPanel);
            app.SamplingFrequencySpinnerLabel_4.FontWeight = 'bold';
            app.SamplingFrequencySpinnerLabel_4.Position = [23 238 125 22];
            app.SamplingFrequencySpinnerLabel_4.Text = 'Cutt Off Frequency';

            % Create SamplingFrequencySpinnerLabel_5
            app.SamplingFrequencySpinnerLabel_5 = uilabel(app.OptionPanel);
            app.SamplingFrequencySpinnerLabel_5.FontWeight = 'bold';
            app.SamplingFrequencySpinnerLabel_5.Position = [23 141 125 22];
            app.SamplingFrequencySpinnerLabel_5.Text = 'Up Limit Cutoff';

            % Create SamplingFrequencySpinnerLabel_6
            app.SamplingFrequencySpinnerLabel_6 = uilabel(app.OptionPanel);
            app.SamplingFrequencySpinnerLabel_6.FontWeight = 'bold';
            app.SamplingFrequencySpinnerLabel_6.Position = [23 50 125 22];
            app.SamplingFrequencySpinnerLabel_6.Text = 'Down Limit Cutoff';

            % Create PreProcessTab
            app.PreProcessTab = uitab(app.TabGroup2);
            app.PreProcessTab.Title = 'Pre-Process';

            % Create TabGroup13
            app.TabGroup13 = uitabgroup(app.PreProcessTab);
            app.TabGroup13.TabLocation = 'left';
            app.TabGroup13.Position = [0 2 1287 556];

            % Create ProcessTab
            app.ProcessTab = uitab(app.TabGroup13);
            app.ProcessTab.Title = 'Process';

            % Create Tree4
            app.Tree4 = uitree(app.ProcessTab);
            app.Tree4.SelectionChangedFcn = createCallbackFcn(app, @Tree4SelectionChanged, true);
            app.Tree4.Position = [3 370 150 182];

            % Create ChannelDataNode
            app.ChannelDataNode = uitreenode(app.Tree4);
            app.ChannelDataNode.Text = 'Channel Data';

            % Create Panel_7
            app.Panel_7 = uipanel(app.ProcessTab);
            app.Panel_7.Position = [163 3 1051 549];

            % Create TabGroup14
            app.TabGroup14 = uitabgroup(app.Panel_7);
            app.TabGroup14.Position = [1 0 1050 551];

            % Create FiguresDataTab
            app.FiguresDataTab = uitab(app.TabGroup14);
            app.FiguresDataTab.Title = 'Figures Data';

            % Create DropDown_4
            app.DropDown_4 = uidropdown(app.FiguresDataTab);
            app.DropDown_4.Items = {'Clear', 'Sace Data', 'Option 3', 'Option 4'};
            app.DropDown_4.Position = [164 465 100 22];
            app.DropDown_4.Value = 'Clear';

            % Create ClearButton_3
            app.ClearButton_3 = uibutton(app.FiguresDataTab, 'push');
            app.ClearButton_3.Position = [147 429 100 22];
            app.ClearButton_3.Text = 'Clear';

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.FiguresDataTab);
            title(app.UIAxes4, '')
            xlabel(app.UIAxes4, 'Time (s)')
            ylabel(app.UIAxes4, 'Acceleration(m/s^2)')
            app.UIAxes4.PlotBoxAspectRatio = [9.49494949494949 1 1];
            app.UIAxes4.FontName = 'Times New Roman';
            app.UIAxes4.FontUnits = 'normalized';
            app.UIAxes4.FontSize = 0.08;
            app.UIAxes4.FontWeight = 'bold';
            app.UIAxes4.Box = 'on';
            app.UIAxes4.XMinorTick = 'on';
            app.UIAxes4.YMinorTick = 'on';
            app.UIAxes4.XGrid = 'on';
            app.UIAxes4.XMinorGrid = 'on';
            app.UIAxes4.YGrid = 'on';
            app.UIAxes4.YMinorGrid = 'on';
            app.UIAxes4.Position = [9 346 999 160];

            % Create UIAxes4_2
            app.UIAxes4_2 = uiaxes(app.FiguresDataTab);
            title(app.UIAxes4_2, '')
            xlabel(app.UIAxes4_2, 'Time (s)')
            ylabel(app.UIAxes4_2, 'Velocity(m/s)')
            app.UIAxes4_2.PlotBoxAspectRatio = [8.17391304347826 1 1];
            app.UIAxes4_2.FontName = 'Times New Roman';
            app.UIAxes4_2.FontUnits = 'normalized';
            app.UIAxes4_2.FontSize = 0.075;
            app.UIAxes4_2.FontWeight = 'bold';
            app.UIAxes4_2.ClippingStyle = 'rectangle';
            app.UIAxes4_2.Box = 'on';
            app.UIAxes4_2.BoxStyle = 'full';
            app.UIAxes4_2.XMinorTick = 'on';
            app.UIAxes4_2.YMinorTick = 'on';
            app.UIAxes4_2.XGrid = 'on';
            app.UIAxes4_2.XMinorGrid = 'on';
            app.UIAxes4_2.YGrid = 'on';
            app.UIAxes4_2.YMinorGrid = 'on';
            app.UIAxes4_2.Position = [9 163 999 171];

            % Create UIAxes4_3
            app.UIAxes4_3 = uiaxes(app.FiguresDataTab);
            title(app.UIAxes4_3, '')
            xlabel(app.UIAxes4_3, 'Time (s)')
            ylabel(app.UIAxes4_3, 'Displacment(m)')
            app.UIAxes4_3.PlotBoxAspectRatio = [10.8275862068966 1 1];
            app.UIAxes4_3.FontName = 'Times New Roman';
            app.UIAxes4_3.FontUnits = 'normalized';
            app.UIAxes4_3.FontSize = 0.08;
            app.UIAxes4_3.FontWeight = 'bold';
            app.UIAxes4_3.Box = 'on';
            app.UIAxes4_3.XMinorTick = 'on';
            app.UIAxes4_3.YMinorTick = 'on';
            app.UIAxes4_3.XGrid = 'on';
            app.UIAxes4_3.XMinorGrid = 'on';
            app.UIAxes4_3.YGrid = 'on';
            app.UIAxes4_3.YMinorGrid = 'on';
            app.UIAxes4_3.Position = [9 1 999 155];

            % Create TableData
            app.TableData = uitab(app.TabGroup14);
            app.TableData.Title = 'Table Data';

            % Create UITable4
            app.UITable4 = uitable(app.TableData);
            app.UITable4.ColumnName = '';
            app.UITable4.RowName = {};
            app.UITable4.Position = [18 19 844 497];

            % Create DataTypeDropDown
            app.DataTypeDropDown = uidropdown(app.TableData);
            app.DataTypeDropDown.Items = {'Channel Data', 'Filtered data', 'Displacment Data', 'Velocity Data'};
            app.DataTypeDropDown.ValueChangedFcn = createCallbackFcn(app, @DataTypeDropDownValueChanged, true);
            app.DataTypeDropDown.Position = [873 491 169 22];
            app.DataTypeDropDown.Value = 'Channel Data';

            % Create TextArea_9
            app.TextArea_9 = uitextarea(app.TableData);
            app.TextArea_9.FontName = 'Tw Cen MT';
            app.TextArea_9.FontSize = 14;
            app.TextArea_9.FontWeight = 'bold';
            app.TextArea_9.FontAngle = 'italic';
            app.TextArea_9.Position = [873 19 169 375];

            % Create SaveTableButton
            app.SaveTableButton = uibutton(app.TableData, 'push');
            app.SaveTableButton.ButtonPushedFcn = createCallbackFcn(app, @SaveTableButtonPushed, true);
            app.SaveTableButton.Icon = 'iconfinder_138_floppy_diskette_save_4308517.png';
            app.SaveTableButton.IconAlignment = 'bottom';
            app.SaveTableButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SaveTableButton.Tooltip = {'Save Table Data'};
            app.SaveTableButton.Position = [873 406 169 66];
            app.SaveTableButton.Text = 'Save Table';

            % Create Panel_8
            app.Panel_8 = uipanel(app.ProcessTab);
            app.Panel_8.Scrollable = 'on';
            app.Panel_8.Position = [1 3 152 360];

            % Create FilterDropDownLabel
            app.FilterDropDownLabel = uilabel(app.Panel_8);
            app.FilterDropDownLabel.Position = [9 326 65 22];
            app.FilterDropDownLabel.Text = 'Filter';

            % Create FilterDropDown
            app.FilterDropDown = uidropdown(app.Panel_8);
            app.FilterDropDown.Items = {'Low Path', 'High Path', 'Band Stop', 'Band Path'};
            app.FilterDropDown.ValueChangedFcn = createCallbackFcn(app, @FilterDropDownValueChanged, true);
            app.FilterDropDown.Position = [54 326 86 22];
            app.FilterDropDown.Value = 'Low Path';

            % Create OrderSpinnerLabel
            app.OrderSpinnerLabel = uilabel(app.Panel_8);
            app.OrderSpinnerLabel.Position = [10 298 46 22];
            app.OrderSpinnerLabel.Text = 'Order';

            % Create OrderSpinner
            app.OrderSpinner = uispinner(app.Panel_8);
            app.OrderSpinner.Limits = [0 10];
            app.OrderSpinner.HorizontalAlignment = 'center';
            app.OrderSpinner.Position = [62 298 79 22];
            app.OrderSpinner.Value = 2;

            % Create CutOffSpinnerLabel
            app.CutOffSpinnerLabel = uilabel(app.Panel_8);
            app.CutOffSpinnerLabel.Position = [9 271 46 22];
            app.CutOffSpinnerLabel.Text = 'Cut Off';

            % Create CutOffSpinner
            app.CutOffSpinner = uispinner(app.Panel_8);
            app.CutOffSpinner.Limits = [0 Inf];
            app.CutOffSpinner.HorizontalAlignment = 'center';
            app.CutOffSpinner.Position = [62 271 79 22];
            app.CutOffSpinner.Value = 10;

            % Create CutOffSpinner_2
            app.CutOffSpinner_2 = uispinner(app.Panel_8);
            app.CutOffSpinner_2.Limits = [0 Inf];
            app.CutOffSpinner_2.HorizontalAlignment = 'left';
            app.CutOffSpinner_2.Enable = 'off';
            app.CutOffSpinner_2.Position = [9 245 65 22];

            % Create CutOffSpinner_3
            app.CutOffSpinner_3 = uispinner(app.Panel_8);
            app.CutOffSpinner_3.Limits = [0 Inf];
            app.CutOffSpinner_3.HorizontalAlignment = 'left';
            app.CutOffSpinner_3.Enable = 'off';
            app.CutOffSpinner_3.Position = [75 245 65 22];

            % Create BaseLineCorrectionCheckBox
            app.BaseLineCorrectionCheckBox = uicheckbox(app.Panel_8);
            app.BaseLineCorrectionCheckBox.ValueChangedFcn = createCallbackFcn(app, @BaseLineCorrectionCheckBoxValueChanged, true);
            app.BaseLineCorrectionCheckBox.Text = 'Base Line Correction';
            app.BaseLineCorrectionCheckBox.Position = [7 186 134 22];

            % Create applyProcessButton
            app.applyProcessButton = uibutton(app.Panel_8, 'push');
            app.applyProcessButton.ButtonPushedFcn = createCallbackFcn(app, @applyProcessButtonPushed, true);
            app.applyProcessButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.applyProcessButton.BackgroundColor = [0.902 0.902 0.902];
            app.applyProcessButton.FontWeight = 'bold';
            app.applyProcessButton.Position = [10 15 128 22];
            app.applyProcessButton.Text = 'apply Process';

            % Create SamplingFrqSpinnerLabel
            app.SamplingFrqSpinnerLabel = uilabel(app.Panel_8);
            app.SamplingFrqSpinnerLabel.FontName = 'Times New Roman';
            app.SamplingFrqSpinnerLabel.FontWeight = 'bold';
            app.SamplingFrqSpinnerLabel.FontColor = [0 0 1];
            app.SamplingFrqSpinnerLabel.Position = [8 217 76 22];
            app.SamplingFrqSpinnerLabel.Text = 'Sampling Frq';

            % Create SamplingFrqSpinner
            app.SamplingFrqSpinner = uispinner(app.Panel_8);
            app.SamplingFrqSpinner.Limits = [0 Inf];
            app.SamplingFrqSpinner.RoundFractionalValues = 'on';
            app.SamplingFrqSpinner.HorizontalAlignment = 'center';
            app.SamplingFrqSpinner.FontName = 'Times New Roman';
            app.SamplingFrqSpinner.FontWeight = 'bold';
            app.SamplingFrqSpinner.FontColor = [0 0 1];
            app.SamplingFrqSpinner.Position = [83 217 57 22];
            app.SamplingFrqSpinner.Value = 100;

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.Panel_8);
            app.ButtonGroup.Visible = 'off';
            app.ButtonGroup.Position = [11 46 124 137];

            % Create enpolButton1
            app.enpolButton1 = uiradiobutton(app.ButtonGroup);
            app.enpolButton1.Text = '1nd pol';
            app.enpolButton1.Position = [11 110 61 22];
            app.enpolButton1.Value = true;

            % Create enpolButton2
            app.enpolButton2 = uiradiobutton(app.ButtonGroup);
            app.enpolButton2.Text = '2nd pol';
            app.enpolButton2.Position = [11 88 65 22];

            % Create enpolButton3
            app.enpolButton3 = uiradiobutton(app.ButtonGroup);
            app.enpolButton3.Text = '3nd pol';
            app.enpolButton3.Position = [11 66 61 22];

            % Create OrderSpinnerLabel_2
            app.OrderSpinnerLabel_2 = uilabel(app.ButtonGroup);
            app.OrderSpinnerLabel_2.Position = [14 40 41 22];
            app.OrderSpinnerLabel_2.Text = 'Order';

            % Create OrderSpinner_2
            app.OrderSpinner_2 = uispinner(app.ButtonGroup);
            app.OrderSpinner_2.Limits = [0 10];
            app.OrderSpinner_2.HorizontalAlignment = 'left';
            app.OrderSpinner_2.Position = [71 43 47 22];
            app.OrderSpinner_2.Value = 2;

            % Create CutOffSpinnerLabel_2
            app.CutOffSpinnerLabel_2 = uilabel(app.ButtonGroup);
            app.CutOffSpinnerLabel_2.Position = [13 13 40 22];
            app.CutOffSpinnerLabel_2.Text = 'Cut Off';

            % Create CutOffSpinner_4
            app.CutOffSpinner_4 = uispinner(app.ButtonGroup);
            app.CutOffSpinner_4.Limits = [0 Inf];
            app.CutOffSpinner_4.HorizontalAlignment = 'left';
            app.CutOffSpinner_4.Position = [70 17 48 22];
            app.CutOffSpinner_4.Value = 10;

            % Create SystemIdentificationTab
            app.SystemIdentificationTab = uitab(app.TabGroup2);
            app.SystemIdentificationTab.Title = 'System Identification';

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.SystemIdentificationTab);
            app.TabGroup3.TabLocation = 'left';
            app.TabGroup3.Position = [1 2 1288 556];

            % Create PPTab
            app.PPTab = uitab(app.TabGroup3);
            app.PPTab.Title = 'PP';

            % Create Panel_3
            app.Panel_3 = uipanel(app.PPTab);
            app.Panel_3.BorderType = 'none';
            app.Panel_3.Position = [9 12 299 541];

            % Create TabGroup11
            app.TabGroup11 = uitabgroup(app.Panel_3);
            app.TabGroup11.Position = [1 1 299 537];

            % Create SettingsTab
            app.SettingsTab = uitab(app.TabGroup11);
            app.SettingsTab.Title = 'Settings';

            % Create SampligFrequencyEditFieldLabel
            app.SampligFrequencyEditFieldLabel = uilabel(app.SettingsTab);
            app.SampligFrequencyEditFieldLabel.HorizontalAlignment = 'right';
            app.SampligFrequencyEditFieldLabel.Position = [9 475 109 22];
            app.SampligFrequencyEditFieldLabel.Text = 'Samplig Frequency';

            % Create SampligFrequencyEditField
            app.SampligFrequencyEditField = uieditfield(app.SettingsTab, 'numeric');
            app.SampligFrequencyEditField.Position = [168 475 117 22];

            % Create WindiwLengthEditFieldLabel
            app.WindiwLengthEditFieldLabel = uilabel(app.SettingsTab);
            app.WindiwLengthEditFieldLabel.HorizontalAlignment = 'right';
            app.WindiwLengthEditFieldLabel.Position = [9 446 84 22];
            app.WindiwLengthEditFieldLabel.Text = 'Windiw Length';

            % Create WindiwLengthEditField
            app.WindiwLengthEditField = uieditfield(app.SettingsTab, 'numeric');
            app.WindiwLengthEditField.Position = [168 446 117 22];

            % Create OverLapEditFieldLabel
            app.OverLapEditFieldLabel = uilabel(app.SettingsTab);
            app.OverLapEditFieldLabel.HorizontalAlignment = 'right';
            app.OverLapEditFieldLabel.Position = [8 414 69 22];
            app.OverLapEditFieldLabel.Text = 'Over Lap %';

            % Create OverLapEditField
            app.OverLapEditField = uieditfield(app.SettingsTab, 'numeric');
            app.OverLapEditField.Position = [168 414 117 22];

            % Create ResolutionEditFieldLabel
            app.ResolutionEditFieldLabel = uilabel(app.SettingsTab);
            app.ResolutionEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ResolutionEditFieldLabel.HorizontalAlignment = 'right';
            app.ResolutionEditFieldLabel.Position = [113 383 66 22];
            app.ResolutionEditFieldLabel.Text = 'Resolution ';

            % Create ResolutionEditField
            app.ResolutionEditField = uieditfield(app.SettingsTab, 'numeric');
            app.ResolutionEditField.HorizontalAlignment = 'center';
            app.ResolutionEditField.FontSize = 16;
            app.ResolutionEditField.FontWeight = 'bold';
            app.ResolutionEditField.FontColor = [1 0.4118 0.1608];
            app.ResolutionEditField.BackgroundColor = [0.902 0.902 0.902];
            app.ResolutionEditField.Position = [13 362 272 22];

            % Create windowTypeButtonGroup
            app.windowTypeButtonGroup = uibuttongroup(app.SettingsTab);
            app.windowTypeButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @windowTypeButtonGroupSelectionChanged, true);
            app.windowTypeButtonGroup.Title = 'window Type';
            app.windowTypeButtonGroup.Position = [11 177 274 113];

            % Create HammingButton
            app.HammingButton = uiradiobutton(app.windowTypeButtonGroup);
            app.HammingButton.Text = 'Hamming';
            app.HammingButton.Position = [11 67 73 22];
            app.HammingButton.Value = true;

            % Create HaningButton
            app.HaningButton = uiradiobutton(app.windowTypeButtonGroup);
            app.HaningButton.Text = 'Haning';
            app.HaningButton.Position = [11 45 65 22];

            % Create RectangularButton
            app.RectangularButton = uiradiobutton(app.windowTypeButtonGroup);
            app.RectangularButton.Text = 'Rectangular';
            app.RectangularButton.Position = [11 23 87 22];

            % Create FrequencyRangeButtonGroup
            app.FrequencyRangeButtonGroup = uibuttongroup(app.SettingsTab);
            app.FrequencyRangeButtonGroup.Title = 'Frequency Range';
            app.FrequencyRangeButtonGroup.Position = [11 66 274 104];

            % Create FromEditFieldLabel
            app.FromEditFieldLabel = uilabel(app.FrequencyRangeButtonGroup);
            app.FromEditFieldLabel.Position = [11 39 33 22];
            app.FromEditFieldLabel.Text = 'From';

            % Create FromEditField
            app.FromEditField = uieditfield(app.FrequencyRangeButtonGroup, 'numeric');
            app.FromEditField.Position = [157 39 101 22];

            % Create ToHzEditFieldLabel
            app.ToHzEditFieldLabel = uilabel(app.FrequencyRangeButtonGroup);
            app.ToHzEditFieldLabel.Position = [11 8 44 22];
            app.ToHzEditFieldLabel.Text = 'To (Hz)';

            % Create ToHzEditField
            app.ToHzEditField = uieditfield(app.FrequencyRangeButtonGroup, 'numeric');
            app.ToHzEditField.Position = [157 8 101 22];

            % Create RunPeakPickingButton
            app.RunPeakPickingButton = uibutton(app.SettingsTab, 'push');
            app.RunPeakPickingButton.ButtonPushedFcn = createCallbackFcn(app, @RunPeakPickingButtonPushed, true);
            app.RunPeakPickingButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.RunPeakPickingButton.Position = [13 12 274 22];
            app.RunPeakPickingButton.Text = 'Run Peak Picking';

            % Create FrquecciesIdentificationMethodButtonGroup
            app.FrquecciesIdentificationMethodButtonGroup = uibuttongroup(app.SettingsTab);
            app.FrquecciesIdentificationMethodButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @FrquecciesIdentificationMethodButtonGroupSelectionChanged, true);
            app.FrquecciesIdentificationMethodButtonGroup.Title = 'Frqueccies Identification Method';
            app.FrquecciesIdentificationMethodButtonGroup.Position = [13 297 273 53];

            % Create AutoButton
            app.AutoButton = uiradiobutton(app.FrquecciesIdentificationMethodButtonGroup);
            app.AutoButton.Text = 'Auto ';
            app.AutoButton.Position = [11 7 50 22];
            app.AutoButton.Value = true;

            % Create ManualButton
            app.ManualButton = uiradiobutton(app.FrquecciesIdentificationMethodButtonGroup);
            app.ManualButton.Text = 'Manual';
            app.ManualButton.Position = [159 7 65 22];

            % Create AutoPeakTab
            app.AutoPeakTab = uitab(app.TabGroup11);
            app.AutoPeakTab.Title = 'Auto Peak';

            % Create FrequenciesListBoxLabel_2
            app.FrequenciesListBoxLabel_2 = uilabel(app.AutoPeakTab);
            app.FrequenciesListBoxLabel_2.HorizontalAlignment = 'right';
            app.FrequenciesListBoxLabel_2.Position = [9 476 72 22];
            app.FrequenciesListBoxLabel_2.Text = 'Frequencies';

            % Create ListBox_2
            app.ListBox_2 = uilistbox(app.AutoPeakTab);
            app.ListBox_2.Items = {};
            app.ListBox_2.Position = [93 171 191 327];
            app.ListBox_2.Value = {};

            % Create MinPeakDistanceEditField_3Label
            app.MinPeakDistanceEditField_3Label = uilabel(app.AutoPeakTab);
            app.MinPeakDistanceEditField_3Label.HorizontalAlignment = 'right';
            app.MinPeakDistanceEditField_3Label.Position = [16 121 99 22];
            app.MinPeakDistanceEditField_3Label.Text = 'MinPeakDistance';

            % Create MinPeakDistanceEditField_3
            app.MinPeakDistanceEditField_3 = uieditfield(app.AutoPeakTab, 'numeric');
            app.MinPeakDistanceEditField_3.Position = [182 121 102 22];

            % Create MinPeakHeightEditField_2Label
            app.MinPeakHeightEditField_2Label = uilabel(app.AutoPeakTab);
            app.MinPeakHeightEditField_2Label.HorizontalAlignment = 'right';
            app.MinPeakHeightEditField_2Label.Position = [16 88 87 22];
            app.MinPeakHeightEditField_2Label.Text = 'MinPeakHeight';

            % Create MinPeakHeightEditField_2
            app.MinPeakHeightEditField_2 = uieditfield(app.AutoPeakTab, 'numeric');
            app.MinPeakHeightEditField_2.Position = [182 88 102 22];

            % Create AddButton_2
            app.AddButton_2 = uibutton(app.AutoPeakTab, 'push');
            app.AddButton_2.Position = [9 437 72 22];
            app.AddButton_2.Text = 'Add (+)';

            % Create RemoveButton
            app.RemoveButton = uibutton(app.AutoPeakTab, 'push');
            app.RemoveButton.Position = [9 405 73 22];
            app.RemoveButton.Text = 'Remove (-)';

            % Create FindPeaksandAddButton
            app.FindPeaksandAddButton = uibutton(app.AutoPeakTab, 'push');
            app.FindPeaksandAddButton.ButtonPushedFcn = createCallbackFcn(app, @FindPeaksandAddButtonPushed, true);
            app.FindPeaksandAddButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.FindPeaksandAddButton.Position = [9 33 275 22];
            app.FindPeaksandAddButton.Text = 'Find Peaks and Add';

            % Create ManualFrequencyTab
            app.ManualFrequencyTab = uitab(app.TabGroup11);
            app.ManualFrequencyTab.Title = 'Manual Frequency';

            % Create modenumberDropDownLabel_2
            app.modenumberDropDownLabel_2 = uilabel(app.ManualFrequencyTab);
            app.modenumberDropDownLabel_2.HorizontalAlignment = 'right';
            app.modenumberDropDownLabel_2.Position = [10 465 80 22];
            app.modenumberDropDownLabel_2.Text = 'mode number';

            % Create modenumberDropDown_2
            app.modenumberDropDown_2 = uidropdown(app.ManualFrequencyTab);
            app.modenumberDropDown_2.Items = {'1 mode', '2 mode', '3 mode', '4 mode', '5 mode', '6 mode', '7 mode', '8 mode', '9 mode', '10 mode'};
            app.modenumberDropDown_2.ValueChangedFcn = createCallbackFcn(app, @modenumberDropDown_2ValueChanged, true);
            app.modenumberDropDown_2.Position = [105 465 180 22];
            app.modenumberDropDown_2.Value = '1 mode';

            % Create mode1EditFieldLabel_2
            app.mode1EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode1EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode1EditFieldLabel_2.Position = [18 429 49 22];
            app.mode1EditFieldLabel_2.Text = 'mode  1';

            % Create mode1EditField_2
            app.mode1EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode1EditField_2.Position = [82 429 203 22];

            % Create mode2EditFieldLabel_2
            app.mode2EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode2EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode2EditFieldLabel_2.Position = [18 395 49 22];
            app.mode2EditFieldLabel_2.Text = 'mode  2';

            % Create mode2EditField_2
            app.mode2EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode2EditField_2.Enable = 'off';
            app.mode2EditField_2.Position = [82 395 203 22];

            % Create mode3Label_3
            app.mode3Label_3 = uilabel(app.ManualFrequencyTab);
            app.mode3Label_3.HorizontalAlignment = 'right';
            app.mode3Label_3.Position = [18 361 49 22];
            app.mode3Label_3.Text = 'mode  3';

            % Create mode3EditField_2
            app.mode3EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode3EditField_2.Enable = 'off';
            app.mode3EditField_2.Position = [82 361 203 22];

            % Create mode4EditFieldLabel_2
            app.mode4EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode4EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode4EditFieldLabel_2.Position = [18 327 49 22];
            app.mode4EditFieldLabel_2.Text = 'mode  4';

            % Create mode4EditField_2
            app.mode4EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode4EditField_2.Enable = 'off';
            app.mode4EditField_2.Position = [82 327 203 22];

            % Create mode5EditFieldLabel_2
            app.mode5EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode5EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode5EditFieldLabel_2.Position = [18 293 49 22];
            app.mode5EditFieldLabel_2.Text = 'mode  5';

            % Create mode5EditField_2
            app.mode5EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode5EditField_2.Enable = 'off';
            app.mode5EditField_2.Position = [82 293 203 22];

            % Create mode7EditFieldLabel_2
            app.mode7EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode7EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode7EditFieldLabel_2.Position = [18 225 49 22];
            app.mode7EditFieldLabel_2.Text = 'mode  7';

            % Create mode7EditField_2
            app.mode7EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode7EditField_2.Enable = 'off';
            app.mode7EditField_2.Position = [82 225 203 22];

            % Create mode8EditFieldLabel_2
            app.mode8EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode8EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode8EditFieldLabel_2.Position = [18 191 49 22];
            app.mode8EditFieldLabel_2.Text = 'mode  8';

            % Create mode8EditField_2
            app.mode8EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode8EditField_2.Enable = 'off';
            app.mode8EditField_2.Position = [82 191 203 22];

            % Create mode9EditFieldLabel_2
            app.mode9EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode9EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode9EditFieldLabel_2.Position = [18 157 49 22];
            app.mode9EditFieldLabel_2.Text = 'mode  9';

            % Create mode9EditField_2
            app.mode9EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode9EditField_2.Enable = 'off';
            app.mode9EditField_2.Position = [82 157 203 22];

            % Create mode10Label_3
            app.mode10Label_3 = uilabel(app.ManualFrequencyTab);
            app.mode10Label_3.HorizontalAlignment = 'right';
            app.mode10Label_3.Position = [15 123 52 22];
            app.mode10Label_3.Text = 'mode 10';

            % Create mode10EditField_2
            app.mode10EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode10EditField_2.Enable = 'off';
            app.mode10EditField_2.Position = [82 123 203 22];

            % Create mode6EditFieldLabel_2
            app.mode6EditFieldLabel_2 = uilabel(app.ManualFrequencyTab);
            app.mode6EditFieldLabel_2.HorizontalAlignment = 'right';
            app.mode6EditFieldLabel_2.Position = [16 261 49 22];
            app.mode6EditFieldLabel_2.Text = 'mode  6';

            % Create mode6EditField_2
            app.mode6EditField_2 = uieditfield(app.ManualFrequencyTab, 'numeric');
            app.mode6EditField_2.Enable = 'off';
            app.mode6EditField_2.Position = [80 261 205 22];

            % Create SaveFrequenciesButton_2
            app.SaveFrequenciesButton_2 = uibutton(app.ManualFrequencyTab, 'push');
            app.SaveFrequenciesButton_2.ButtonPushedFcn = createCallbackFcn(app, @SaveFrequenciesButton_2Pushed, true);
            app.SaveFrequenciesButton_2.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.SaveFrequenciesButton_2.Position = [18 47 267 22];
            app.SaveFrequenciesButton_2.Text = 'Save Frequencies';

            % Create Panel_5
            app.Panel_5 = uipanel(app.PPTab);
            app.Panel_5.Position = [326 12 875 143];

            % Create TextArea_8
            app.TextArea_8 = uitextarea(app.Panel_5);
            app.TextArea_8.FontName = 'Tw Cen MT';
            app.TextArea_8.FontSize = 14;
            app.TextArea_8.FontWeight = 'bold';
            app.TextArea_8.FontAngle = 'italic';
            app.TextArea_8.Position = [10 18 857 116];

            % Create TabGroup15
            app.TabGroup15 = uitabgroup(app.PPTab);
            app.TabGroup15.Position = [324 168 878 381];

            % Create DataPlotTab
            app.DataPlotTab = uitab(app.TabGroup15);
            app.DataPlotTab.Title = 'Data Plot';

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.DataPlotTab);
            title(app.UIAxes3, '')
            xlabel(app.UIAxes3, 'Frequency (Hz)')
            ylabel(app.UIAxes3, 'Amplitude')
            app.UIAxes3.FontName = 'Times New Roman';
            app.UIAxes3.FontUnits = 'normalized';
            app.UIAxes3.FontSize = 0.0457965325482499;
            app.UIAxes3.FontWeight = 'bold';
            app.UIAxes3.Box = 'on';
            app.UIAxes3.XGrid = 'on';
            app.UIAxes3.XMinorGrid = 'on';
            app.UIAxes3.YGrid = 'on';
            app.UIAxes3.YMinorGrid = 'on';
            app.UIAxes3.Position = [6 1 863 355];

            % Create ConditionMonitoringTab
            app.ConditionMonitoringTab = uitab(app.TabGroup2);
            app.ConditionMonitoringTab.Title = 'Condition Monitoring';

            % Create TabGroup4
            app.TabGroup4 = uitabgroup(app.ConditionMonitoringTab);
            app.TabGroup4.TabLocation = 'left';
            app.TabGroup4.Position = [-1 2 1290 556];

            % Create TendonsTab
            app.TendonsTab = uitab(app.TabGroup4);
            app.TendonsTab.Title = 'Tendons';

            % Create TabGroup7
            app.TabGroup7 = uitabgroup(app.TendonsTab);
            app.TabGroup7.TabLocation = 'bottom';
            app.TabGroup7.Position = [1 3 1214 554];

            % Create FrequencyTab
            app.FrequencyTab = uitab(app.TabGroup7);
            app.FrequencyTab.Title = 'Frequency';

            % Create FrequenciesPanel
            app.FrequenciesPanel = uipanel(app.FrequencyTab);
            app.FrequenciesPanel.Title = 'Frequencies';
            app.FrequenciesPanel.Position = [819 1 394 528];

            % Create mode1Label
            app.mode1Label = uilabel(app.FrequenciesPanel);
            app.mode1Label.FontSize = 14;
            app.mode1Label.Position = [38 463 52 23];
            app.mode1Label.Text = 'mode 1';

            % Create Label_2
            app.Label_2 = uilabel(app.FrequenciesPanel);
            app.Label_2.FontSize = 14;
            app.Label_2.Position = [103 463 84 23];
            app.Label_2.Text = '';

            % Create mode2Label
            app.mode2Label = uilabel(app.FrequenciesPanel);
            app.mode2Label.FontSize = 14;
            app.mode2Label.Position = [38 421 52 23];
            app.mode2Label.Text = 'mode 2';

            % Create Label_4
            app.Label_4 = uilabel(app.FrequenciesPanel);
            app.Label_4.FontSize = 14;
            app.Label_4.Position = [103 421 84 23];
            app.Label_4.Text = '';

            % Create mode3Label_2
            app.mode3Label_2 = uilabel(app.FrequenciesPanel);
            app.mode3Label_2.FontSize = 14;
            app.mode3Label_2.Position = [38 379 52 23];
            app.mode3Label_2.Text = 'mode 3';

            % Create Label_6
            app.Label_6 = uilabel(app.FrequenciesPanel);
            app.Label_6.FontSize = 14;
            app.Label_6.Position = [103 379 84 23];
            app.Label_6.Text = '';

            % Create mode4Label
            app.mode4Label = uilabel(app.FrequenciesPanel);
            app.mode4Label.FontSize = 14;
            app.mode4Label.Position = [38 337 52 23];
            app.mode4Label.Text = 'mode 4';

            % Create Label_8
            app.Label_8 = uilabel(app.FrequenciesPanel);
            app.Label_8.FontSize = 14;
            app.Label_8.Position = [103 337 84 23];
            app.Label_8.Text = '';

            % Create mode5Label
            app.mode5Label = uilabel(app.FrequenciesPanel);
            app.mode5Label.FontSize = 14;
            app.mode5Label.Position = [38 295 52 23];
            app.mode5Label.Text = 'mode 5';

            % Create Label_10
            app.Label_10 = uilabel(app.FrequenciesPanel);
            app.Label_10.FontSize = 14;
            app.Label_10.Position = [103 295 84 23];
            app.Label_10.Text = '';

            % Create mode6Label
            app.mode6Label = uilabel(app.FrequenciesPanel);
            app.mode6Label.FontSize = 14;
            app.mode6Label.Position = [38 253 52 23];
            app.mode6Label.Text = 'mode 6';

            % Create Label_12
            app.Label_12 = uilabel(app.FrequenciesPanel);
            app.Label_12.FontSize = 14;
            app.Label_12.Position = [103 253 84 23];
            app.Label_12.Text = '';

            % Create mode7Label
            app.mode7Label = uilabel(app.FrequenciesPanel);
            app.mode7Label.FontSize = 14;
            app.mode7Label.Position = [38 211 52 23];
            app.mode7Label.Text = 'mode 7';

            % Create Label_14
            app.Label_14 = uilabel(app.FrequenciesPanel);
            app.Label_14.FontSize = 14;
            app.Label_14.Position = [103 211 84 23];
            app.Label_14.Text = '';

            % Create mode8Label
            app.mode8Label = uilabel(app.FrequenciesPanel);
            app.mode8Label.FontSize = 14;
            app.mode8Label.Position = [38 169 52 23];
            app.mode8Label.Text = 'mode 8';

            % Create Label_16
            app.Label_16 = uilabel(app.FrequenciesPanel);
            app.Label_16.FontSize = 14;
            app.Label_16.Position = [103 169 84 23];
            app.Label_16.Text = '';

            % Create mode9Label
            app.mode9Label = uilabel(app.FrequenciesPanel);
            app.mode9Label.FontSize = 14;
            app.mode9Label.Position = [38 127 52 23];
            app.mode9Label.Text = 'mode 9';

            % Create Label_18
            app.Label_18 = uilabel(app.FrequenciesPanel);
            app.Label_18.FontSize = 14;
            app.Label_18.Position = [103 127 84 23];
            app.Label_18.Text = '';

            % Create mode10Label_2
            app.mode10Label_2 = uilabel(app.FrequenciesPanel);
            app.mode10Label_2.FontSize = 14;
            app.mode10Label_2.Position = [38 85 60 23];
            app.mode10Label_2.Text = 'mode 10';

            % Create Label_20
            app.Label_20 = uilabel(app.FrequenciesPanel);
            app.Label_20.FontSize = 14;
            app.Label_20.Position = [103 85 84 23];
            app.Label_20.Text = '';

            % Create mode11Label
            app.mode11Label = uilabel(app.FrequenciesPanel);
            app.mode11Label.FontSize = 14;
            app.mode11Label.Position = [207 463 59 23];
            app.mode11Label.Text = 'mode 11';

            % Create Label_22
            app.Label_22 = uilabel(app.FrequenciesPanel);
            app.Label_22.FontSize = 14;
            app.Label_22.Position = [272 463 98 23];
            app.Label_22.Text = '';

            % Create mode12Label
            app.mode12Label = uilabel(app.FrequenciesPanel);
            app.mode12Label.FontSize = 14;
            app.mode12Label.Position = [207 421 60 23];
            app.mode12Label.Text = 'mode 12';

            % Create Label_24
            app.Label_24 = uilabel(app.FrequenciesPanel);
            app.Label_24.FontSize = 14;
            app.Label_24.Position = [272 421 98 23];
            app.Label_24.Text = '';

            % Create mode13Label
            app.mode13Label = uilabel(app.FrequenciesPanel);
            app.mode13Label.FontSize = 14;
            app.mode13Label.Position = [207 379 60 23];
            app.mode13Label.Text = 'mode 13';

            % Create Label_26
            app.Label_26 = uilabel(app.FrequenciesPanel);
            app.Label_26.FontSize = 14;
            app.Label_26.Position = [272 379 98 23];
            app.Label_26.Text = '';

            % Create mode14Label
            app.mode14Label = uilabel(app.FrequenciesPanel);
            app.mode14Label.FontSize = 14;
            app.mode14Label.Position = [207 337 60 23];
            app.mode14Label.Text = 'mode 14';

            % Create Label_28
            app.Label_28 = uilabel(app.FrequenciesPanel);
            app.Label_28.FontSize = 14;
            app.Label_28.Position = [272 337 98 23];
            app.Label_28.Text = '';

            % Create mode15Label
            app.mode15Label = uilabel(app.FrequenciesPanel);
            app.mode15Label.FontSize = 14;
            app.mode15Label.Position = [207 295 60 23];
            app.mode15Label.Text = 'mode 15';

            % Create Label_30
            app.Label_30 = uilabel(app.FrequenciesPanel);
            app.Label_30.FontSize = 14;
            app.Label_30.Position = [272 295 98 23];
            app.Label_30.Text = '';

            % Create mode16Label
            app.mode16Label = uilabel(app.FrequenciesPanel);
            app.mode16Label.FontSize = 14;
            app.mode16Label.Position = [207 253 60 23];
            app.mode16Label.Text = 'mode 16';

            % Create Label_32
            app.Label_32 = uilabel(app.FrequenciesPanel);
            app.Label_32.FontSize = 14;
            app.Label_32.Position = [272 253 98 23];
            app.Label_32.Text = '';

            % Create mode17Label
            app.mode17Label = uilabel(app.FrequenciesPanel);
            app.mode17Label.FontSize = 14;
            app.mode17Label.Position = [207 211 60 23];
            app.mode17Label.Text = 'mode 17';

            % Create Label_34
            app.Label_34 = uilabel(app.FrequenciesPanel);
            app.Label_34.FontSize = 14;
            app.Label_34.Position = [272 211 98 23];
            app.Label_34.Text = '';

            % Create mode18Label
            app.mode18Label = uilabel(app.FrequenciesPanel);
            app.mode18Label.FontSize = 14;
            app.mode18Label.Position = [207 169 60 23];
            app.mode18Label.Text = 'mode 18';

            % Create Label_36
            app.Label_36 = uilabel(app.FrequenciesPanel);
            app.Label_36.FontSize = 14;
            app.Label_36.Position = [272 169 98 23];
            app.Label_36.Text = '';

            % Create mode19Label
            app.mode19Label = uilabel(app.FrequenciesPanel);
            app.mode19Label.FontSize = 14;
            app.mode19Label.Position = [207 127 60 23];
            app.mode19Label.Text = 'mode 19';

            % Create Label_38
            app.Label_38 = uilabel(app.FrequenciesPanel);
            app.Label_38.FontSize = 14;
            app.Label_38.Position = [272 127 98 23];
            app.Label_38.Text = '';

            % Create mode20Label
            app.mode20Label = uilabel(app.FrequenciesPanel);
            app.mode20Label.FontSize = 14;
            app.mode20Label.Position = [207 85 60 23];
            app.mode20Label.Text = 'mode 20';

            % Create Label_40
            app.Label_40 = uilabel(app.FrequenciesPanel);
            app.Label_40.FontSize = 14;
            app.Label_40.Position = [272 85 98 23];
            app.Label_40.Text = '';

            % Create InputDataPanel
            app.InputDataPanel = uipanel(app.FrequencyTab);
            app.InputDataPanel.Title = 'Input Data';
            app.InputDataPanel.Position = [240 1 580 528];

            % Create massEditFieldLabel
            app.massEditFieldLabel = uilabel(app.InputDataPanel);
            app.massEditFieldLabel.Position = [8 471 58 23];
            app.massEditFieldLabel.Text = 'mass';

            % Create massEditField
            app.massEditField = uieditfield(app.InputDataPanel, 'numeric');
            app.massEditField.HorizontalAlignment = 'center';
            app.massEditField.Position = [81 472 201 22];

            % Create lengthEditFieldLabel
            app.lengthEditFieldLabel = uilabel(app.InputDataPanel);
            app.lengthEditFieldLabel.Position = [8 438 58 23];
            app.lengthEditFieldLabel.Text = 'length';

            % Create lengthEditField
            app.lengthEditField = uieditfield(app.InputDataPanel, 'numeric');
            app.lengthEditField.HorizontalAlignment = 'center';
            app.lengthEditField.Position = [81 439 201 22];

            % Create TEditFieldLabel
            app.TEditFieldLabel = uilabel(app.InputDataPanel);
            app.TEditFieldLabel.Position = [8 388 58 23];
            app.TEditFieldLabel.Text = 'T';

            % Create TEditField
            app.TEditField = uieditfield(app.InputDataPanel, 'numeric');
            app.TEditField.HorizontalAlignment = 'left';
            app.TEditField.Position = [81 389 100 22];

            % Create TEditField_2
            app.TEditField_2 = uieditfield(app.InputDataPanel, 'numeric');
            app.TEditField_2.Position = [182 389 100 22];

            % Create MinLabel
            app.MinLabel = uilabel(app.InputDataPanel);
            app.MinLabel.Position = [114 409 25 22];
            app.MinLabel.Text = 'Min';

            % Create MaxLabel
            app.MaxLabel = uilabel(app.InputDataPanel);
            app.MaxLabel.Position = [220 409 28 22];
            app.MaxLabel.Text = 'Max';

            % Create EIEditField_3
            app.EIEditField_3 = uieditfield(app.InputDataPanel, 'numeric');
            app.EIEditField_3.Position = [184 327 100 22];

            % Create MinLabel_2
            app.MinLabel_2 = uilabel(app.InputDataPanel);
            app.MinLabel_2.Position = [116 347 25 22];
            app.MinLabel_2.Text = 'Min';

            % Create MaxLabel_2
            app.MaxLabel_2 = uilabel(app.InputDataPanel);
            app.MaxLabel_2.Position = [222 347 28 22];
            app.MaxLabel_2.Text = 'Max';

            % Create EIEditFieldLabel
            app.EIEditFieldLabel = uilabel(app.InputDataPanel);
            app.EIEditFieldLabel.Position = [10 326 58 23];
            app.EIEditFieldLabel.Text = 'EI';

            % Create EIEditField
            app.EIEditField = uieditfield(app.InputDataPanel, 'numeric');
            app.EIEditField.HorizontalAlignment = 'left';
            app.EIEditField.Position = [83 327 100 22];

            % Create TSliderLabel
            app.TSliderLabel = uilabel(app.InputDataPanel);
            app.TSliderLabel.Position = [28 41 42 22];
            app.TSliderLabel.Text = 'T';

            % Create TSlider
            app.TSlider = uislider(app.InputDataPanel);
            app.TSlider.Orientation = 'vertical';
            app.TSlider.ValueChangedFcn = createCallbackFcn(app, @TSliderValueChanged, true);
            app.TSlider.ValueChangingFcn = createCallbackFcn(app, @TSliderValueChanging, true);
            app.TSlider.Tooltip = {'Change The Tension VaLue'; ''};
            app.TSlider.Position = [91 50 3 231];

            % Create EISliderLabel
            app.EISliderLabel = uilabel(app.InputDataPanel);
            app.EISliderLabel.Position = [198 41 42 22];
            app.EISliderLabel.Text = 'EI';

            % Create EISlider
            app.EISlider = uislider(app.InputDataPanel);
            app.EISlider.Orientation = 'vertical';
            app.EISlider.ValueChangedFcn = createCallbackFcn(app, @EISliderValueChanged, true);
            app.EISlider.Tooltip = {'Change The EI value'};
            app.EISlider.Position = [261 50 3 231];

            % Create calcButton
            app.calcButton = uibutton(app.InputDataPanel, 'push');
            app.calcButton.ButtonPushedFcn = createCallbackFcn(app, @calcButtonPushed, true);
            app.calcButton.FontWeight = 'bold';
            app.calcButton.Position = [448 48 99 23];
            app.calcButton.Text = 'calc';

            % Create TensionValuekNLabel
            app.TensionValuekNLabel = uilabel(app.InputDataPanel);
            app.TensionValuekNLabel.FontWeight = 'bold';
            app.TensionValuekNLabel.Position = [438 470 117 23];
            app.TensionValuekNLabel.Text = 'Tension Value [kN]';

            % Create Label_42
            app.Label_42 = uilabel(app.InputDataPanel);
            app.Label_42.Position = [448 437 99 23];
            app.Label_42.Text = '';

            % Create EIValuekNm2Label
            app.EIValuekNm2Label = uilabel(app.InputDataPanel);
            app.EIValuekNm2Label.FontWeight = 'bold';
            app.EIValuekNm2Label.Position = [438 388 112 23];
            app.EIValuekNm2Label.Text = 'EI Value [kN-m^2]';

            % Create Label_43
            app.Label_43 = uilabel(app.InputDataPanel);
            app.Label_43.Position = [448 355 99 23];
            app.Label_43.Text = '';

            % Create Tree_2
            app.Tree_2 = uitree(app.FrequencyTab);
            app.Tree_2.SelectionChangedFcn = createCallbackFcn(app, @Tree_2SelectionChanged, true);
            app.Tree_2.Position = [0 1 240 528];

            % Create ElementsNode
            app.ElementsNode = uitreenode(app.Tree_2);
            app.ElementsNode.Text = 'Elements';

            % Create StringTheoryNode_2
            app.StringTheoryNode_2 = uitreenode(app.ElementsNode);
            app.StringTheoryNode_2.Icon = 'iconfinder_Remove_27874.png';
            app.StringTheoryNode_2.Text = 'String Theory';

            % Create HingedHingedBeamNode_2
            app.HingedHingedBeamNode_2 = uitreenode(app.ElementsNode);
            app.HingedHingedBeamNode_2.Icon = 'iconfinder_Remove_27874.png';
            app.HingedHingedBeamNode_2.Text = 'Hinged-Hinged Beam';

            % Create CalmpedClampedBeamNode
            app.CalmpedClampedBeamNode = uitreenode(app.ElementsNode);
            app.CalmpedClampedBeamNode.Icon = 'iconfinder_Remove_27874.png';
            app.CalmpedClampedBeamNode.Text = 'Calmped-Clamped Beam';

            % Create TensionEstimationLETab
            app.TensionEstimationLETab = uitab(app.TabGroup7);
            app.TensionEstimationLETab.Title = 'Tension Estimation LE';

            % Create UIregressionAxes
            app.UIregressionAxes = uiaxes(app.TensionEstimationLETab);
            title(app.UIregressionAxes, '')
            xlabel(app.UIregressionAxes, 'Mode Order')
            ylabel(app.UIregressionAxes, 'Frequency')
            app.UIregressionAxes.FontName = 'Times New Roman';
            app.UIregressionAxes.FontSize = 14;
            app.UIregressionAxes.FontWeight = 'bold';
            app.UIregressionAxes.GridColor = [0.15 0.15 0.15];
            app.UIregressionAxes.GridAlpha = 0.15;
            app.UIregressionAxes.MinorGridColor = [0.1 0.1 0.1];
            app.UIregressionAxes.MinorGridAlpha = 0.25;
            app.UIregressionAxes.Box = 'on';
            app.UIregressionAxes.XColor = [0.15 0.15 0.15];
            app.UIregressionAxes.YColor = [0.15 0.15 0.15];
            app.UIregressionAxes.ZColor = [0.15 0.15 0.15];
            app.UIregressionAxes.XGrid = 'on';
            app.UIregressionAxes.XMinorGrid = 'on';
            app.UIregressionAxes.YGrid = 'on';
            app.UIregressionAxes.YMinorGrid = 'on';
            app.UIregressionAxes.TitleFontWeight = 'normal';
            app.UIregressionAxes.Position = [242 268 964 261];

            % Create SettingsPanel
            app.SettingsPanel = uipanel(app.TensionEstimationLETab);
            app.SettingsPanel.Title = 'Settings';
            app.SettingsPanel.FontWeight = 'bold';
            app.SettingsPanel.Position = [241 1 972 260];

            % Create FxLabel
            app.FxLabel = uilabel(app.SettingsPanel);
            app.FxLabel.FontWeight = 'bold';
            app.FxLabel.Position = [14 179 41 22];
            app.FxLabel.Text = 'F(x) = ';

            % Create FxEditField
            app.FxEditField = uieditfield(app.SettingsPanel, 'text');
            app.FxEditField.Editable = 'off';
            app.FxEditField.HorizontalAlignment = 'center';
            app.FxEditField.FontName = 'Tw Cen MT';
            app.FxEditField.FontSize = 14;
            app.FxEditField.FontWeight = 'bold';
            app.FxEditField.FontAngle = 'italic';
            app.FxEditField.Position = [54 137 171 93];

            % Create strataEditFieldLabel
            app.strataEditFieldLabel = uilabel(app.SettingsPanel);
            app.strataEditFieldLabel.Position = [14 102 39 22];
            app.strataEditFieldLabel.Text = 'strat a';

            % Create strataEditField
            app.strataEditField = uieditfield(app.SettingsPanel, 'numeric');
            app.strataEditField.Position = [84 102 141 22];

            % Create stratbEditFieldLabel
            app.stratbEditFieldLabel = uilabel(app.SettingsPanel);
            app.stratbEditFieldLabel.Position = [14 65 39 22];
            app.stratbEditFieldLabel.Text = 'strat b';

            % Create stratbEditField
            app.stratbEditField = uieditfield(app.SettingsPanel, 'numeric');
            app.stratbEditField.Position = [84 65 141 22];

            % Create RunButton
            app.RunButton = uibutton(app.SettingsPanel, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunRegressionButtonPushed2, true);
            app.RunButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.RunButton.Position = [15 20 211 22];
            app.RunButton.Text = 'Run';

            % Create RobustDropDownLabel
            app.RobustDropDownLabel = uilabel(app.SettingsPanel);
            app.RobustDropDownLabel.Position = [257 208 44 22];
            app.RobustDropDownLabel.Text = 'Robust';

            % Create RobustDropDown
            app.RobustDropDown = uidropdown(app.SettingsPanel);
            app.RobustDropDown.Items = {'off', 'LAR', 'Bisquare'};
            app.RobustDropDown.Position = [361 208 110 22];
            app.RobustDropDown.Value = 'off';

            % Create algorithemDropDownLabel
            app.algorithemDropDownLabel = uilabel(app.SettingsPanel);
            app.algorithemDropDownLabel.Position = [257 168 62 22];
            app.algorithemDropDownLabel.Text = 'algorithem';

            % Create algorithemDropDown
            app.algorithemDropDown = uidropdown(app.SettingsPanel);
            app.algorithemDropDown.Items = {'Trust-Region', 'Levenberg-Marquardt'};
            app.algorithemDropDown.Position = [361 168 110 22];
            app.algorithemDropDown.Value = 'Trust-Region';

            % Create TensionkNLabel
            app.TensionkNLabel = uilabel(app.SettingsPanel);
            app.TensionkNLabel.HorizontalAlignment = 'center';
            app.TensionkNLabel.FontWeight = 'bold';
            app.TensionkNLabel.Position = [787 146 84 70];
            app.TensionkNLabel.Text = 'Tension [kN]';

            % Create Label_44
            app.Label_44 = uilabel(app.SettingsPanel);
            app.Label_44.HorizontalAlignment = 'center';
            app.Label_44.FontWeight = 'bold';
            app.Label_44.Position = [787 137 84 29];
            app.Label_44.Text = '';

            % Create EIkNm2Label
            app.EIkNm2Label = uilabel(app.SettingsPanel);
            app.EIkNm2Label.HorizontalAlignment = 'center';
            app.EIkNm2Label.FontWeight = 'bold';
            app.EIkNm2Label.Position = [789 82 80 70];
            app.EIkNm2Label.Text = 'EI [kN-m^2]';

            % Create Label_45
            app.Label_45 = uilabel(app.SettingsPanel);
            app.Label_45.HorizontalAlignment = 'center';
            app.Label_45.FontWeight = 'bold';
            app.Label_45.Position = [787 67 84 38];
            app.Label_45.Text = '';

            % Create mEditFieldLabel
            app.mEditFieldLabel = uilabel(app.SettingsPanel);
            app.mEditFieldLabel.Position = [257 102 25 22];
            app.mEditFieldLabel.Text = 'm';

            % Create mEditField
            app.mEditField = uieditfield(app.SettingsPanel, 'numeric');
            app.mEditField.Position = [361 102 110 22];

            % Create LEditFieldLabel
            app.LEditFieldLabel = uilabel(app.SettingsPanel);
            app.LEditFieldLabel.Position = [257 65 25 22];
            app.LEditFieldLabel.Text = 'L';

            % Create LEditField
            app.LEditField = uieditfield(app.SettingsPanel, 'numeric');
            app.LEditField.Position = [361 65 110 22];

            % Create TextArea
            app.TextArea = uitextarea(app.SettingsPanel);
            app.TextArea.BusyAction = 'cancel';
            app.TextArea.Interruptible = 'off';
            app.TextArea.Editable = 'off';
            app.TextArea.FontName = 'Tw Cen MT';
            app.TextArea.FontSize = 14;
            app.TextArea.FontWeight = 'bold';
            app.TextArea.FontAngle = 'italic';
            app.TextArea.Position = [482 41 290 191];

            % Create Label_46
            app.Label_46 = uilabel(app.SettingsPanel);
            app.Label_46.HorizontalAlignment = 'center';
            app.Label_46.FontWeight = 'bold';
            app.Label_46.Position = [787 18 84 24];
            app.Label_46.Text = '';

            % Create Panel_10
            app.Panel_10 = uipanel(app.TensionEstimationLETab);
            app.Panel_10.Position = [1 25 241 504];

            % Create Tree
            app.Tree = uitree(app.Panel_10);
            app.Tree.SelectionChangedFcn = createCallbackFcn(app, @TreeSelectionChanged, true);
            app.Tree.Position = [0 -24 240 527];

            % Create MethodsNode
            app.MethodsNode = uitreenode(app.Tree);
            app.MethodsNode.Text = 'Methods';

            % Create StringTheoryNode
            app.StringTheoryNode = uitreenode(app.MethodsNode);
            app.StringTheoryNode.Icon = 'iconfinder_Remove_27874.png';
            app.StringTheoryNode.Text = 'String Theory';

            % Create HingedHingedBeamNode
            app.HingedHingedBeamNode = uitreenode(app.MethodsNode);
            app.HingedHingedBeamNode.Icon = 'iconfinder_Remove_27874.png';
            app.HingedHingedBeamNode.Text = 'Hinged-Hinged Beam';

            % Create CalmpedClampedBeamNode_2
            app.CalmpedClampedBeamNode_2 = uitreenode(app.MethodsNode);
            app.CalmpedClampedBeamNode_2.Icon = 'iconfinder_Remove_27874.png';
            app.CalmpedClampedBeamNode_2.Text = 'Calmped-Clamped Beam';

            % Create ModeshapeFunctionsTab
            app.ModeshapeFunctionsTab = uitab(app.TabGroup7);
            app.ModeshapeFunctionsTab.Title = 'Mode shape Functions';

            % Create TabGroup8
            app.TabGroup8 = uitabgroup(app.ModeshapeFunctionsTab);
            app.TabGroup8.Position = [10 17 365 506];

            % Create SensorDataTab
            app.SensorDataTab = uitab(app.TabGroup8);
            app.SensorDataTab.Title = ' Sensor Data';

            % Create SensorNumberDropDownLabel
            app.SensorNumberDropDownLabel = uilabel(app.SensorDataTab);
            app.SensorNumberDropDownLabel.HorizontalAlignment = 'right';
            app.SensorNumberDropDownLabel.Position = [0 448 90 22];
            app.SensorNumberDropDownLabel.Text = 'Sensor Number';

            % Create SensorNumberDropDown
            app.SensorNumberDropDown = uidropdown(app.SensorDataTab);
            app.SensorNumberDropDown.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.SensorNumberDropDown.ValueChangedFcn = createCallbackFcn(app, @SensorNumberDropDownValueChanged, true);
            app.SensorNumberDropDown.Position = [105 448 245 22];
            app.SensorNumberDropDown.Value = '1 Sensor';

            % Create LocationEditFieldLabel
            app.LocationEditFieldLabel = uilabel(app.SensorDataTab);
            app.LocationEditFieldLabel.HorizontalAlignment = 'right';
            app.LocationEditFieldLabel.Position = [165 408 51 22];
            app.LocationEditFieldLabel.Text = 'Location';

            % Create LocationEditField
            app.LocationEditField = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField.Position = [231 408 100 22];

            % Create LocationEditField_2Label
            app.LocationEditField_2Label = uilabel(app.SensorDataTab);
            app.LocationEditField_2Label.HorizontalAlignment = 'right';
            app.LocationEditField_2Label.Position = [165 368 51 22];
            app.LocationEditField_2Label.Text = 'Location';

            % Create LocationEditField_2
            app.LocationEditField_2 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_2.Enable = 'off';
            app.LocationEditField_2.Position = [231 368 100 22];

            % Create LocationEditField_3Label
            app.LocationEditField_3Label = uilabel(app.SensorDataTab);
            app.LocationEditField_3Label.HorizontalAlignment = 'right';
            app.LocationEditField_3Label.Position = [165 328 51 22];
            app.LocationEditField_3Label.Text = 'Location';

            % Create LocationEditField_3
            app.LocationEditField_3 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_3.Enable = 'off';
            app.LocationEditField_3.Position = [231 328 100 22];

            % Create LocationEditField_4Label
            app.LocationEditField_4Label = uilabel(app.SensorDataTab);
            app.LocationEditField_4Label.HorizontalAlignment = 'right';
            app.LocationEditField_4Label.Position = [165 288 51 22];
            app.LocationEditField_4Label.Text = 'Location';

            % Create LocationEditField_4
            app.LocationEditField_4 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_4.Enable = 'off';
            app.LocationEditField_4.Position = [231 288 100 22];

            % Create LocationEditField_5Label
            app.LocationEditField_5Label = uilabel(app.SensorDataTab);
            app.LocationEditField_5Label.HorizontalAlignment = 'right';
            app.LocationEditField_5Label.Position = [165 248 51 22];
            app.LocationEditField_5Label.Text = 'Location';

            % Create LocationEditField_5
            app.LocationEditField_5 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_5.Enable = 'off';
            app.LocationEditField_5.Position = [231 248 100 22];

            % Create LocationEditField_6Label
            app.LocationEditField_6Label = uilabel(app.SensorDataTab);
            app.LocationEditField_6Label.HorizontalAlignment = 'right';
            app.LocationEditField_6Label.Position = [165 208 51 22];
            app.LocationEditField_6Label.Text = 'Location';

            % Create LocationEditField_6
            app.LocationEditField_6 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_6.Enable = 'off';
            app.LocationEditField_6.Position = [231 208 100 22];

            % Create LocationEditField_7Label
            app.LocationEditField_7Label = uilabel(app.SensorDataTab);
            app.LocationEditField_7Label.HorizontalAlignment = 'right';
            app.LocationEditField_7Label.Position = [165 168 51 22];
            app.LocationEditField_7Label.Text = 'Location';

            % Create LocationEditField_7
            app.LocationEditField_7 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_7.Enable = 'off';
            app.LocationEditField_7.Position = [231 168 100 22];

            % Create LocationEditField_8Label
            app.LocationEditField_8Label = uilabel(app.SensorDataTab);
            app.LocationEditField_8Label.HorizontalAlignment = 'right';
            app.LocationEditField_8Label.Position = [165 128 51 22];
            app.LocationEditField_8Label.Text = 'Location';

            % Create LocationEditField_8
            app.LocationEditField_8 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_8.Enable = 'off';
            app.LocationEditField_8.Position = [231 128 100 22];

            % Create LocationEditField_9Label
            app.LocationEditField_9Label = uilabel(app.SensorDataTab);
            app.LocationEditField_9Label.HorizontalAlignment = 'right';
            app.LocationEditField_9Label.Position = [165 88 51 22];
            app.LocationEditField_9Label.Text = 'Location';

            % Create LocationEditField_9
            app.LocationEditField_9 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_9.Enable = 'off';
            app.LocationEditField_9.Position = [231 88 100 22];

            % Create LocationEditField_10Label
            app.LocationEditField_10Label = uilabel(app.SensorDataTab);
            app.LocationEditField_10Label.HorizontalAlignment = 'right';
            app.LocationEditField_10Label.Position = [165 48 51 22];
            app.LocationEditField_10Label.Text = 'Location';

            % Create LocationEditField_10
            app.LocationEditField_10 = uieditfield(app.SensorDataTab, 'numeric');
            app.LocationEditField_10.Enable = 'off';
            app.LocationEditField_10.Position = [231 48 100 22];

            % Create SavePositionsButton
            app.SavePositionsButton = uibutton(app.SensorDataTab, 'push');
            app.SavePositionsButton.ButtonPushedFcn = createCallbackFcn(app, @SavePositionsButtonPushed, true);
            app.SavePositionsButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.SavePositionsButton.BackgroundColor = [0.902 0.902 0.902];
            app.SavePositionsButton.Position = [13 10 318 22];
            app.SavePositionsButton.Text = 'Save Positions';

            % Create Sensor1Button
            app.Sensor1Button = uidropdown(app.SensorDataTab);
            app.Sensor1Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor1Button.ValueChangedFcn = createCallbackFcn(app, @Sensor1ButtonValueChanged, true);
            app.Sensor1Button.Position = [13 408 119 22];
            app.Sensor1Button.Value = '1 Sensor';

            % Create Sensor2Button
            app.Sensor2Button = uidropdown(app.SensorDataTab);
            app.Sensor2Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor2Button.ValueChangedFcn = createCallbackFcn(app, @Sensor2ButtonValueChanged, true);
            app.Sensor2Button.Position = [13 368 119 22];
            app.Sensor2Button.Value = '2 Sensor';

            % Create Sensor3Button
            app.Sensor3Button = uidropdown(app.SensorDataTab);
            app.Sensor3Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor3Button.ValueChangedFcn = createCallbackFcn(app, @Sensor3ButtonValueChanged, true);
            app.Sensor3Button.Position = [13 328 119 22];
            app.Sensor3Button.Value = '3 Sensor';

            % Create Sensor4Button
            app.Sensor4Button = uidropdown(app.SensorDataTab);
            app.Sensor4Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor4Button.ValueChangedFcn = createCallbackFcn(app, @Sensor4ButtonValueChanged, true);
            app.Sensor4Button.Position = [13 288 119 22];
            app.Sensor4Button.Value = '4 Sensor';

            % Create Sensor5Button
            app.Sensor5Button = uidropdown(app.SensorDataTab);
            app.Sensor5Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor5Button.ValueChangedFcn = createCallbackFcn(app, @Sensor5ButtonValueChanged, true);
            app.Sensor5Button.Position = [13 248 119 22];
            app.Sensor5Button.Value = '5 Sensor';

            % Create Sensor6Button
            app.Sensor6Button = uidropdown(app.SensorDataTab);
            app.Sensor6Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor6Button.ValueChangedFcn = createCallbackFcn(app, @Sensor6ButtonValueChanged, true);
            app.Sensor6Button.Position = [13 208 119 22];
            app.Sensor6Button.Value = '6 Sensor';

            % Create Sensor7Button
            app.Sensor7Button = uidropdown(app.SensorDataTab);
            app.Sensor7Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor7Button.ValueChangedFcn = createCallbackFcn(app, @Sensor7ButtonValueChanged, true);
            app.Sensor7Button.Position = [13 168 119 22];
            app.Sensor7Button.Value = '7 Sensor';

            % Create Sensor8Button
            app.Sensor8Button = uidropdown(app.SensorDataTab);
            app.Sensor8Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor8Button.ValueChangedFcn = createCallbackFcn(app, @Sensor8ButtonValueChanged, true);
            app.Sensor8Button.Position = [13 128 119 22];
            app.Sensor8Button.Value = '8 Sensor';

            % Create Sensor9Button
            app.Sensor9Button = uidropdown(app.SensorDataTab);
            app.Sensor9Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor9Button.ValueChangedFcn = createCallbackFcn(app, @Sensor9ButtonValueChanged, true);
            app.Sensor9Button.Position = [13 88 119 22];
            app.Sensor9Button.Value = '9 Sensor';

            % Create Sensor10Button
            app.Sensor10Button = uidropdown(app.SensorDataTab);
            app.Sensor10Button.Items = {'1 Sensor', '2 Sensor', '3 Sensor', '4 Sensor', '5 Sensor', '6 Sensor', '7 Sensor', '8 Sensor', '9 Sensor', '10 Sensor'};
            app.Sensor10Button.ValueChangedFcn = createCallbackFcn(app, @Sensor10ButtonValueChanged, true);
            app.Sensor10Button.Position = [13 48 119 22];
            app.Sensor10Button.Value = '10 Sensor';

            % Create ModeShapeFunctionTab
            app.ModeShapeFunctionTab = uitab(app.TabGroup8);
            app.ModeShapeFunctionTab.Title = 'Mode Shape Function';

            % Create ModeNumberDropDownLabel
            app.ModeNumberDropDownLabel = uilabel(app.ModeShapeFunctionTab);
            app.ModeNumberDropDownLabel.Position = [9 453 82 22];
            app.ModeNumberDropDownLabel.Text = 'Mode Number';

            % Create ModeNumberDropDown
            app.ModeNumberDropDown = uidropdown(app.ModeShapeFunctionTab);
            app.ModeNumberDropDown.Items = {'1 Mode', '2 Mode', '3 Mode', '4 Mode', '5 Mode', '6 Mode', '7 Mode', '8 Mode', '9 Mode', '10 Mode'};
            app.ModeNumberDropDown.ValueChangedFcn = createCallbackFcn(app, @ModeNumberDropDownValueChanged, true);
            app.ModeNumberDropDown.Position = [134 453 209 22];
            app.ModeNumberDropDown.Value = '1 Mode';

            % Create ModeDropDownLabel
            app.ModeDropDownLabel = uilabel(app.ModeShapeFunctionTab);
            app.ModeDropDownLabel.Position = [9 417 36 22];
            app.ModeDropDownLabel.Text = 'Mode';

            % Create ModeDropDown
            app.ModeDropDown = uidropdown(app.ModeShapeFunctionTab);
            app.ModeDropDown.Items = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10'};
            app.ModeDropDown.ValueChangedFcn = createCallbackFcn(app, @ModeDropDownValueChanged, true);
            app.ModeDropDown.Position = [134 417 209 22];
            app.ModeDropDown.Value = '1';

            % Create TabGroup10
            app.TabGroup10 = uitabgroup(app.ModeShapeFunctionTab);
            app.TabGroup10.Position = [13 16 334 381];

            % Create dataTab
            app.dataTab = uitab(app.TabGroup10);
            app.dataTab.Title = 'data';

            % Create UITable5
            app.UITable5 = uitable(app.dataTab);
            app.UITable5.ColumnName = {'Row'; 'Frequency (Hz)'};
            app.UITable5.RowName = {};
            app.UITable5.Position = [1 1 333 354];

            % Create CorrespondingRowTab
            app.CorrespondingRowTab = uitab(app.TabGroup10);
            app.CorrespondingRowTab.Title = 'Corresponding Row';

            % Create FrequencyRowMode1EditFieldLabel
            app.FrequencyRowMode1EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode1EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode1EditFieldLabel.Position = [11 320 133 22];
            app.FrequencyRowMode1EditFieldLabel.Text = 'Frequency Row Mode 1';

            % Create FrequencyRowMode1EditField
            app.FrequencyRowMode1EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode1EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode1EditField.Position = [173 320 152 22];

            % Create FrequencyRowMode2EditFieldLabel
            app.FrequencyRowMode2EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode2EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode2EditFieldLabel.Position = [11 289 133 22];
            app.FrequencyRowMode2EditFieldLabel.Text = 'Frequency Row Mode 2';

            % Create FrequencyRowMode2EditField
            app.FrequencyRowMode2EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode2EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode2EditField.Enable = 'off';
            app.FrequencyRowMode2EditField.Position = [173 289 152 22];

            % Create FrequencyRowMode3EditFieldLabel
            app.FrequencyRowMode3EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode3EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode3EditFieldLabel.Position = [11 258 133 22];
            app.FrequencyRowMode3EditFieldLabel.Text = 'Frequency Row Mode 3';

            % Create FrequencyRowMode3EditField
            app.FrequencyRowMode3EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode3EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode3EditField.Enable = 'off';
            app.FrequencyRowMode3EditField.Position = [173 258 152 22];

            % Create FrequencyRowMode4EditFieldLabel
            app.FrequencyRowMode4EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode4EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode4EditFieldLabel.Position = [11 227 133 22];
            app.FrequencyRowMode4EditFieldLabel.Text = 'Frequency Row Mode 4';

            % Create FrequencyRowMode4EditField
            app.FrequencyRowMode4EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode4EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode4EditField.Enable = 'off';
            app.FrequencyRowMode4EditField.Position = [173 227 152 22];

            % Create FrequencyRowMode5EditFieldLabel
            app.FrequencyRowMode5EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode5EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode5EditFieldLabel.Position = [11 196 133 22];
            app.FrequencyRowMode5EditFieldLabel.Text = 'Frequency Row Mode 5';

            % Create FrequencyRowMode5EditField
            app.FrequencyRowMode5EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode5EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode5EditField.Enable = 'off';
            app.FrequencyRowMode5EditField.Position = [173 196 152 22];

            % Create FrequencyRowMode6EditFieldLabel
            app.FrequencyRowMode6EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode6EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode6EditFieldLabel.Position = [11 165 133 22];
            app.FrequencyRowMode6EditFieldLabel.Text = 'Frequency Row Mode 6';

            % Create FrequencyRowMode6EditField
            app.FrequencyRowMode6EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode6EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode6EditField.Enable = 'off';
            app.FrequencyRowMode6EditField.Position = [173 165 152 22];

            % Create FrequencyRowMode7EditFieldLabel
            app.FrequencyRowMode7EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode7EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode7EditFieldLabel.Position = [11 134 133 22];
            app.FrequencyRowMode7EditFieldLabel.Text = 'Frequency Row Mode 7';

            % Create FrequencyRowMode7EditField
            app.FrequencyRowMode7EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode7EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode7EditField.Enable = 'off';
            app.FrequencyRowMode7EditField.Position = [173 134 152 22];

            % Create FrequencyRowMode8EditFieldLabel
            app.FrequencyRowMode8EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode8EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode8EditFieldLabel.Position = [11 103 133 22];
            app.FrequencyRowMode8EditFieldLabel.Text = 'Frequency Row Mode 8';

            % Create FrequencyRowMode8EditField
            app.FrequencyRowMode8EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode8EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode8EditField.Enable = 'off';
            app.FrequencyRowMode8EditField.Position = [173 103 152 22];

            % Create FrequencyRowMode9EditFieldLabel
            app.FrequencyRowMode9EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode9EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode9EditFieldLabel.Position = [11 72 133 22];
            app.FrequencyRowMode9EditFieldLabel.Text = 'Frequency Row Mode 9';

            % Create FrequencyRowMode9EditField
            app.FrequencyRowMode9EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode9EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode9EditField.Enable = 'off';
            app.FrequencyRowMode9EditField.Position = [173 72 152 22];

            % Create FrequencyRowMode10EditFieldLabel
            app.FrequencyRowMode10EditFieldLabel = uilabel(app.CorrespondingRowTab);
            app.FrequencyRowMode10EditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyRowMode10EditFieldLabel.Position = [4 41 140 22];
            app.FrequencyRowMode10EditFieldLabel.Text = 'Frequency Row Mode 10';

            % Create FrequencyRowMode10EditField
            app.FrequencyRowMode10EditField = uieditfield(app.CorrespondingRowTab, 'numeric');
            app.FrequencyRowMode10EditField.HorizontalAlignment = 'center';
            app.FrequencyRowMode10EditField.Enable = 'off';
            app.FrequencyRowMode10EditField.Position = [173 41 152 22];

            % Create SaveDataTab
            app.SaveDataTab = uitab(app.TabGroup10);
            app.SaveDataTab.Title = 'Save Data';

            % Create ModeshapeRatioCalcButton
            app.ModeshapeRatioCalcButton = uibutton(app.SaveDataTab, 'push');
            app.ModeshapeRatioCalcButton.ButtonPushedFcn = createCallbackFcn(app, @ModeshapeRatioCalcButtonPushed, true);
            app.ModeshapeRatioCalcButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.ModeshapeRatioCalcButton.Position = [169 8 153 22];
            app.ModeshapeRatioCalcButton.Text = 'Mode shape Ratio Calc';

            % Create TextArea_4
            app.TextArea_4 = uitextarea(app.SaveDataTab);
            app.TextArea_4.FontName = 'Tw Cen MT';
            app.TextArea_4.FontSize = 14;
            app.TextArea_4.FontWeight = 'bold';
            app.TextArea_4.FontAngle = 'italic';
            app.TextArea_4.Position = [2 199 329 139];

            % Create DPlotModeShapesButton
            app.DPlotModeShapesButton = uibutton(app.SaveDataTab, 'push');
            app.DPlotModeShapesButton.ButtonPushedFcn = createCallbackFcn(app, @DPlotModeShapesButtonPushed, true);
            app.DPlotModeShapesButton.Position = [16 8 138 22];
            app.DPlotModeShapesButton.Text = '3D Plot Mode Shapes';

            % Create FitOptionTab
            app.FitOptionTab = uitab(app.TabGroup8);
            app.FitOptionTab.SizeChangedFcn = createCallbackFcn(app, @FitOptionTabSizeChanged, true);
            app.FitOptionTab.Title = 'Fit Option';

            % Create strataEditField_2Label
            app.strataEditField_2Label = uilabel(app.FitOptionTab);
            app.strataEditField_2Label.Position = [21 445 39 22];
            app.strataEditField_2Label.Text = 'strat L';

            % Create strataEditField_2
            app.strataEditField_2 = uieditfield(app.FitOptionTab, 'numeric');
            app.strataEditField_2.Position = [124 445 217 22];

            % Create stratbEditField_2Label
            app.stratbEditField_2Label = uilabel(app.FitOptionTab);
            app.stratbEditField_2Label.Position = [21 407 39 22];
            app.stratbEditField_2Label.Text = 'strat a';

            % Create stratbEditField_2
            app.stratbEditField_2 = uieditfield(app.FitOptionTab, 'numeric');
            app.stratbEditField_2.Position = [124 407 217 22];

            % Create TextArea_2
            app.TextArea_2 = uitextarea(app.FitOptionTab);
            app.TextArea_2.BusyAction = 'cancel';
            app.TextArea_2.Interruptible = 'off';
            app.TextArea_2.Editable = 'off';
            app.TextArea_2.FontName = 'Tw Cen MT';
            app.TextArea_2.FontSize = 14;
            app.TextArea_2.FontWeight = 'bold';
            app.TextArea_2.FontAngle = 'italic';
            app.TextArea_2.Position = [20 55 323 186];

            % Create RobustDropDown_2Label
            app.RobustDropDown_2Label = uilabel(app.FitOptionTab);
            app.RobustDropDown_2Label.Position = [20 369 44 22];
            app.RobustDropDown_2Label.Text = 'Robust';

            % Create RobustDropDown_2
            app.RobustDropDown_2 = uidropdown(app.FitOptionTab);
            app.RobustDropDown_2.Items = {'off', 'LAR', 'Bisquare'};
            app.RobustDropDown_2.Position = [124 369 219 22];
            app.RobustDropDown_2.Value = 'off';

            % Create algorithemDropDown_2Label
            app.algorithemDropDown_2Label = uilabel(app.FitOptionTab);
            app.algorithemDropDown_2Label.Position = [20 331 62 22];
            app.algorithemDropDown_2Label.Text = 'algorithem';

            % Create algorithemDropDown_2
            app.algorithemDropDown_2 = uidropdown(app.FitOptionTab);
            app.algorithemDropDown_2.Items = {'Trust-Region', 'Levenberg-Marquardt'};
            app.algorithemDropDown_2.Position = [124 331 219 22];
            app.algorithemDropDown_2.Value = 'Trust-Region';

            % Create RunButton_2
            app.RunButton_2 = uibutton(app.FitOptionTab, 'push');
            app.RunButton_2.ButtonPushedFcn = createCallbackFcn(app, @RunButton_2Pushed, true);
            app.RunButton_2.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.RunButton_2.Position = [126 20 100 22];
            app.RunButton_2.Text = 'Run';

            % Create DownLimLEditFieldLabel
            app.DownLimLEditFieldLabel = uilabel(app.FitOptionTab);
            app.DownLimLEditFieldLabel.HorizontalAlignment = 'right';
            app.DownLimLEditFieldLabel.Position = [20 288 69 22];
            app.DownLimLEditFieldLabel.Text = 'Down Lim L';

            % Create DownLimLEditField
            app.DownLimLEditField = uieditfield(app.FitOptionTab, 'numeric');
            app.DownLimLEditField.HorizontalAlignment = 'left';
            app.DownLimLEditField.Position = [104 288 60 22];

            % Create UpLimLEditFieldLabel
            app.UpLimLEditFieldLabel = uilabel(app.FitOptionTab);
            app.UpLimLEditFieldLabel.HorizontalAlignment = 'right';
            app.UpLimLEditFieldLabel.Position = [212 288 54 22];
            app.UpLimLEditFieldLabel.Text = 'Up Lim L';

            % Create UpLimLEditField
            app.UpLimLEditField = uieditfield(app.FitOptionTab, 'numeric');
            app.UpLimLEditField.Position = [281 288 60 22];

            % Create DownLimaEditFieldLabel
            app.DownLimaEditFieldLabel = uilabel(app.FitOptionTab);
            app.DownLimaEditFieldLabel.HorizontalAlignment = 'right';
            app.DownLimaEditFieldLabel.Position = [20 254 69 22];
            app.DownLimaEditFieldLabel.Text = 'Down Lim a';

            % Create DownLimaEditField
            app.DownLimaEditField = uieditfield(app.FitOptionTab, 'numeric');
            app.DownLimaEditField.HorizontalAlignment = 'left';
            app.DownLimaEditField.Position = [104 254 60 22];

            % Create UpLimaEditFieldLabel
            app.UpLimaEditFieldLabel = uilabel(app.FitOptionTab);
            app.UpLimaEditFieldLabel.HorizontalAlignment = 'right';
            app.UpLimaEditFieldLabel.Position = [212 254 54 22];
            app.UpLimaEditFieldLabel.Text = 'Up Lim a';

            % Create UpLimaEditField
            app.UpLimaEditField = uieditfield(app.FitOptionTab, 'numeric');
            app.UpLimaEditField.Position = [281 254 60 22];

            % Create SimpleBeamRegressionTab
            app.SimpleBeamRegressionTab = uitab(app.TabGroup8);
            app.SimpleBeamRegressionTab.SizeChangedFcn = createCallbackFcn(app, @SimpleBeamRegressionTabSizeChanged, true);
            app.SimpleBeamRegressionTab.Title = 'Simple Beam Regression';

            % Create RunButton_3
            app.RunButton_3 = uibutton(app.SimpleBeamRegressionTab, 'push');
            app.RunButton_3.ButtonPushedFcn = createCallbackFcn(app, @RunButton_3Pushed, true);
            app.RunButton_3.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.RunButton_3.Position = [126 20 100 22];
            app.RunButton_3.Text = 'Run';

            % Create strataEditField_3Label
            app.strataEditField_3Label = uilabel(app.SimpleBeamRegressionTab);
            app.strataEditField_3Label.Position = [21 445 39 22];
            app.strataEditField_3Label.Text = 'strat a';

            % Create strataEditField_3
            app.strataEditField_3 = uieditfield(app.SimpleBeamRegressionTab, 'numeric');
            app.strataEditField_3.Position = [124 445 217 22];

            % Create stratbEditField_3Label
            app.stratbEditField_3Label = uilabel(app.SimpleBeamRegressionTab);
            app.stratbEditField_3Label.Position = [21 407 39 22];
            app.stratbEditField_3Label.Text = 'strat b';

            % Create stratbEditField_3
            app.stratbEditField_3 = uieditfield(app.SimpleBeamRegressionTab, 'numeric');
            app.stratbEditField_3.Position = [124 407 217 22];

            % Create RobustDropDown_3Label
            app.RobustDropDown_3Label = uilabel(app.SimpleBeamRegressionTab);
            app.RobustDropDown_3Label.Position = [20 369 44 22];
            app.RobustDropDown_3Label.Text = 'Robust';

            % Create RobustDropDown_3
            app.RobustDropDown_3 = uidropdown(app.SimpleBeamRegressionTab);
            app.RobustDropDown_3.Items = {'off', 'LAR', 'Bisquare'};
            app.RobustDropDown_3.Position = [124 369 219 22];
            app.RobustDropDown_3.Value = 'off';

            % Create algorithemDropDown_3Label
            app.algorithemDropDown_3Label = uilabel(app.SimpleBeamRegressionTab);
            app.algorithemDropDown_3Label.Position = [20 331 62 22];
            app.algorithemDropDown_3Label.Text = 'algorithem';

            % Create algorithemDropDown_3
            app.algorithemDropDown_3 = uidropdown(app.SimpleBeamRegressionTab);
            app.algorithemDropDown_3.Items = {'Trust-Region', 'Levenberg-Marquardt'};
            app.algorithemDropDown_3.Position = [124 331 219 22];
            app.algorithemDropDown_3.Value = 'Trust-Region';

            % Create mEditField_3Label
            app.mEditField_3Label = uilabel(app.SimpleBeamRegressionTab);
            app.mEditField_3Label.Position = [20 293 25 22];
            app.mEditField_3Label.Text = 'm';

            % Create mEditField_3
            app.mEditField_3 = uieditfield(app.SimpleBeamRegressionTab, 'numeric');
            app.mEditField_3.Position = [124 293 219 22];

            % Create LEditField_3Label
            app.LEditField_3Label = uilabel(app.SimpleBeamRegressionTab);
            app.LEditField_3Label.Position = [20 255 25 22];
            app.LEditField_3Label.Text = 'L';

            % Create LEditField_3
            app.LEditField_3 = uieditfield(app.SimpleBeamRegressionTab, 'numeric');
            app.LEditField_3.Position = [124 255 219 22];

            % Create TextArea_3
            app.TextArea_3 = uitextarea(app.SimpleBeamRegressionTab);
            app.TextArea_3.BusyAction = 'cancel';
            app.TextArea_3.Interruptible = 'off';
            app.TextArea_3.Editable = 'off';
            app.TextArea_3.FontName = 'Tw Cen MT';
            app.TextArea_3.FontSize = 14;
            app.TextArea_3.FontWeight = 'bold';
            app.TextArea_3.FontAngle = 'italic';
            app.TextArea_3.Position = [18 56 323 181];

            % Create TabGroup9
            app.TabGroup9 = uitabgroup(app.ModeshapeFunctionsTab);
            app.TabGroup9.Position = [394 98 810 425];

            % Create ModeShapeRatiosTab
            app.ModeShapeRatiosTab = uitab(app.TabGroup9);
            app.ModeShapeRatiosTab.Title = 'ModeShapeRatios';
            app.ModeShapeRatiosTab.HandleVisibility = 'off';

            % Create UIAxes
            app.UIAxes = uiaxes(app.ModeShapeRatiosTab);
            title(app.UIAxes, '')
            xlabel(app.UIAxes, '')
            ylabel(app.UIAxes, '')
            app.UIAxes.PlotBoxAspectRatio = [2.39871382636656 1 1];
            app.UIAxes.FontName = 'Times New Roman';
            app.UIAxes.FontUnits = 'normalized';
            app.UIAxes.FontSize = 0.0429843414184833;
            app.UIAxes.FontWeight = 'bold';
            app.UIAxes.GridColor = [0.15 0.15 0.15];
            app.UIAxes.GridAlpha = 0.15;
            app.UIAxes.MinorGridColor = [0.1 0.1 0.1];
            app.UIAxes.MinorGridAlpha = 0.25;
            app.UIAxes.Box = 'on';
            app.UIAxes.XColor = [0.15 0.15 0.15];
            app.UIAxes.XMinorTick = 'on';
            app.UIAxes.YColor = [0.15 0.15 0.15];
            app.UIAxes.YMinorTick = 'on';
            app.UIAxes.ZColor = [0.15 0.15 0.15];
            app.UIAxes.ZMinorTick = 'on';
            app.UIAxes.XGrid = 'on';
            app.UIAxes.XMinorGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.YMinorGrid = 'on';
            app.UIAxes.Position = [1 15 808 377];

            % Create ModeShapeRatioForEachModeTab
            app.ModeShapeRatioForEachModeTab = uitab(app.TabGroup9);
            app.ModeShapeRatioForEachModeTab.Title = 'Mode Shape Ratio For Each Mode';

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.ModeShapeRatioForEachModeTab);
            title(app.UIAxes_2, {'Normalized Mode Shape Ratio to First Node'; ''})
            xlabel(app.UIAxes_2, 'Sensor Location on Cable Length')
            ylabel(app.UIAxes_2, 'Mode Shape Ratio')
            app.UIAxes_2.FontName = 'Times New Roman';
            app.UIAxes_2.FontUnits = 'normalized';
            app.UIAxes_2.FontSize = 0.042;
            app.UIAxes_2.FontWeight = 'bold';
            app.UIAxes_2.GridColor = [0.15 0.15 0.15];
            app.UIAxes_2.GridAlpha = 0.15;
            app.UIAxes_2.MinorGridColor = [0.1 0.1 0.1];
            app.UIAxes_2.MinorGridAlpha = 0.25;
            app.UIAxes_2.Box = 'on';
            app.UIAxes_2.BoxStyle = 'full';
            app.UIAxes_2.XColor = [0.15 0.15 0.15];
            app.UIAxes_2.YColor = [0.15 0.15 0.15];
            app.UIAxes_2.ZColor = [0.15 0.15 0.15];
            app.UIAxes_2.XGrid = 'on';
            app.UIAxes_2.XMinorGrid = 'on';
            app.UIAxes_2.YGrid = 'on';
            app.UIAxes_2.YMinorGrid = 'on';
            app.UIAxes_2.Position = [1 12 808 388];

            % Create TextArea_6
            app.TextArea_6 = uitextarea(app.ModeshapeFunctionsTab);
            app.TextArea_6.FontName = 'Tw Cen MT';
            app.TextArea_6.FontSize = 14;
            app.TextArea_6.FontWeight = 'bold';
            app.TextArea_6.FontAngle = 'italic';
            app.TextArea_6.Position = [394 18 810 75];

            % Create Tab
            app.Tab = uitab(app.TabGroup4);
            app.Tab.Title = '...';

            % Create WaveletBasedDamageDetectionTab
            app.WaveletBasedDamageDetectionTab = uitab(app.TabGroup2);
            app.WaveletBasedDamageDetectionTab.Title = 'Wavelet Based Damage Detection';

            % Create Panel_11
            app.Panel_11 = uipanel(app.WaveletBasedDamageDetectionTab);
            app.Panel_11.Position = [414 2 841 556];

            % Create UIAxes6
            app.UIAxes6 = uiaxes(app.Panel_11);
            title(app.UIAxes6, '')
            xlabel(app.UIAxes6, '')
            ylabel(app.UIAxes6, '')
            app.UIAxes6.Box = 'on';
            app.UIAxes6.Position = [10 306 268 246];

            % Create UIAxes6_2
            app.UIAxes6_2 = uiaxes(app.Panel_11);
            title(app.UIAxes6_2, '')
            xlabel(app.UIAxes6_2, '')
            ylabel(app.UIAxes6_2, '')
            app.UIAxes6_2.Box = 'on';
            app.UIAxes6_2.Position = [277 306 268 246];

            % Create UIAxes6_3
            app.UIAxes6_3 = uiaxes(app.Panel_11);
            title(app.UIAxes6_3, '')
            xlabel(app.UIAxes6_3, '')
            ylabel(app.UIAxes6_3, '')
            app.UIAxes6_3.Box = 'on';
            app.UIAxes6_3.Position = [10 1 802 306];

            % Create UIAxes6_4
            app.UIAxes6_4 = uiaxes(app.Panel_11);
            title(app.UIAxes6_4, '')
            xlabel(app.UIAxes6_4, '')
            ylabel(app.UIAxes6_4, '')
            app.UIAxes6_4.PlotBoxAspectRatio = [1.16402116402116 1 1];
            app.UIAxes6_4.Box = 'on';
            app.UIAxes6_4.XTick = [0 0.2 0.4 0.6 0.8 1];
            app.UIAxes6_4.Position = [544 306 268 246];

            % Create TextArea_10
            app.TextArea_10 = uitextarea(app.WaveletBasedDamageDetectionTab);
            app.TextArea_10.Position = [11 10 164 390];

            % Create Tree5
            app.Tree5 = uitree(app.WaveletBasedDamageDetectionTab);
            app.Tree5.SelectionChangedFcn = createCallbackFcn(app, @Tree5SelectionChanged, true);
            app.Tree5.Position = [11 420 164 134];

            % Create DamageDetectionIndexNode
            app.DamageDetectionIndexNode = uitreenode(app.Tree5);
            app.DamageDetectionIndexNode.Text = 'Damage Detection Index';

            % Create FBIndexNode
            app.FBIndexNode = uitreenode(app.DamageDetectionIndexNode);
            app.FBIndexNode.Icon = 'iconfinder_Remove_27874.png';
            app.FBIndexNode.Text = 'FB Index';

            % Create EDIndexNode
            app.EDIndexNode = uitreenode(app.DamageDetectionIndexNode);
            app.EDIndexNode.Icon = 'iconfinder_Remove_27874.png';
            app.EDIndexNode.Text = 'ED Index';

            % Create UnDamgedDataButton
            app.UnDamgedDataButton = uibutton(app.WaveletBasedDamageDetectionTab, 'push');
            app.UnDamgedDataButton.ButtonPushedFcn = createCallbackFcn(app, @UnDamgedDataButtonPushed, true);
            app.UnDamgedDataButton.Position = [181 522 215 22];
            app.UnDamgedDataButton.Text = 'UnDamged Data';

            % Create DamgedDataButton
            app.DamgedDataButton = uibutton(app.WaveletBasedDamageDetectionTab, 'push');
            app.DamgedDataButton.ButtonPushedFcn = createCallbackFcn(app, @DamgedDataButtonPushed, true);
            app.DamgedDataButton.Position = [181 493 215 22];
            app.DamgedDataButton.Text = 'Damged Data';

            % Create SegmentLEditFieldLabel
            app.SegmentLEditFieldLabel = uilabel(app.WaveletBasedDamageDetectionTab);
            app.SegmentLEditFieldLabel.Position = [184 461 64 22];
            app.SegmentLEditFieldLabel.Text = 'Segment L';

            % Create SegmentLEditField
            app.SegmentLEditField = uieditfield(app.WaveletBasedDamageDetectionTab, 'numeric');
            app.SegmentLEditField.HorizontalAlignment = 'center';
            app.SegmentLEditField.Position = [263 461 134 22];

            % Create LevelEditFieldLabel
            app.LevelEditFieldLabel = uilabel(app.WaveletBasedDamageDetectionTab);
            app.LevelEditFieldLabel.Position = [183 368 38 22];
            app.LevelEditFieldLabel.Text = 'Level ';

            % Create LevelEditField
            app.LevelEditField = uieditfield(app.WaveletBasedDamageDetectionTab, 'numeric');
            app.LevelEditField.HorizontalAlignment = 'center';
            app.LevelEditField.Position = [262 368 135 22];

            % Create mEditField_4Label
            app.mEditField_4Label = uilabel(app.WaveletBasedDamageDetectionTab);
            app.mEditField_4Label.Position = [183 399 25 22];
            app.mEditField_4Label.Text = 'm';

            % Create mEditField_4
            app.mEditField_4 = uieditfield(app.WaveletBasedDamageDetectionTab, 'numeric');
            app.mEditField_4.HorizontalAlignment = 'center';
            app.mEditField_4.Enable = 'off';
            app.mEditField_4.Position = [262 399 133 22];
            app.mEditField_4.Value = 15;

            % Create motherwavDropDownLabel
            app.motherwavDropDownLabel = uilabel(app.WaveletBasedDamageDetectionTab);
            app.motherwavDropDownLabel.Position = [182 338 67 22];
            app.motherwavDropDownLabel.Text = 'mother wav';

            % Create motherwavDropDown
            app.motherwavDropDown = uidropdown(app.WaveletBasedDamageDetectionTab);
            app.motherwavDropDown.Items = {'Haar', 'db', 'sym', 'coif', 'fk'};
            app.motherwavDropDown.ValueChangedFcn = createCallbackFcn(app, @motherwavDropDownValueChanged, true);
            app.motherwavDropDown.Position = [263 338 133 22];
            app.motherwavDropDown.Value = 'Haar';

            % Create wavletnumEditFieldLabel
            app.wavletnumEditFieldLabel = uilabel(app.WaveletBasedDamageDetectionTab);
            app.wavletnumEditFieldLabel.Position = [182 308 66 22];
            app.wavletnumEditFieldLabel.Text = 'wavlet num';

            % Create wavletnumEditField
            app.wavletnumEditField = uieditfield(app.WaveletBasedDamageDetectionTab, 'numeric');
            app.wavletnumEditField.ValueChangedFcn = createCallbackFcn(app, @wavletnumEditFieldValueChanged, true);
            app.wavletnumEditField.HorizontalAlignment = 'center';
            app.wavletnumEditField.Enable = 'off';
            app.wavletnumEditField.Position = [261 308 135 22];
            app.wavletnumEditField.Value = 5;

            % Create RunDamageDetectionAlgorithmButton
            app.RunDamageDetectionAlgorithmButton = uibutton(app.WaveletBasedDamageDetectionTab, 'push');
            app.RunDamageDetectionAlgorithmButton.ButtonPushedFcn = createCallbackFcn(app, @RunDamageDetectionAlgorithmButtonPushed, true);
            app.RunDamageDetectionAlgorithmButton.Icon = 'go_arrow_next_up_green_forward-512.png';
            app.RunDamageDetectionAlgorithmButton.IconAlignment = 'bottom';
            app.RunDamageDetectionAlgorithmButton.VerticalAlignment = 'top';
            app.RunDamageDetectionAlgorithmButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.RunDamageDetectionAlgorithmButton.Position = [183 24 213 47];
            app.RunDamageDetectionAlgorithmButton.Text = 'Run Damage Detection Algorithm';

            % Create FilteringLowPathPanel
            app.FilteringLowPathPanel = uipanel(app.WaveletBasedDamageDetectionTab);
            app.FilteringLowPathPanel.Title = 'Filtering (Low Path)';
            app.FilteringLowPathPanel.Position = [183 216 214 82];

            % Create Switch
            app.Switch = uiswitch(app.FilteringLowPathPanel, 'slider');
            app.Switch.Items = {'off', 'Apply'};
            app.Switch.ValueChangedFcn = createCallbackFcn(app, @SwitchValueChanged, true);
            app.Switch.Position = [21 45 23 10];
            app.Switch.Value = 'off';

            % Create cuttoffSpinnerLabel
            app.cuttoffSpinnerLabel = uilabel(app.FilteringLowPathPanel);
            app.cuttoffSpinnerLabel.Position = [115 33 38 22];
            app.cuttoffSpinnerLabel.Text = 'cuttoff';

            % Create cuttoffSpinner
            app.cuttoffSpinner = uispinner(app.FilteringLowPathPanel);
            app.cuttoffSpinner.Enable = 'off';
            app.cuttoffSpinner.Position = [154 33 58 22];

            % Create orderSpinnerLabel
            app.orderSpinnerLabel = uilabel(app.FilteringLowPathPanel);
            app.orderSpinnerLabel.Position = [114 3 33 22];
            app.orderSpinnerLabel.Text = 'order';

            % Create orderSpinner
            app.orderSpinner = uispinner(app.FilteringLowPathPanel);
            app.orderSpinner.Enable = 'off';
            app.orderSpinner.Position = [153 3 57 22];

            % Create FreSamSpinnerLabel
            app.FreSamSpinnerLabel = uilabel(app.FilteringLowPathPanel);
            app.FreSamSpinnerLabel.Position = [7 3 52 22];
            app.FreSamSpinnerLabel.Text = 'Fre Sam';

            % Create FreSamSpinner
            app.FreSamSpinner = uispinner(app.FilteringLowPathPanel);
            app.FreSamSpinner.Enable = 'off';
            app.FreSamSpinner.Position = [58 3 57 22];

            % Create BaseLineCorrectionPanel
            app.BaseLineCorrectionPanel = uipanel(app.WaveletBasedDamageDetectionTab);
            app.BaseLineCorrectionPanel.Title = 'Base Line Correction';
            app.BaseLineCorrectionPanel.Position = [184 90 213 117];

            % Create Switch_2
            app.Switch_2 = uiswitch(app.BaseLineCorrectionPanel, 'slider');
            app.Switch_2.Items = {'off', 'Apply'};
            app.Switch_2.ValueChangedFcn = createCallbackFcn(app, @Switch_2ValueChanged, true);
            app.Switch_2.Position = [22 78 23 10];
            app.Switch_2.Value = 'off';

            % Create ButtonGroup_2
            app.ButtonGroup_2 = uibuttongroup(app.BaseLineCorrectionPanel);
            app.ButtonGroup_2.Visible = 'off';
            app.ButtonGroup_2.Position = [4 9 100 66];

            % Create thOrderButton
            app.thOrderButton = uiradiobutton(app.ButtonGroup_2);
            app.thOrderButton.Text = '1th Order';
            app.thOrderButton.Position = [11 42 72 22];
            app.thOrderButton.Value = true;

            % Create thOrderButton_2
            app.thOrderButton_2 = uiradiobutton(app.ButtonGroup_2);
            app.thOrderButton_2.Text = '2th Order';
            app.thOrderButton_2.Position = [11 20 72 22];

            % Create thOrderButton_3
            app.thOrderButton_3 = uiradiobutton(app.ButtonGroup_2);
            app.thOrderButton_3.Text = '3th Order';
            app.thOrderButton_3.Position = [11 -2 72 22];

            % Create cuttoffSpinner_2Label
            app.cuttoffSpinner_2Label = uilabel(app.BaseLineCorrectionPanel);
            app.cuttoffSpinner_2Label.Position = [113 47 38 22];
            app.cuttoffSpinner_2Label.Text = 'cuttoff';

            % Create cuttoffSpinner_2
            app.cuttoffSpinner_2 = uispinner(app.BaseLineCorrectionPanel);
            app.cuttoffSpinner_2.Enable = 'off';
            app.cuttoffSpinner_2.Position = [153 47 51 22];

            % Create orderSpinner_2Label
            app.orderSpinner_2Label = uilabel(app.BaseLineCorrectionPanel);
            app.orderSpinner_2Label.Position = [113 9 33 22];
            app.orderSpinner_2Label.Text = 'order';

            % Create orderSpinner_2
            app.orderSpinner_2 = uispinner(app.BaseLineCorrectionPanel);
            app.orderSpinner_2.Enable = 'off';
            app.orderSpinner_2.Position = [153 9 51 22];

            % Create dEditField_2Label
            app.dEditField_2Label = uilabel(app.WaveletBasedDamageDetectionTab);
            app.dEditField_2Label.Position = [182 431 25 22];
            app.dEditField_2Label.Text = 'd';

            % Create dEditField_2
            app.dEditField_2 = uieditfield(app.WaveletBasedDamageDetectionTab, 'numeric');
            app.dEditField_2.HorizontalAlignment = 'center';
            app.dEditField_2.Position = [264 431 132 22];

            % Show the figure after all components are created
            app.TCMS.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = DataProcessingApp

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.TCMS)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.TCMS)
        end
    end
end
