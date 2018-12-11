function varargout = DIP_FinalProject(varargin)
% DIP_FINALPROJECT MATLAB code for DIP_FinalProject.fig
%      DIP_FINALPROJECT, by itself, creates a new DIP_FINALPROJECT or raises the existing
%      singleton*.
%
%      H = DIP_FINALPROJECT returns the handle to a new DIP_FINALPROJECT or the handle to
%      the existing singleton*.
%
%      DIP_FINALPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIP_FINALPROJECT.M with the given input arguments.
%
%      DIP_FINALPROJECT('Property','Value',...) creates a new DIP_FINALPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DIP_FinalProject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DIP_FinalProject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DIP_FinalProject

% Last Modified by GUIDE v2.5 11-Dec-2018 00:42:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DIP_FinalProject_OpeningFcn, ...
                   'gui_OutputFcn',  @DIP_FinalProject_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
end

% --- Executes just before DIP_FinalProject is made visible.
function DIP_FinalProject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DIP_FinalProject (see VARARGIN)

% Choose default command line output for DIP_FinalProject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DIP_FinalProject wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end


% --- Outputs from this function are returned to the command line.
function varargout = DIP_FinalProject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end



% --- Executes on button press in pushbutton_green.
function pushbutton_green_Callback(hObject, eventdata, handles)
    global path;
    [testImage] = changeEyeColor(imread(path), 'color_Green.png');
    imshow(testImage);
end

function pushbutton_brown_Callback(hObject, eventdata, handles)
    global path;
    [testImage] = changeEyeColor(imread(path), 'color_Brown.png');
    imshow(testImage);
    
end

function pushbutton_pink_Callback(hObject, eventdata, handles)
    global path;
    [testImage] = changeEyeColor(imread(path), 'color_Pink.png');
    imshow(testImage);
end

function pushbutton_honey_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_Honey.png');
    imshow(testImage);
end

function pushbutton_sterlingGrey_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_SterlingGrey.png');
    imshow(testImage);
end

function pushbutton_blue_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_Blue.png');
    imshow(testImage);
end

function pushbutton_violet_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_Violet.png');
    imshow(testImage);
end

function pushbutton_grey_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_Grey.png');
    imshow(testImage);
end

function pushbutton_turquoise_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_Turquoise.png');
    imshow(testImage);
end

function pushbutton_trueSapphire_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_TrueSapphire.png');
    imshow(testImage);
end

function pushbutton_red_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_Red.png');
    imshow(testImage);
end

function pushbutton_hazel_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_Hazel.png');
    imshow(testImage);
end

function pushbutton_gemstoneGreen_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_GemstoneGreen.png');
    imshow(testImage);
end

function pushbutton_brilliantBlue_Callback(hObject, eventdata, handles)
    global path;
    changeEyeColor(imread(path), 'color_BrilliantBlue.png');
    imshow(testImage);
end


function pushbutton_uploadPortrait_Callback(hObject, eventdata, handles)
    axes(handles.portraitHolder)
    global path;
    path = uigetfile('*.*');
    matlabImage = imread(path);
    image(matlabImage)
    axis off
    axis image
end


% --- Executes on button press in pushbutton_savePortrait.
function pushbutton_savePortrait_Callback(hObject, eventdata, handles)
    F = getframe(handles.portraitHolder);
    Image = frame2im(F);
    imwrite(Image, 'New Eyes.jpg')
end


function changeEyeColor2(portrait, colorImage)
    %%%
    %%%   IMPORTANT VARIABLES
    %%%
    brightnessScalar = 1.5;
    blurScalar = 15;
    blurSigma = 1.8;
    pupilRadii = [22 66];
    irisRadii = [66 150];
    houghSensitivity = 0.80;
    houghSensitivityBase = houghSensitivity;
    
    image = portrait;
    image = imresize(image, [NaN 500]);
    original = image;
    image = rgb2gray(image);
    %figure, imshow(image), axis image, title('Original Image');
    [rows,columns] = size(image);

    % Remove glare from eye
    image =imcomplement(imfill(imcomplement(image),'holes'));
    %figure, imshow(image), axis image, title('Glare-Fixed Image');

    % Brighten and increase contrast
    image = imadjust(image);
    image = imadjust(image,[],[],1/brightnessScalar);
    image = imadjust(image);
    % figure, imshow(image), axis image, title('Brightened Image');



    %%%
    %%%   CANNY EDGE DETECTION
    %%%

    % PHASE 1 - Gradient Filtering

    % Gaussian Filter
    kernal_size = blurScalar;
    kernal_padding = floor(kernal_size/2);
    sigma = blurSigma;
    filter = zeros(kernal_size);

    norm = 0;
    for col = 1 : kernal_size
        for row = 1 : kernal_size
           x = (col-(kernal_padding+1))^2 + (row-(kernal_padding+1))^2;
           filter(col,row) = exp(-x/(2*sigma^2));
           norm = norm + filter(col,row);
        end
    end
    filter = filter / norm;
    gaussian_image = conv2(image, filter, 'valid');
    %figure, imshow(gaussian_image, []), axis image, title('Gaussian Blurred Image');

    [Gx, Gy] = gradient(filter);
    Fx = conv2(gaussian_image, Gx, 'same');
    Fx = imcomplement(Fx);
    Fy = conv2(gaussian_image, Gy, 'same');

    mag = sqrt((Fx.^2)+(Fy.^2));
    %figure, imshow(mag, []), axis image, title('Magnitude');
    D = (atan2(Fy,Fx))*180/pi;
    %figure, imshow(D, []), axis image, title('Theta');

    % PHASE 2 - Nonmaximum Suppression

    [newX,newY] = size(D);
    newD = zeros(newX,newY);
    for x = 1 : newX
        for y = 1 : newY

            if D(x,y) < 0
                D(x,y) = D(x,y) + 360; % makes all directions positive
            end

            D(x,y) = mod(D(x,y), 180);

            if  D(x,y) <= 22.5
                newD(x,y) = 0;
            elseif D(x,y) <= 67.5
                newD(x,y) = 45;
            elseif D(x,y) <= 112.5
                newD(x,y) = 90;
            elseif D(x,y) <= 157.5
                newD(x,y) = 135;
            elseif D(x,y) <= 180
                newD(x,y) = 0;

            end
        end
    end

    I = zeros(newX, newY);
    for i = 2 : newX-1
        for j = 2 : newY-1
            if (newD(i,j)==0)
                I(i,j) = (mag(i,j) == max([mag(i,j), mag(i,j+1), mag(i,j-1)]));
            elseif (newD(i,j)==45)
                I(i,j) = (mag(i,j) == max([mag(i,j), mag(i+1,j-1), mag(i-1,j+1)]));
            elseif (newD(i,j)==90)
                I(i,j) = (mag(i,j) == max([mag(i,j), mag(i+1,j), mag(i-1,j)]));
            elseif (newD(i,j)==135)
                I(i,j) = (mag(i,j) == max([mag(i,j), mag(i+1,j+1), mag(i-1,j-1)]));
            end
        end
    end
    I = I.*mag;
    %figure, imshow(I, []), axis image, title('Non-Max Suppressed');

    % PHASE 3 - Hysteresis Thresholding

    low = 0.05 * max(max(I));
    high = 0.20 * max(max(I));
    result = zeros (newX, newY);
    for i = 1  : newX
        for j = 1 : newY
            if I(i, j) < low
                result(i, j) = 0;
            elseif I(i, j) > high
                result(i, j) = 1;
            elseif I(i+1,j)>high || I(i-1,j)>high || I(i,j+1)>high || I(i,j-1)>high || I(i-1, j-1)>high || I(i-1, j+1)>high || I(i+1, j+1)>high || I(i+1, j-1)>high
                result(i,j) = 1;
            end
        end
    end
    finalEdges = uint8(result.*255);
    %figure, imshow(finalEdges, []), axis image, title('Final Edges');



    %%%
    %%%   HOUGH TRANSFORM PUPIL DETECTION
    %%%

    %figure, imshow(image), axis image, title('After Manipulation');
    %axes(handles.portraitHolder)
    imshow(image)

    [x, y] = size(original);
    crop = imcrop(original, [kernal_padding, kernal_padding, y-kernal_padding, x-kernal_padding] );
    %figure, imshow(crop), axis image, title('Pupil / Iris Detection');
    %axes(handles.portraitHolder)
    imshow(crop)

    pupilCenters = [];
    while (size(pupilCenters) ~= 1) & (houghSensitivity ~= 1.0)
        [pupilCenters, pupilR] = imfindcircles(finalEdges, pupilRadii, 'Sensitivity', houghSensitivity);
        houghSensitivity = houghSensitivity + 0.01;
    end
    "Pupil"
    houghSensitivity
    houghSensitivity = houghSensitivityBase;
    viscircles(pupilCenters, pupilR, 'Color', 'b');

    irisCenters = [];
    while (size(irisCenters) ~= 1) & (houghSensitivity ~= 1.0)
        [irisCenters, irisR] = imfindcircles(finalEdges, irisRadii, 'Sensitivity', houghSensitivity);
       houghSensitivity = houghSensitivity + 0.01;
    end
    "Iris"
    houghSensitivity
    houghSensitivity = houghSensitivityBase;
    viscircles(irisCenters, irisR, 'Color', 'r');









    %%%
    %%%   Eye Mask Overlaying
    %%%

    testImage = crop;
    bw = rgb2gray(crop);
    bwImage = cat(3, bw, bw, bw);

    %colorFile = uigetfile('*.*');
    %colorMask = imread(colorFile);
    colorMask = colorImage;
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

    %figure, imshow(testImage), axis image, title('Color Addition');
    %axes(handles.portraitHolder)
    imshow(testImage)
    
end
