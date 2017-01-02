%******   main   ******

%clear command Window, variables and figures
clc
clear variables
close all
%add subfolders to PATH
addpath(genpath(pwd))


numOfSubintervals=10;
h=1.0/numOfSubintervals;
I=linspace(0.0, 1.0, numOfSubintervals+1);

ansatzFunctions=BilinearAnsatzfunction.empty(numOfSubintervals*numOfSubintervals, 0);
for i = I(2:(length(I)-1))
    for j = I(2:(length(I)-1))
        fun = BilinearAnsatzfunction();
        fun.Px=j;
        fun.Py=i;
        fun.h=h;
        ansatzFunctions(end+1)=fun;
    end
end



tic





toc

