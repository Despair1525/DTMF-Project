function varargout = decode(varargin)
% DECODE M-file for decode.fig
%      DECODE, by itself, creates a new DECODE or raises the existing
%      singleton*.
%
%      H = DECODE returns the handle to a new DECODE or the handle to
%      the existing singleton*.
%
%      DECODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DECODE.M with the given input arguments.
%
%      DECODE('Property','Value',...) creates a new DECODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before decode_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to decode_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help decode

% Last Modified by GUIDE v2.5 08-Nov-2021 14:21:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @decode_OpeningFcn, ...
                   'gui_OutputFcn',  @decode_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before decode is made visible.
function decode_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to decode (see VARARGIN)

% Choose default command line output for decode
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes decode wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = decode_OutputFcn(~, ~, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Excute Code 

% --- Executes on button press in b1.
function b1_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'1'));
%% ok 
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=697;f2=1209;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;
sound(y,fs)
subdecode;
% --- Executes on button press in b2.
function b2_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'2'));
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=697;f2=1336;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;
sound(y,fs)
subdecode;
% --- Executes on button press in A.
function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=697;f2=1663;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in b3.
function b3_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'3'));
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=697;f2=1447;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in b4.
function b4_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'4'));
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=770;f2=1209;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in b5.
function b5_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'5'));
% hObject    handle to b5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=770;f2=1336;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in B.
function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=770;f2=1633;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in b6.
function b6_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'6'));
% hObject    handle to b6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=770;f2=1477;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
%--- Executes on button press in b7.
function b7_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'7'));
% hObject    handle to b7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=852;f2=1209;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in b8.
function b8_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'8'));
% hObject    handle to b8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=852;f2=1336;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in C.
function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=852;f2=1633;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in b9.
function b9_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'9'));
% hObject    handle to b9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=852;f2=1477;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in ba.
function ba_Callback(hObject, eventdata, handles)
% hObject    handle to ba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=941;f2=1209;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in b0.
function b0_Callback(hObject, eventdata, handles)
S = get(handles.number,'String');
set(handles.number,'String',strcat(S,'0'));
% hObject    handle to b0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=941;f2=1336;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in D.
function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=941;f2=1633;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs)
subdecode;
% --- Executes on button press in bn.
function bn_Callback(hObject, eventdata, handles)
% hObject    handle to bn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L = 1500;
fs=8000;
T = 1/fs;
t=(0:L-1)*T;

f1=941;f2=1477;
y1=.25*sin(2*pi*f1*t);
y2=.25*sin(2*pi*f2*t);
y=y1+y2;sound(y,fs);
subdecode;



% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes during object deletion, before destroying properties.
% hObject    handle to info (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame2.
% hObject    handle to frame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
% hObject    handle to frame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
% hObject    handle to frame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame2.
% hObject    handle to frame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function number_Callback(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of number as text
%        str2double(get(hObject,'String')) returns contents of number as a double


% --- Executes during object creation, after setting all properties.
function number_CreateFcn(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
set(handles.number,'String','');
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function reset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function fig2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fig2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate fig2
