function [ simulationData ] = eState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;

rTreshold = simulationData.coefficients.eCoefficients.rNode;

pTreshold = rTreshold + simulationData.coefficients.eCoefficients.pNode *...
            size(simulationData.enemies,2) / simulationData.map.notRevealed ;
             
hTreshold = pTreshold + simulationData.coefficients.eCoefficients.hNode *...
            size(simulationData.enemies,2)  / simulationData.map.notRevealed ;
        
dTreshold = hTreshold + simulationData.coefficients.eCoefficients.dNode *...
            size(simulationData.enemies,2)  / simulationData.map.notRevealed ;
        
tmpRandom = (dTreshold*simulationData.map.notRevealed/size(simulationData.enemies,2)/2)* rand(1,1);


simulationData.robots(i).distanceMap = calculateDistanceMap(simulationData.robots(i).position ,...
    simulationData.constants.MapSize);

    if tmpRandom <= rTreshold
        
        simulationData = proceedToRState(simulationData , i);
                
    elseif tmpRandom <= pTreshold && tmpRandom > rTreshold
        
        simulationData = proceedToPState(simulationData , i);
        
    elseif tmpRandom <= hTreshold && tmpRandom > pTreshold
        
        simulationData.robots(i).state = 'H';
        
    elseif tmpRandom <= dTreshold && tmpRandom > hTreshold
        
        simulationData.robots(i).state = 'D';
        
    else 
        
        simulationData = proceedToEState(simulationData , i);
        
    end

end

