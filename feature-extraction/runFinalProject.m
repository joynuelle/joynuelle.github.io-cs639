function runFinalProject(varargin)
% runHw2 is the "main" interface that lets you execute all the 
% walkthroughs and challenges in homework 2. It lists a set of 
% functions corresponding to the problems that need to be solved.
%
% This file also serves as specifications for the functions 
% you are asked to implement. In some cases, your submissions will be autograded. 
% Thus, it is critical that you adhere to all the specified function signatures.
%
% Before your submssion, make sure you can run runHw2('all') 
% without any error.
%
% Usage:
% runHw2                       : list all the registered functions
% runHw2('function_name')      : execute a specific test
% runHw2('all')                : execute all the registered functions

% Settings to make sure images are displayed without borders.
orig_imsetting = iptgetpref('ImshowBorder');
iptsetpref('ImshowBorder', 'tight');
temp1 = onCleanup(@()iptsetpref('ImshowBorder', orig_imsetting));

fun_handles = {@getBlur, @getHueCount};
% Make sure you download runTests.m as well!
% Call test harness
runTests(varargin, fun_handles);