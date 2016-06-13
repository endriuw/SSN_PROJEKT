function callbackButton(numButton, handles)

global CIRCLE SHARP

% get shared data
board=getappdata(gcbf,'board');
net=getappdata(gcbf,'net');
current=getappdata(gcbf,'current');

% if is not empty
y = ceil(numButton/5);
if mod(numButton, 5) == 0
    x = mod(numButton-1, 5) + 1;
else
    x = mod(numButton, 5);
end

if board(x, y) ~= 0 
    set(handles.end_status,'String','Try again');
% if its not user turn
elseif current ~= SHARP
    set(handles.end_status,'String','Not your turn');
else
    % check proper field on board
    board = playUser(4, handles, board, numButton);
    setappdata(gcbf,'current',CIRCLE);
    
    % net turn after user turn
    board = playNet(net, 4, handles, board);
    setappdata(gcbf,'current',SHARP);
    
    % set shared data
    setappdata(gcbf,'board',board);
    
end