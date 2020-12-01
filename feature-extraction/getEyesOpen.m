% function eyes_open = getEyesOpen(img_name)
function eyes_open_container = getEyesOpen(D,S)
eyes_open_container = containers.Map('KeyType','char','ValueType','double');

for imgNum = 1:numel(S)
%     disp(S(imgNum).name);
    %path = '../Datasets/Trevor Noah/trevor15.jpeg';
%     logical_str = {'false', 'true'};
%     eyes_titles = {'Eyes closed', 'Eyes open'};
    F = fullfile(D,S(imgNum).name);
    img = imread(F);
    img_gray = rgb2gray(img);
    
%      I= imread('img.jpg');
     EyeDetect = vision.CascadeObjectDetector('EyePairBig');
     BB=step(EyeDetect,img_gray);
%      x=length(BB(:,4));
     
     if isempty(BB)
         eyes_open_container(S(imgNum).name) = false;
%          disp('false');
     else
%          x=length(BB(:,4));
       %To detect Eyes
%         I2 = imcrop(img,BB(x,:));
%         figure,imshow(I2);
         eyes_open_container(S(imgNum).name) = true;
%          disp('true');
     end
    
   %To detect Eyes
%     I2 = imcrop(img_gray,BB(x,:));
%     figure,imshow(I2);
%     figure, imshow(insertObjectAnnotation(img, 'rectangle', BB, 'Face'));
%     rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
    
%     if 
%     eyes_open_container(S(imgNum).name) = eyes_open;

%    
%     EyeDetector = vision.CascadeObjectDetector('EyePairBig'); % EyePairBig, EyePairSmall, LeftEye, RightEye
%     EyeDetector.MergeThreshold = 10;
%     BB = step(EyeDetector, img); % BB = [x-coord, y-coord, x-addition, y-addition]
%     out = insertObjectAnnotation(img, 'rectangle', BB, '');
% 
%     eyes_open = false;
% 
%     if size(BB,1) == 1 && size(BB,2) == 4
%         cropped_eyes = imcrop(img, BB);
%         imshow(cropped_eyes);
%         max_eye_pixel = max(img_gray(:));
%         min_eye_pixel = min(img_gray(:));
%         eye_spread = max_eye_pixel - min_eye_pixel;
%         fprintf('Eye spread is: %d\n', eye_spread);
%         if eye_spread > 200
%             eyes_open = true;
%         end
%     end
%     disp(eyes_open);
%     eyes_open_container(S(imgNum).name) = eyes_open;
%     % imshow(out);
% %     title([eyes_titles{eyes_open + 1}]);

%     fprintf('Eyes open: %s\n', logical_str{eyes_open + 1});
end