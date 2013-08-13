function [ out ] = showGaborPhasePlot(I,Kmax)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
format long;
s= size(I);
R= s(1);
C = s(2);
% Kmax = 0.5*pi;
%%disp(Kmax);
f = sqrt( 2 );
Delt = 2 * pi;
Delt2 = Delt * Delt;
for v = 0 : 4
    for u = 0 : 7
        %% generate the wavelets
        GW = GaborWavelet( R, C, Kmax, f, u, v, Delt2 );
        O=conv2fft(I,GW,'same');
         %% obtain the Phase and perform unit variance
        P=atan2(imag(O),real(O));
        M1 = (P)/ var(P);
        %% Show the subplot
        figure(1);
        subplot( 5, 8, v * 8 + u+1 ),imshow ( P ,[]); 
    end
end
out=1;
end
