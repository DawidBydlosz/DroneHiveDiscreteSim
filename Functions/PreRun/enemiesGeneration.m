function [ enemiesVector ] = enemiesGeneration( enemies, difficulty, hardness, diffmode, hardnessmode )
%ENEMIESGENERATION Summary of this function goes here
%   Detailed explanation goes here
    
    
    enemiesVector = Enemy.empty(enemies,0);
    for i = 1:enemies
        if diffmode == 'default'
            tmpDiff = difficulty;
        else
            tmpDiff = randi([(difficulty-diffmode)  (difficulty+diffmode)],1,1);
        end
        if hardnessmode == 'default'
            tmpHard = hardness;
        else
            tmpHard = randi([(hardness-hardnessmode)  (hardness+hardnessmode)],1,1);
        end
        enemiesVector(i) = Enemy(tmpDiff,tmpHard);
    end
    
end

