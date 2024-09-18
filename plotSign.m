% Plot of sample materials from USGS Convolved Spectral Library for NASA/JPL AVIRIS 
% By: Roozbeh Rajabi (r.rajabi@modares.ac.ir) , Fall 2013
% Copyright www.roozbehrajabi.net

clc; clear all; close all;
load s06av95a;

figure; hold on;
[wlenS, IX] = sort(wlen); 
ind=[30 61 103 114 125 153];
plot(wlenS,sign(IX,ind),'LineWidth',2.25)
xlabel('Wavelenghts(\mum)')
ylabel('Reflectance')
for i=1:size(ind,2)
    a=strsplit(names(ind(i),:),'s06av95');
    name(i)=a(1);
end
legend(name)
axis([wlen(1) wlen(end) 0 1]);