function [ result ] = isValidNode( x, y ,size)
%ISVALIDNODE Summary of this function goes here
%   Detailed explanation goes here

result = (x >= 0) && (x < size) &&(y >= 0) && (y < size); 
end

