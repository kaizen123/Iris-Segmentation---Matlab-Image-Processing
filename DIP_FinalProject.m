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
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Green.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_brown_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Brown.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
    
end

function pushbutton_pink_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Pink.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_honey_Callback(hObject, eventdata, handles)
 global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Honey.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_sterlingGrey_Callback(hObject, eventdata, handles)
     global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_sterlingGrey.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_blue_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Blue.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_violet_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Violet.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_grey_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Grey.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_turquoise_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Turquoise.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_trueSapphire_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_trueSapphire.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_red_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Red.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_hazel_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_Hazel.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_gemstoneGreen_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_GemstoneGreen.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end

function pushbutton_brilliantBlue_Callback(hObject, eventdata, handles)
    global path;
    global bbox;
    global computeEye;
    global pupilCentersFinal; 
    global pupilRFinal; 
    global irisCentersFinal; 
    global irisRFinal;
    image = imread(path);
    [testImage, bbox, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal] = changeEyeColor(image, 'color_BrilliantBlue.png', bbox, computeEye, pupilCentersFinal, pupilRFinal, irisCentersFinal, irisRFinal);
    computeEye = 0;
    imshow(testImage);
end


function pushbutton_uploadPortrait_Callback(hObject, eventdata, handles)
    axes(handles.portraitHolder)
    global path;
    global computeEye;
    computeEye = 1;
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
