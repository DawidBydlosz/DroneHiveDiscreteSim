function [  ] = hiveSimulation(simData)
%STATEPROCESSING Summary of this function goes here
%   Detailed explanation goes here

%% Prefix

simData.map.revealed = simData.map.revealed + size(simData.robots,2);
simData.map.notRevealed = simData.map.notRevealed -size(simData.robots,2);

for robs = 1:size(simData.robots,2)
    x = simData.robots(robs).startingPosition.posX;
    y = simData.robots(robs).startingPosition.posY;
    simData.map.roomsRevealed(x,y) = 1;
end

%% 

l=0;
e=0;
r=0;
w=0;
d=0;
p=0;
m=0;
c=0;
h=0;
f=0;

%%
prevState = simData.robots(1).state; 

while( ~simData.victoryFlag && ~simData.failureFlag && (simData.currentTime <= simData.constants.maxTime) )
    
    
    for i = 1: simData.constants.Robots
       for speed = 0:simData.robots(i).speed
           prevState = simData.robots(i).state;
           simData = stateProcessing(simData , i);
           
            fprintf('Iteracja : %i  Robot : %i  Stan: %c   Poprzedni: %c  Engagement: %i Health:  %d  Speed:  %d Wrogowie:  %i  Odkryto:  %i \n', simData.currentTime , i  ,simData.robots(i).state, prevState, simData.robots(i).engagement,simData.robots(i).efficiency,simData.robots(i).speed, size(simData.enemies,2),simData.map.revealed );
            
            
            
           if simData.robots(i).state == 'E'
               e = e +1;
           end
           if simData.robots(i).state == 'R'
               r = r +1;
           end
           if simData.robots(i).state == 'H'
               h = h +1;
           end
           if simData.robots(i).state == 'D'
               d = d +1;
           end
           if simData.robots(i).state == 'P'
               p = p +1;
           end
           if simData.robots(i).state == 'M'
               m = m +1;
           end
           if simData.robots(i).state == 'W'
               w = w +1;
           end
           if simData.robots(i).state == 'C'
               c = c +1;
           end
           if simData.robots(i).state == 'F'
               f = f +1;
           end
           
           l=l+1;
           
           
           
       end
    end
    if size(simData.enemies,2) <=0
        simData.victoryFlag = true;
    end
    if size(simData.robots,2) <=0
        simData.failureFlag = true;
    end    

    simData.currentTime = simData.currentTime +1;
end
fprintf('Iteracje:  %d Zwyciestwo:  %d Porazka : %d\n', simData.currentTime, simData.victoryFlag, simData.failureFlag)
fprintf('E : %f\n', e/l)
fprintf('R : %f\n', r/l)
fprintf('D : %f\n', d/l)
fprintf('P : %f\n', p/l)
fprintf('H : %f\n', h/l)
fprintf('C: %f\n', c/l)
fprintf('W : %f\n', w/l)
fprintf('M : %f\n', m/l)
fprintf('F : %f\n', f/l)

end
