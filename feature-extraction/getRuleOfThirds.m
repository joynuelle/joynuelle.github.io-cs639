function rule_of_thirds = getRuleOfThirds(img_name) 

rule_of_thirds = false;
thirds_titles = {'Is not rule of thirds', 'Is rule of thirds'};

% Get starting image
% img = imread('../Datasets/Ariana Grande/grammy-awards-red-carpet-2020-285102-1580083493267-promo.700x0c.jpg');
img = imread(img_name);

% Find rule of thirds lines
sizes = size(img);
H = sizes(1);
W = sizes(2);

W_line1 = round(H/3);
W_line2 = round(2 * H/3);
H_line1 = round(W/3);
H_line2 = round(2 * W/3);

% Get subject's face
FaceDetector = vision.CascadeObjectDetector();
% FaceDetector.MergeThreshold = 5;
BB = step(FaceDetector, img); % BB = [x-coord, y-coord, x-addition, y-addition]

% Try profile if frontal face is not found
if size(BB,1) == 0
    FaceDetector = vision.CascadeObjectDetector('ProfileFace');
    BB = step(FaceDetector, img);
    if size(BB,1) > 0
        display('Success with profile face');
    end
end
out = insertObjectAnnotation(img, 'rectangle', BB, '');

imshow(out);

% Horizontal lines
line([0 W], [W_line1 W_line1], 'Color', 'white'); % [X1 X2] [Y1 Y2]
line([0 W], [W_line2 W_line2], 'Color', 'white');
    
% Vertical lines
line([H_line1 H_line1], [0 H], 'Color', 'white');
line([H_line2 H_line2], [0 H], 'Color', 'white');

% If multiple boxes are found, use the largest one as the portrait face
if size(BB,1) > 1
    maxBoxDim = 0;
    boxIndex = 1;
    for i = 1:size(BB,1)
        boxDim = BB(i,3);
        if boxDim > maxBoxDim
           maxBoxDim = boxDim;
           boxIndex = i;
        end
    end
    BB = BB(boxIndex,:);
    out = insertObjectAnnotation(img, 'rectangle', BB, '', 'color','Red');
    imshow(out);
    % Horizontal lines
    line([0 W], [W_line1 W_line1], 'Color', 'white'); % [X1 X2] [Y1 Y2]
    line([0 W], [W_line2 W_line2], 'Color', 'white');
    % Vertical lines
    line([H_line1 H_line1], [0 H], 'Color', 'white');
    line([H_line2 H_line2], [0 H], 'Color', 'white');
end

% If face is found, find bounding box dimensions and determine if the box
% overlaps with both a horizontal and a vertical rule-of-thirds grid line.
if size(BB,1) == 1 && size(BB,2) == 4
    disp('Found face');
    
    face_left = BB(1);
    face_right = BB(1) + BB(3);
    face_top = BB(2);
    face_bottom = BB(2) + BB(4);
    
    cross_H1 = face_left < H_line1 && face_right > H_line1;
    cross_H2 = face_left < H_line2 && face_right > H_line2;
    cross_W1 = face_top < W_line1 && face_bottom > W_line1;
    cross_W2 = face_top < W_line2 && face_bottom > W_line2;
    if (cross_H1 || cross_H2) && (cross_W1 || cross_W2)
        rule_of_thirds = true;
    end
else
    disp('Did not find face');
end

title([thirds_titles{rule_of_thirds + 1}]);