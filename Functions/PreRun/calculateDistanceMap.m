function [ distanceMap ] = calculateDistanceMap(position ,s)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here

distanceMap = zeros(s, s);
for x = 1:s
    for y = 1:s
        distanceMap(x,y) = abs(position.posX - x) + abs(position.posY - y);
    end
end

end
