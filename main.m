%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is the skeleton code of PA1 in IC614 Computer Vision.               %
% It will help you to implement the Structure-from-Motion method easily.   %
% Using this skeleton is recommended, but it's not necessary.              %
% You can freely modify it or you can implement your own program.          %
% If you have a question, please send me an email to sunghoonim@dgist.ac.kr%
%                                                      Prof. Sunghoon Im   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  202022010 김진회 two-view initialization
%   non-Marked --> self implementation
%       Marked --> Copied or Refered
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for-practice I made it for left-coordinate system to compare with
% internal matlab function(they use it....)
% may be there are some confusions...


close all;
clear all;

addpath('Givenfunctions');
addpath('vlfeat-0.9.21');
%% read images and define camera intrinsics
% given datasets
image1 = rgb2gray(imread('data/sfm01.JPG'));
image2 = rgb2gray(imread('data/sfm02.JPG'));
colorImage1 = imread('data/sfm01.JPG');
colorImage2 = imread('data/sfm02.JPG');

% own datasets
% image1 = rgb2gray(imread('data/sfm01.JPG'));
% image2 = rgb2gray(imread('data/sfm02.JPG'));
% colorImage1 = imread('data/sfm01.JPG');
% colorImage2 = imread('data/sfm02.JPG');

% camera intrinsics for essential matrix decomposition and triangulation
% given datasets
temp      =       [ 1698.873755   0.000000       971.7497705;
                    0.000000      1698.8796645   647.7488275;
                    0.000000      0.000000       1.000000 ];
% own dataset IntrinsicMatrix
temp2 = [2947.63139413012,  0,                   2009.35816825727;
         0,                 2955.26831604551,    1479.60847982218;
         0,                 0,                   1];