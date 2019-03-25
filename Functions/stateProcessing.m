function [ simulationData ] = stateProcessing(simData , i)
%STATEPROCESSING Summary of this function goes here
%   Detailed explanation goes here
    simulationData = simData;
    previousState = simulationData.robots(i).state;
    simulationData.robots(i).engagement;
    if previousState == 'F' || previousState == 'V'
    else 
        if simulationData.robots(i).efficiency <= 1/4 * simulationData.constants.RobotsEfficiency
            
            simulationData = proceedToRState(simulationData , i);
        end

        if previousState == 'R'
            simulationData.robots(i).efficiency = simulationData.robots(i).efficiency +...
                ( simulationData.constants.RobotsEfficiency - simulationData.robots(i).efficiency)/2;
            if simulationData.robots(i).efficiency > 0.85 * simulationData.constants.RobotsEfficiency
                simulationData.robots(i).speed = simulationData.constants.RobotSpeed;
            end
        end

        if simulationData.robots(i).engagement == 0
            if previousState == 'M' 
                simulationData.robots(i).state = 'W';
                
                    travelTime = simulationData.constants.OutOfMapRouteLenght + simulationData.robots(i).backtrackPath(simulationData.robots(i).position.posX, simulationData.robots(i).position.posY);
                    travelTime = travelTime + simulationData.robots(simulationData.issuer).backtrackPath(simulationData.robots(simulationData.issuer).position.posX, simulationData.robots(simulationData.issuer).position.posY);
                    simulationData.robots(i).position = simulationData.engagementPosition;
                    simulationData.robots(i).engagement = travelTime;
                
                
                simulationData = wState(simulationData , i);
            elseif previousState == 'W'
                simulationData.robots(i).state = 'W';
                simulationData = wState(simulationData , i);
            else 
                switch previousState
                    case 'E'
                        simulationData = eState(simulationData , i);
                    case 'P'
                        simulationData = pState(simulationData , i);
                    case 'H'
                        simulationData = hState(simulationData , i);
                    case 'D'
                        simulationData = dState(simulationData , i);
                    case 'C'
                        simulationData = cState(simulationData , i);
                    case 'R'
                        simulationData.robots(i).state = 'E';
                end
            end

        else
            if simulationData.robots(i).engagement >0
            simulationData.robots(i).engagement = simulationData.robots(i).engagement -1;
            else
                simulationData.robots(i).engagement =0;
            end
        end
    end
end

