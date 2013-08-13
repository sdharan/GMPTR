function varargout = MainPage(varargin)
% MAINPAGE M-file for MainPage.fig
%      MAINPAGE, by itself, creates a new MAINPAGE or raises the existing
%      singleton*.
%
%      H = MAINPAGE returns the handle to a new MAINPAGE or the handle to
%      the existing singleton*.
%
%      MAINPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINPAGE.M with the given input arguments.
%
%      MAINPAGE('Property','Value',...) creates a new MAINPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MainPage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MainPage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MainPage

% Last Modified by GUIDE v2.5 14-Mar-2010 15:34:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainPage_OpeningFcn, ...
                   'gui_OutputFcn',  @MainPage_OutputFcn, ...
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


% --- Executes just before MainPage is made visible.
function MainPage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MainPage (see VARARGIN)

% Choose default command line output for MainPage
handles.output = hObject;
set(handles.uipanel1,'SelectionChangeFcn',@fontSelect_buttongroup_SelectionChangeFcn);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MainPage wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.axes1);
imshow('C:\Documents and Settings\Administrator\My Documents\My Pictures\no image.png');
axes(handles.axes5);
imshow('C:\Documents and Settings\Administrator\My Documents\My Pictures\no image.png');



% --- Outputs from this function are returned to the command line.
function varargout = MainPage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function matrixpath_Callback(hObject, eventdata, handles)
% hObject    handle to matrixpath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matrixpath as text
%        str2double(get(hObject,'String')) returns contents of matrixpath as a double


% --- Executes during object creation, after setting all properties.
function matrixpath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matrixpath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in matrix_browse.
function matrix_browse_Callback(hObject, eventdata, handles)
% hObject    handle to matrix_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName,FilterIndex] = uigetfile();
s=[PathName FileName];
if(length(s)~=2)
    set(handles.matrixpath,'String',s);
else
    set(handles.matrixpath,'String','Please Choose Matrix');
end



function testpath_Callback(hObject, eventdata, handles)
% hObject    handle to testpath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of testpath as text
%        str2double(get(hObject,'String')) returns contents of testpath as a double


% --- Executes during object creation, after setting all properties.
function testpath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to testpath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in test_browse.
function test_browse_Callback(hObject, eventdata, handles)
% hObject    handle to test_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName,FilterIndex] = uigetfile('*.png','ChooseImage');
s=[PathName FileName];
if(length(s)~=2)
    set(handles.testpath,'String',s);
else
    set(handles.testpath,'String','Please Choose Image');
end
axes(handles.axes1);
imshow(s);




function e_kmaxphase_Callback(hObject, eventdata, handles)
% hObject    handle to e_kmaxphase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_kmaxphase as text
%        str2double(get(hObject,'String')) returns contents of e_kmaxphase as a double


% --- Executes during object creation, after setting all properties.
function e_kmaxphase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_kmaxphase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e_kmaxmag_Callback(hObject, eventdata, handles)
% hObject    handle to e_kmaxmag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_kmaxmag as text
%        str2double(get(hObject,'String')) returns contents of e_kmaxmag as a double


% --- Executes during object creation, after setting all properties.
function e_kmaxmag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_kmaxmag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function noh_Callback(hObject, eventdata, handles)
% hObject    handle to noh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noh as text
%        str2double(get(hObject,'String')) returns contents of noh as a double


% --- Executes during object creation, after setting all properties.
function noh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function now_Callback(hObject, eventdata, handles)
% hObject    handle to now (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of now as text
%        str2double(get(hObject,'String')) returns contents of now as a double


% --- Executes during object creation, after setting all properties.
function now_CreateFcn(hObject, eventdata, handles)
% hObject    handle to now (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in loadtrainmatrix.
function loadtrainmatrix_Callback(hObject, eventdata, handles)
% hObject    handle to loadtrainmatrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.radio_orl,'value')==1)
    load('1');
elseif(get(handles.radio_yale,'value')==1)
    load ('2');
elseif(get(handles.radio_feret,'value')==1)
    load('3');
else
    load(get(handles.matrixpath,'String'));
end
        


% --- Executes on button press in viewgaborphaseoutput.
function viewgaborphaseoutput_Callback(hObject, eventdata, handles)
% hObject    handle to viewgaborphaseoutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kmax=get(handles.e_kmaxphase,'String');
kmax=str2num(kmax);
path=get(handles.testpath,'String');
if(isempty(path) || strcmp(path,'Please Choose Image'))
    errordialog2('Title','Check Path String');
else
  I=imread(path);
  out=showGaborPhasePlot(I,kmax);
hold on;
end



% --- Executes on button press in viewgabormagoutput.
function viewgabormagoutput_Callback(hObject, eventdata, handles)
% hObject    handle to viewgabormagoutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kmax=get(handles.e_kmaxmag,'String');
kmax=str2num(kmax);
path=get(handles.testpath,'String');
if(isempty(path) || strcmp(path,'Please Choose Image'))
    errordialog2('Title','Check Path String');
else
  I=imread(path);
  out=showGaborMagPlot(I,kmax);
  hold on;
end;




% --- Executes on button press in viewgamma.
function viewgamma_Callback(hObject, eventdata, handles)
% hObject    handle to viewgamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kmax=get(handles.e_kmaxmag,'String');
kmax=str2num(kmax);
path=get(handles.testpath,'String');
if(isempty(path) || strcmp(path,'Please Choose Image'))
    errordialog2('Title','Check Path String');
else
  I=imread(path);
showGaborMagHistFit(I,kmax)
hold on;
end
% --- Executes on button press in viewgaussian.
function viewgaussian_Callback(hObject, eventdata, handles)
% hObject    handle to viewgaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kmax=get(handles.e_kmaxphase,'String');
kmax=str2num(kmax);
path=get(handles.testpath,'String');
if(isempty(path) || strcmp(path,'Please Choose Image'))
    errordialog2('Title','Check Path String');
else
    disp(path);
  I=imread(path);
  
showGaborPhaseHistFit(I,kmax)
hold on;
end

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1



% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes5


% --- Executes on button press in loadimage.
function loadimage_Callback(hObject, eventdata, handles)
% hObject    handle to loadimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
s=get(handles.testpath,'String');
disp(s);
if(strcmp(s,''))
    disp('error');
else
    imshow(s);
end




function fontSelect_buttongroup_SelectionChangeFcn(hObject, eventdata)
 
%retrieve GUI data, i.e. the handles structure
handles = guidata(hObject); 
 
switch get(eventdata.NewValue,'Tag')   % Get Tag of selected object
    case 'radio_orl'
      %execute this code when fontsize08_radiobutton is selected
      disp('1');
 
    case 'radio_yale'
      %execute this code when fontsize12_radiobutton is selected
      disp('2');
 
    case 'radio_feret'
      %execute this code when fontsize16_radiobutton is selected  
      disp('3');
    
    case 'radio_other'
      %execute this code when fontsize16_radiobutton is selected  
      disp('4');
    otherwise
       % Code for when there is no match.
       
 
end
%updates the handles structure
guidata(hObject, handles);



function outputlabel_Callback(hObject, eventdata, handles)
% hObject    handle to outputlabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outputlabel as text
%        str2double(get(hObject,'String')) returns contents of outputlabel as a double


% --- Executes during object creation, after setting all properties.
function outputlabel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outputlabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in getgmptrfeatures.
function getgmptrfeatures_Callback(hObject, eventdata, handles)
% hObject    handle to getgmptrfeatures (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vector;
I=imread(get(handles.testpath,'String'));
kmax1=get(handles.e_kmaxmag,'String');
kmax1=str2num(kmax1);
kmax2=get(handles.e_kmaxphase,'String');
kmax2=str2num(kmax2);
noh=get(handles.noh,'String');
noh=str2num(noh);
now=get(handles.now,'String');
now=str2num(now);
vector=ExtractFeature(I,noh,now,kmax1,kmax2);



% --- Executes on button press in getgprtfeatures.
function getgprtfeatures_Callback(hObject, eventdata, handles)
% hObject    handle to getgprtfeatures (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vector;
I=imread(get(handles.testpath,'String'));
kmax2=get(handles.e_kmaxphase,'String');
kmax2=str2num(kmax2);
noh=get(handles.noh,'String');
noh=str2num(noh);
now=get(handles.now,'String');
now=str2num(now);
vector=ExtractPhaseFeature(I,noh,now,kmax2);


% --- Executes on button press in getgmtrfeatures.
function getgmtrfeatures_Callback(hObject, eventdata, handles)
% hObject    handle to getgmtrfeatures (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vector;
I=imread(get(handles.testpath,'String'));
kmax1=get(handles.e_kmaxmag,'String');
kmax1=str2num(kmax1);
noh=get(handles.noh,'String');
noh=str2num(noh);
now=get(handles.now,'String');
now=str2num(now);
vector=ExtractPhaseFeature(I,noh,now,kmax1);


% --- Executes on button press in classify.
function classify_Callback(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.radio_orl,'value')==1)
    load('1');
elseif(get(handles.radio_yale,'value')==1)
    load ('2');
elseif(get(handles.radio_feret,'value')==1)
    load('3');
else
    load(get(handles.matrixpath,'String'));
end
global vector;
if(length(vector)==length(mat(0)))
[ThisLabel, DecisionValue]= SVMClass(vector', AlphaY, SVs, Bias, Parameters, nSV, nLabel);
if(ThisLabel ==ExtinctLabel)
    axes(handles.axes5);
    imshow('C:\Documents and Settings\Administrator\My Documents\My Pictures\nomatch.png');
    set(handles.outputlabel,'String','NO MATCH FOUND');
else
    i=ThisLabel;
    axes(handles.axes5);
    temp=i*factor(0)+1;
    str=[basepath int2str(temp) '.png'];
    imshow(str);
    set(handles.outputlabel,'String',ThisLabel+1);
end
else    
    errordialog1('Title','Check Matrix');
end



%user_response = errordialog1('Title','Check Matrix');
