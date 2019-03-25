classdef SimData
    %SIMDATA Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        enemies
        robots
        currentTime
        warningFlag
        victoryFlag
        failureFlag
        coefficients
        map
        constants
        fightingFlag
        obstacleStr
        issuer
        engagementPosition
        waitingStr
        
    end
    
    methods
        function SD = SimData(e,r,coeff,mp,consts)
         SD.enemies = e;
         SD.robots = r;
         SD.currentTime = 0;
         SD.warningFlag = false;
         SD.victoryFlag = false;
         SD.failureFlag = false;
         SD.coefficients = coeff;
         SD.map = mp;
         SD.constants = consts;
         SD.fightingFlag = false;
         SD.obstacleStr = 0;
         SD.currentTime = 0;
         SD.issuer;
         SD.engagementPosition;
         SD.waitingStr =0;
         end
    end
    
end

