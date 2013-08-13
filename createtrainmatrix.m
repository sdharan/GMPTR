function [] = createtrainmatrix(noh,now,K1,K2)
%%load('ORL_COmplete_7perface_GMPTR.mat');
mat=[];
Labels=[];
trainmatrix=[2,4,6,7,8,9,10];
testmatrix=[1,3,5];
for i=0:34
    for j=1:length(trainmatrix)
        path=['I:\Image DB\ORL\' int2str(i*10+trainmatrix(j)) '.png'];
        I=imread(path);
        vector=ExtractFeature(I,noh,now,K1,K2);    
        %tempmean=mean(vector);
        %tempstd=std(vector);
        %vector=(vector-tempmean)/tempstd;
        mat(end+1,:)=vector;
        Labels(end+1,:)=i;
        s=[int2str(i*10+j) 'of 400 processed'];
        disp(s);
        save('ORL_COmplete_7perface_GMPTR.mat');
    end
end
Samples=mat';
%Samples=mX';
[AlphaY, SVs, Bias, Parameters, nSV, nLabel] = SVMTrain(Samples, Labels');
outLabels=[];
correct_count=0;
count=0;
for i=35:39
    for j=1:length(testmatrix)
        count=count+1;
        path=['I:\Image DB\ORL\' int2str(i*10+testmatrix(j)) '.png'];
        I=imread(path);
        vector=ExtractFeature(I,noh,now,K1,K2);
        %%vector=getGaborMag1(I);
        [ThisLabel, DecisionValue]= SVMClass(vector', AlphaY, SVs, Bias, Parameters, nSV, nLabel);
        outLabels=[outLabels;ThisLabel];
        if(ThisLabel==i) correct_count=correct_count+1;
        end
        disp([int2str(correct_count) ' of ' int2str(count)]);
    end
end
disp(outLabels);
save('Outlabels_GMPTR.mat');
end

