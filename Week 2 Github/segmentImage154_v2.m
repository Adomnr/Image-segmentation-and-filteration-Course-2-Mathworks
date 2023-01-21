function [BW,maskedImage] = segmentImage154_v2(X)
%segmentImage Segment image using auto-generated code from imageSegmenter app
%  [BW,MASKEDIMAGE] = segmentImage(X) segments image X using auto-generated
%  code from the imageSegmenter app. The final segmentation is returned in
%  BW, and a masked image is returned in MASKEDIMAGE.

% Auto-generated by imageSegmenter app on 07-Jan-2023
%----------------------------------------------------

X = rgb2gray(X);

% Threshold image - global threshold
BW = imbinarize(X);

% Invert mask
BW = imcomplement(BW);

% Close mask with disk
radius = 5;
decomposition = 0;
se = strel('disk', radius, decomposition);
BW = imclose(BW, se);

% Open mask with line
length = 17.000000;
angle = 45.000000;
se = strel('line', length, angle);
BW = imopen(BW, se);

% Create masked image.
maskedImage = X;
maskedImage(~BW) = 0;
end

