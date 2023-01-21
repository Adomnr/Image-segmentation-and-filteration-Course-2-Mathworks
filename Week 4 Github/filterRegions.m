function [BW_out,properties] = filterRegions(BW_in)
%filterRegions  Filter BW image using auto-generated code from imageRegionAnalyzer app.
%  [BW_OUT,PROPERTIES] = filterRegions(BW_IN) filters binary image BW_IN
%  using auto-generated code from the imageRegionAnalyzer app. BW_OUT has
%  had all of the options and filtering selections that were specified in
%  imageRegionAnalyzer applied to it. The PROPERTIES structure contains the
%  attributes of BW_out that were visible in the app.

% Auto-generated by imageRegionAnalyzer app on 18-Jan-2023
%---------------------------------------------------------

BW_out = BW_in;

% Remove portions of the image that touch an outside edge.
BW_out = imclearborder(BW_out);

% Filter image based on image properties.
BW_out = bwpropfilt(BW_out, 'Area', [22000, 25000]);

% Get properties.
properties = regionprops(BW_out, {'Area', 'Eccentricity'});

% Uncomment the following line to return the properties in a table.
% properties = struct2table(properties);
end