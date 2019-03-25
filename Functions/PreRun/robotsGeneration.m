function [ robotsVector ] = robotsGeneration( Robots, RobotsEfficiency, RobotSpeed, RobotsEfficiencyMode, RobotsSpeedMode, StartingPositionsVector , mapSize )
%ENEMIESGENERATION Summary of this function goes here
%   Detailed explanation goes here
    
    
    robotsVector = Robot.empty(Robots,0);
    for i = 1:Robots
        if RobotsEfficiencyMode == 'default'
            tmpEff = RobotsEfficiency;
        else
            tmpEff = randi([(RobotsEfficiency-RobotsEfficiencyMode)  (RobotsEfficiency+RobotsEfficiencyMode)],1,1);
        end
        if RobotsSpeedMode == 'default'
            tmpSpeed = RobotSpeed;
        else
            tmpSpeed = randi([(RobotSpeed-RobotsSpeedMode)  (RobotSpeed+RobotsSpeedMode)],1,1);
        end
        robotsVector(i) = Robot(tmpEff,tmpSpeed,StartingPositionsVector(i),mapSize);
    end
    
end

