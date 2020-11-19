function amount_of_color = getHueCount(D,S)
amount_of_color = containers.Map('KeyType','char','ValueType','double');

maxImg = 0;
minImg = 0;
curMax = 0; 
curMin = realmax;
maxh = 0;
max_h = 0;
maxv = 0;
max_v = 0;
maxs = 0;
max_s = 0;
for imgNum = 1:numel(S)
    F = fullfile(D,S(imgNum).name);
%     disp(S(imgNum).name);
    image = imread(F);
   
    % Number of unique colors in each image
    image_as_rows = reshape(image, [], 3);
    unique_colors = unique(image_as_rows, 'rows');
    num_unique_colors = size(unique_colors, 1);
%     disp(num_unique_colors);
    if num_unique_colors > curMax
        curMax = num_unique_colors;
        maxImg = imgNum;
    end
    if num_unique_colors < curMin
        curMin = num_unique_colors;
        minImg = imgNum;
    end
    
%     Get histValues for each channel and display them 
%     [yRed, x] = imhist(Red);
%     [yGreen, x] = imhist(Green);
%     [yBlue, x] = imhist(Blue);
    %Plot them together in one plot
%     plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');

% Trying out hue, saturation, and value for each image..
%     hsvImage = rgb2hsv(image);
%     https://www.mathworks.com/matlabcentral/answers/86691-rgb-image-to-hsv-image-conversion
    hsv = rgb2hsv(image);
    h = hsv(:, :, 1); % Hue image.
    s = hsv(:, :, 2); % Saturation image.
    v = hsv(:, :, 3); % Value (intensity) image.
    
%     imshow(h);
%     imshow(s);
%     imshow(v);
    [yH, x] = imhist(h);
    [yS, x] = imhist(s);
    [yV, x] = imhist(v);
%     plot(x, yH, 'yellow', x, yS, 'cyan', x, yV, 'magenta');
    if max(yH, 'all') > maxh
        maxh = max(yH,'all');
        max_h = imgNum;
    end
    if max(yS, 'all') > maxs
        maxs = max(yS, 'all');
        max_s = imgNum;
    end
    if max(yV, 'all') > maxv
        maxv = max(yV, 'all');
        max_v = imgNum;
    end
    amount_of_color(S(imgNum).name) = num_unique_colors;
end

% Display the most unique picture and least unique color-wise.
figure('Name','Measure of Unique Colors');
F = fullfile(D,S(maxImg).name);
    img = imread(F);
    subplot(1,2,1), imshow(img);
    title(['Most colored image: ', num2str(maxImg)]);
F = fullfile(D,S(minImg).name);
    img = imread(F);
    subplot(1,2,2), imshow(img);
    title(['Least image: ', num2str(minImg)])
figure('Name', 'HSV Values');
F = fullfile(D,S(max_h).name);
    img = imread(F);
    subplot(1,3,1), imshow(img);
    title(['max_H Image: ', num2str(minImg)])
F = fullfile(D,S(max_s).name);
    img = imread(F);
    subplot(1,3,2), imshow(img);
    title(['max_S Image: ', num2str(minImg)])
F = fullfile(D,S(max_v).name);
    img = imread(F);
    subplot(1,3,3), imshow(img);
    title(['max_V Image: ', num2str(minImg)])
% disp([maxh, maxs, maxv]);

