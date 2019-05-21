function [outImg ] = crop2divisibleSize( inImg,factor)
% *************************************************************************
% Video Super-Resolution with Convolutional Neural Networks
%
% crops the image, so that it is divisible by "factor"
% 
% 
% Version 1.0
%
% Created by:   Armin Kappeler
% Date:         03/04/2015
%
% *************************************************************************

%check, if dividable by upscale factor
imsize_original = size(inImg);
imsize = floor(imsize_original/factor)*factor;

if (sum(imsize(1:2)==imsize_original(1:2)) ~= 2) %if needed, crop
    outImg = imcrop(inImg, [1 1 imsize(2)-1 imsize(1)-1]);
else
    outImg = inImg;
end

end