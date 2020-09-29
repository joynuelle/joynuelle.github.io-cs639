# Selecting Aesthetically Best Photos

## CS 639: Computer Vision Final Project

Joy Nuelle - ID: 9076624106 email: nuelle@wisc.edu <br />
Julia Kroll - ID: 9068236026, email: jkroll3@wisc.edu

### Proposal:
With the popularity of smartphones in the past ten years, millions of users all over the world have had access to photography and the ability to capture billions of photos. It’s not uncommon to take multiple photos of the same scene, and when going back to delete them to either clear up space or simply choose the “aesthetically best” one to post, this process can be difficult to do and time-consuming. The problem we are trying to solve is to first, define and continue doing research on what an aesthetic photo is, and then second, based on our research, create algorithms to help the average person decide on when to keep and when to discard a photo, assuming there are multiples of a similar scene. Oftentimes, there are subtle differences in colors, composition, contrast, lighting, etc and we want to figure out what is the best combination of photograph features that contribute the most to photograph aesthetic quality. <br />
 
First, on the practical side, by choosing the best image out of each set of similar photos, we can eliminate wasted device space occupied by near-duplicates of an image, and also eliminate the time-consuming nature of individuals reviewing hundreds or thousands of photos. We are also interested in researching this problem because there is currently a lot of debate in the computer vision research community around how to assess a subjective human perception of what is an aesthetic photo, and how to select features that capture emotional reaction to an image. 

Several consumer-facing apps have been released over the past five years or so. Many of these have been discontinued, but they were marketed as a way to automatically analyze users’ smartphone photos and rate their photo quality (EyeEm), group similar photos and weed out bad captures (Gallery Doctor), or select and aggregate users’ “best” photos based off the number of times a person appears in a set of photos (Google Photos).

We found several patents from 2013-2014 which pertain to detecting and selecting best photographs (Sutherland et al, 2014), assessing aesthetic quality of photographs (Obrador et al, 2014), and predicting the aesthetic value of an image (Grenoble et al, 2013).

In the academic research, methods tend to focus on color harmony and image composition or cropping, but there is extensive debate and contradicting opinions on the best method of feature selection and focusing on high-level perceptual features related to photographic principles or lower-level features. Different teams chose different features, devised algorithms to curate signatures of photos that could quantify aesthetic quality, and then compared the signatures to human judgments. Researchers suggested several different applications for these techniques, such as in selecting content for web image search results (Ke et al, 2006), professional headshot selection (Aydın et al, 2015), and as automated alternatives to professional photography editing (Deng et al, 2018).

Currently, we are planning on exploring new approaches based off of the current research that we have discovered. Given that there isn’t a single established algorithm that best captures aesthetic image quality, we plan to continue in the same vein as current research, by refining and combining past techniques to search for feature definitions that improve upon past methods and results compared against human judgments.
 
Papers on image enhancement generally focus on altering individual photos by adjusting colors and cropping. Research has covered enhancing existing photos as well as systems to advise photographers in real-time while photographing a subject.
 
Combining multiple similar images to generate a new aesthetically superior image would be proposing a new approach. Enhancing images through methods besides color and cropping (such as combining facial features of the same subject from multiple images to create an optimal portrait) is also new. One particular benefit of this new approach in image enhancement is that humans can manually crop and recolor images with a few clicks of basic software, but without advanced photo-editing knowledge, humans can’t combine elements from multiple images.
 
Quantifying aesthetic is an extremely difficult thing to do when human judgement of aesthetic is subjective, therefore there are many existing approaches that aren’t all inclusive and other features to test and analyze. Based on the research we have read about, our solution might be a combination of many different approaches and techniques, leading us to achieve a more nuanced conception of which combination of features succeed at representing aesthetic image quality.
 
We can evaluate the performance of our solution against human judgments of aesthetically best photos, as well as published performance of past algorithms against specific datasets.

First we will identify a variety of features to use in our aesthetic signature definitions. Then we will select datasets to apply these signatures to, and generate ratings of aesthetic image quality. We will compare these ratings to results of past publications, labeled datasets with human judgments, and/or new human judgments, when possible.


### Approximate Timeline:
- [ ] October 7: Selected features
- [ ] October 13: HW 2 due (official deadline)
- [ ] October 16: Selected datasets
- [ ] October 27: HW 3 due (official deadline)
- [ ] October 30: Extracted first feature from datasets 
- [ ] November 3: Midterm project report (official deadline)
- [ ] November 19: HW 4 due (official deadline)
- [ ] November 23: Extracted all features from datasets
- [ ] December 1: Evaluated performance against existing research and human judgments
- [ ] December 3: HW5 due (official deadline)
- [ ] December 10: Completed final project (official deadline)

### References:
Grenoble, L. M., Perronnin, F., Csurka, G. (2013, November). Predicting the aesthetic value of an image. United States patent no. US008594385B2.

Obrador, P., Saad, M., Suryanarayan, P., Oliver, N. (2014, February). Method to assess aesthetic quality of photographs. United States patent no. US008660342B2.

Sutherland, A., Rathnavelu, K., Smith, E. (2014, September). Method and system to detect and select best photographs. United States patent no. US008837867B2.

Aydın, T. O.,  Smolic, A., Gross, M. (2015, January). Automated Aesthetic Analysis of Photographic Images, in IEEE Transactions on Visualization and Computer Graphics, vol. 21, no. 1, pp. 31-42

Ke, Yan., Tang, Xiaoou., Jing, Feng. (2006). "The Design of High-Level Features for Photo Quality Assessment," in IEEE Computer Society Conference on Computer Vision and Pattern Recognition (CVPR'06), pp. 419-426
 
Deng, Yubin., Change Loy, Chen., Tang, Xiaoou. (2018, October). Aesthetic-Driven Image Enhancement by Adversarial Learning in MM '18: Proceedings of the 26th ACM international conference on Multimedia, pp. 870-878

