function [ maxx minx ] = subfun2( X )
%SUBFUN Summary of this function goes here
%   Detailed explanation goes here
maxx = max(X);
minx = min(X);

maxx = maxx * maxx;
minx = minx * minx;

end

