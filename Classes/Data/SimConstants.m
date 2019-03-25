classdef SimConstants
    %SIMCONSTANTS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Enemies
        EnemiesDiff
        EnemiesHardness
        EnemiesDiffMode
        EnemiesHardnessMode
        Robots
        RobotsEfficiency
        RobotsEfficiencyMode
        RobotSpeed
        RobotsSpeedMode
        MapSize
        OutOfMapRouteLenght
        VictoryMode
        StartingHostages
        RepairStrenght
        maxTime
         
    end
    
    methods
        function SC = SimConstants(e,ed,eh,r,re,rs,m,o,ehm,ehd,rem,rsm,vm, sh, reps, maxT)
         SC.Enemies = e;
         SC.EnemiesDiff = ed;
         SC.EnemiesHardness = eh;
         SC.Robots = r;
         SC.RobotsEfficiency = re;
         SC.RobotSpeed = rs;
         SC.MapSize = m;
         SC.OutOfMapRouteLenght = o;
         SC.EnemiesDiffMode = ehm;
         SC.EnemiesHardnessMode = ehd;
         SC.RobotsEfficiencyMode = rem;
         SC.RobotsSpeedMode = rsm;
         SC.VictoryMode = vm;
         SC.StartingHostages = sh;
         SC.RepairStrenght = reps;
         SC.maxTime = maxT;
         end        
    end
    
end

