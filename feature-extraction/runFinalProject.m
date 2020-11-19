function runFinalProject(varargin)
% runFinalProject is the "main" interface that lets you execute all the 
% functions for our final project.
%
% Usage:
% runFinalProject                       : list all the registered functions
% runFinalProject('function_name')      : execute a specific test
% runFinalProject('all')                : execute all the registered functions

% Settings to make sure images are displayed without borders.
orig_imsetting = iptgetpref('ImshowBorder');
iptsetpref('ImshowBorder', 'tight');
temp1 = onCleanup(@()iptsetpref('ImshowBorder', orig_imsetting));

fun_handles = {@getData};
% Make sure you download runTests.m as well!
% Call test harness
runTests(varargin, fun_handles);

%%
function getData()
D = 'datasets/celebrities/ariana_grande';  %jpg
% D = 'datasets/celebrities/sandra_oh'; %jpeg 
% D = 'datasets/celebrities/nick_jonas'; % mix of jpg and jpeg
S = [dir(fullfile(D,'*.jpeg'));dir(fullfile(D,'*.jpg'))];  % pattern to match filenames.

blur_container = getBlur(D,S); % returns amount of blur w/img title name
amount_of_color = getHueCount(D,S); % returns values of unique colors w/img title name
amount_of_lightness = applyGetPLightness(D,S); % returns amount of lightness w/img title name
eyes_open_container = getEyesOpen(D,S); % returns if eyes are open w/ img title name