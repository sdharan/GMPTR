function [ out] = showGaborPhaseHistFit(I,Kmax)
format long;
s= size(I);
R= s(1);
C = s(2);
% Kmax = 0.5*pi;
%%disp(Kmax);
f = sqrt( 2 );
Delt = 2 * pi;
Delt2 = Delt * Delt;
out=[];
for v = 0 : 4
    for u = 0 : 7
        %% generate the wavelets
        GW = GaborWavelet( R, C, Kmax, f, u, v, Delt2 );
        O=conv2fft(I,GW,'same');
        %% obtain the Phase and perform unit variance
        P=atan2(imag(O),real(O));
        M1 = (P)/ var(P);
        %% Obtain the histogram bins
        figure(3);
        subplot( 5, 8, v * 8 + u+1 ),histfit(M1(:),25);
    end
end


end