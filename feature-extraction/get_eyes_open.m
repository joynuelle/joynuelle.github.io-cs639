function eyes_open = get_eyes_open(img_name)

%path = '../Datasets/Trevor Noah/trevor15.jpeg';
logical_str = {'false', 'true'};
eyes_titles = {'Eyes closed', 'Eyes open'};

img = imread(img_name);
img_gray = rgb2gray(img);
EyeDetector = vision.CascadeObjectDetector('EyePairSmall'); % EyePairBig, EyePairSmall, LeftEye, RightEye
EyeDetector.MergeThreshold = 4;
BB = step(EyeDetector, img); % BB = [x-coord, y-coord, x-addition, y-addition]
out = insertObjectAnnotation(img, 'rectangle', BB, '');

eyes_open = false;

if size(BB,1) == 1 && size(BB,2) == 4
    cropped_eyes = imcrop(img, BB);
    %imshow(cropped_eyes);
    max_eye_pixel = max(img_gray(:));
    min_eye_pixel = min(img_gray(:));
    eye_spread = max_eye_pixel - min_eye_pixel;
    fprintf('Eye spread is: %d\n', eye_spread);
    if eye_spread > 200
        eyes_open = true;
    end
end

imshow(out);
title([eyes_titles{eyes_open + 1}]);

fprintf('Eyes open: %s\n', logical_str{eyes_open + 1});