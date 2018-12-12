%%%
%%%   Eye Mask Overlaying
%%%

testImage = crop;
bw = rgb2gray(crop);
bwImage = cat(3, bw, bw, bw);

colorFile = uigetfile('*.*');
colorMask = imread(colorFile);
colorMask = imresize(colorMask, [NaN floor(irisR(1)*2)]);
rgb2hsv(colorMask);

leftIrisBound = floor(irisCenters(1,1) - irisR(1));
topIrisBound = floor(irisCenters(1,2) - irisR(1));

leftPupilBound = floor(pupilCenters(1,1) - pupilR(1));
topPupilBound = floor(pupilCenters(1,2) - pupilR(1));

% Insert Iris Color
for i = 1 :  floor(irisR(1)*2)
    for j = 1 : floor(irisR(1)*2)
        if colorMask(i,j, 1) >= 12 || colorMask(i,j, 2) >= 12 || colorMask(i,j, 3) >= 12
            testImage(topIrisBound + i, leftIrisBound + j, 1) = bwImage(topIrisBound + i, leftIrisBound + j, 1);
            testImage(topIrisBound + i, leftIrisBound + j, 2) = bwImage(topIrisBound + i, leftIrisBound + j, 2);
            testImage(topIrisBound + i, leftIrisBound + j, 3) = bwImage(topIrisBound + i, leftIrisBound + j, 3);
        end
%         if testImage(topIrisBound + i, leftIrisBound + j, 1) >= 16 || testImage(topIrisBound + i, leftIrisBound + j, 2) >= 16 || testImage(topIrisBound + i, leftIrisBound + j, 3) >= 16
            testImage(topIrisBound + i, leftIrisBound + j, 1) = testImage(topIrisBound + i, leftIrisBound + j, 1) + colorMask(i,j, 1);
            testImage(topIrisBound + i, leftIrisBound + j, 2) = testImage(topIrisBound + i, leftIrisBound + j, 2) + colorMask(i,j, 2);
            testImage(topIrisBound + i, leftIrisBound + j, 3) = testImage(topIrisBound + i, leftIrisBound + j, 3) + colorMask(i,j, 3);
%         end
    end
end

figure, imshow(testImage), axis image, title('Color Addition');