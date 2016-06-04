clear;
clc;

% define used symbols
global CIRCLE SHARP EMPTY
CIRCLE = 1; 
SHARP = -1;
EMPTY = 0;

% Matrix representing board consists of 5x5 cells.
% Each cell may be in one of above defined states: CIRCLE,SHAPE or EMPTY

% get Test set
% boards - set of boards, for which we search the best movements.
% x,y - set of choosen moves for following boards 
[boards,x,y] = GetSamplesTest(5,20);

net = defineNetwork();