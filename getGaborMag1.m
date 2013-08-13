function [ out] = getGaborMag1(I,Kmax)
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
        %% obtain the magnitude and perform unit variance
        M=sqrt(real(O).^2+imag(O).^2);
        M1=M./var(M(:));
        %% Show the subplot
        %%figure(1);
        %%subplot( 5, 8, v * 8 + u+1 ),imshow ( M1 ,[]); 
        %% Save the image
        %%figure(3);
        %%h=imshow(M1,[]);
        %%fil = filesep();
        %%s=[despos fil int2str(v) int2str(u) '.png'];
        %%saveas(h,s); 
        %% Obtain the histogram bins
        %%hist(M(:),15);
        [alpha,beta]=gammle(M1(:));
        out=[out alpha beta];
        %%figure(4);
        %%subplot( 5, 8, v * 8 + u+1 ),histfit(M1(:),15,'gamma');
        %%figure(5);
        %%hist(x);
        %% Error Check
        %%filname=['wow' int2str(u) int2str(v) '.mat'];
        %%save(filname);
    end
end


end


        