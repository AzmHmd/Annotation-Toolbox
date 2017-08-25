% with this code you are able to see the image and the respective
% annotation in one plot
% written by Azam Hamidinekoo, Aberystwyth University, 2017
% *************************************************************************
% -------------------------------------------------------------------------

% give reference to the image you want to plot
Imagefile = '/Users/azh2/Documents/Education/Aberystwyth/Gina/data/AT024_240343 002.png';
% give reference to the respective annotation from (tips, body, stem , ...)
% category
annotation = '/Users/azh2/Documents/Education/Aberystwyth/Gina/data/AT024_240343 002_Base.txt';

%% main body of the code:

I = imread(Imagefile);
fid = fopen(annotation,'r');

imshow(I);hold on;
tline = fgets(fid);
while ischar(tline)
    disp(tline)
    x = str2num(tline(1:strfind(tline,',')-1));
    y = str2num(tline(strfind(tline,',')+1:end));
    plot(x,y,'r*')
    tline = fgets(fid);
end

% end