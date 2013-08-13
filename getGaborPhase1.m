function [ out] = getGaborPhase1(I,Kmax)
format long;
s= size(I);
R= s(1);
C = s(2);
%%Kmax =.5*pi;
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
        %options = optimset('display', 'off', 'TolX', 1e-6, 'MaxIter', 10);
        %[vec1,alpha,beta] = ggmle(M1, options);
        phat=mle(M1(:));
        out=[out phat ];
        %%disp('x=');
        %%disp(alpha );
        %%disp(beta);
        %%figure(4);
        %%subplot( 5, 8, v * 8 + u+1 ),histfit(M1(:),25);
        %%figure(5);
        %%hist(x);

    end
end
end


        