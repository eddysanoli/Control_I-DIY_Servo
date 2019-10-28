%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\Gaby\Documents\4A2S\IE3006 - Control1\LAB_CONTROL1\GIT\Proyecto-Final-Control\toma1.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2019/10/23 11:14:51

%% Initialize variables.
filename = 'C:\Users\Gaby\Documents\4A2S\IE3006 - Control1\LAB_CONTROL1\GIT\Proyecto-Final-Control\toma1.csv';
delimiter = ',';

%% Format for each line of text:
%   column4: double (%f)
%	column5: double (%f)
%   column11: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%*q%*q%*q%f%f%*q%*q%*q%*q%*q%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN,  'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
t_1 = dataArray{:, 1};
CH1_1 = dataArray{:, 2};
CH2_1 = dataArray{:, 3};


%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;