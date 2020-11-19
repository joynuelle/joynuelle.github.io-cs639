%% Adjusted from - https://stackoverflow.com/questions/34525897/extract-motion-blur-of-an-image-in-matlab
function getBlur()
% D = '/Users/JoyNuelle/Desktop/cs639/final_project/ariana_grande';  %jpg
% D = '/Users/JoyNuelle/Desktop/cs639/final_project/sandra_oh'; %jpeg 
D = '/Users/JoyNuelle/Desktop/cs639/final_project/nick_jonas'; % mix of jpg and jpeg
S = [dir(fullfile(D,'*.jpeg'));dir(fullfile(D,'*.jpg'))];  % pattern to match filenames.
M = containers.Map('KeyType','int32','ValueType','double');
maxImg = 0;
minImg = realmax;
curMax = 0; 
curMin = 0;

for imgNum = 1:numel(S)
    F = fullfile(D,S(imgNum).name);
    img = imread(F);
    grayImage = rgb2gray(img);
    % imshow(img)
%   To calculate the Laplacian, you can use the imgradient function, which returns magnitude and angle, so we'll simply discard the angle:
    [lpI,~] =  imgradient(grayImage);
%     S(k).data = I; % optional, save data.

    % Number of pixels to look at: 0.1%
    nPx = round(0.001*numel(grayImage));

    % Sort values to pick top values
    sortedOrigIm = sort(lpI(:));

    % Calculate measure
    measureOrigIm = median(sortedOrigIm(end-nPx+1:end));
    % The higher the number, the less blurred it is :)
%     disp(S(imgNum).name);
%     disp(measureOrigIm);
%     M(imgNum) = measureOrigIm;
    if measureOrigIm > maxImg
        maxImg = measureOrigIm;
        curMax = imgNum;
%         disp('in max')
    end
    if measureOrigIm < minImg
        minImg = measureOrigIm;
        curMin = imgNum;
%         disp('in min')
    end
end

% disp(maxImg); disp(curMax);
% disp(minImg); disp(curMin);
% imshow(maxImg); imshow(minImg);

% Display the max and min blur pictures

figure('Name','Measure of Sharpness in Image');
F = fullfile(D,S(curMax).name);
    img = imread(F);
%     grayImage = rgb2gray(img);
    subplot(1,2,1), imshow(img);
    title(['Sharpest image: ', num2str(curMax)]);
F = fullfile(D,S(curMin).name);
    img = imread(F);
%     grayImage = rgb2gray(img);
    subplot(1,2,2), imshow(img);
    title(['Blurriest image: ', num2str(curMin)]);