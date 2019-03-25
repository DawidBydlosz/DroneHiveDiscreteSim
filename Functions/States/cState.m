function [ simulationData ] = cState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;
tmp =i;

tmpDamage = rand * simulationData.enemies(size(simulationData.enemies,2)).difficulty;
tmpDealt = rand * simulationData.robots(i).efficiency;
        

        if simulationData.obstacleStr < simulationData.waitingStr+1
            for a = 1:size(simulationData.robots,2)
                
                if (simulationData.robots(a).state =='W' || simulationData.robots(a).state == 'C') && simulationData.warningFlag == true
                    
                    simulationData.robots(a).efficiency = round(simulationData.robots(a).efficiency - tmpDamage );
                    if simulationData.robots(a).efficiency <= 0
                        simulationData.robots(a).state = 'F';
                    else
                        simulationData.robots(i).speed = min(1, ...
                            round(simulationData.robots(i).speed * simulationData.robots(i).efficiency / simulationData.constants.RobotsEfficiency));
                    end
                    
                    simulationData.enemies(size(simulationData.enemies,2)).hardness = round(...
                        simulationData.enemies(size(simulationData.enemies,2)).hardness - tmpDealt);
                    if simulationData.enemies(size(simulationData.enemies,2)).hardness <= 0
                        simulationData.enemies(size(simulationData.enemies,2)) = [];
                        simulationData.warningFlag = false;
                    end
                    
                end           
                if simulationData.robots(a).state =='M'
                            simulationData.robots(a).state = 'E';
                end
                if simulationData.warningFlag == false
                    for rr = 1:size(simulationData.robots,2)
                    if simulationData.robots(rr).state =='C' || simulationData.robots(rr).state =='W'
                            simulationData.robots(rr).state = 'E';
                    end
                    end
                end
                
                
            end
        else
            
            for a = 1:size(simulationData.robots,2)
                if simulationData.robots(a).state ~='W' && simulationData.robots(a).state ~= 'C' && simulationData.robots(a).state ~= 'M'...
                        && simulationData.robots(a).state ~= 'V' && simulationData.robots(a).state ~= 'F'
                    
                    simulationData.robots(a).state = 'M';
                    travelTime = simulationData.constants.OutOfMapRouteLenght + simulationData.robots(a).backtrackPath(simulationData.robots(a).position.posX, simulationData.robots(a).position.posY);
                    travelTime = travelTime + simulationData.robots(simulationData.issuer).backtrackPath(simulationData.robots(simulationData.issuer).position.posX, simulationData.robots(simulationData.issuer).position.posY);
                    simulationData.robots(a).position = simulationData.engagementPosition;
                    simulationData.robots(a).engagement = travelTime;
                end           
                
            end
            
            
            simulationData.waitingStr = 1;
        end



end

