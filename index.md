# Selecting Aesthetically Best Photos

## CS 639: Computer Vision Final Project

Joy Nuelle - email: nuelle@wisc.edu <br />
Julia Kroll - email: jkroll3@wisc.edu

### Proposal:
With the rising popularity of smartphones over the past ten years, millions of users all over the world have had access to photography and the ability to capture billions of photos. It’s common to take multiple photos of the same scene, and when going back to delete some, either to clear up space or to simply choose the “aesthetically best” one to post on social media, this process can be difficult and time-consuming. The problem we are trying to solve is to first, define and continue doing research on what makes a photo aesthetically good, and second, create algorithms based on our research to help the average person decide when to keep or discard a photo, given multiples of a similar scene. Oftentimes, similar photos have subtle differences in colors, composition, contrast, lighting, etc, and our goal is to investigate the best combination of photograph features that contribute the most to a photograph’s aesthetic quality.
 
Our research topic is important in both practical and research terms. On the practical side, by choosing the best image out of each set of similar photos, we can avoid wasting device space occupied by near-duplicates of an image, and also eliminate the time-consuming nature of individuals each reviewing hundreds or thousands of their photos. On the research side, we are interested in exploring this topic because there is currently a lot of debate in the computer vision research community around how to algorithmically assess the subjective human perception of what makes an aesthetic photo, and how to select features that correspond to people’s emotional reaction to an image.

Several related consumer-facing apps have been released over the past five years or so. Many of these have been discontinued, but they were marketed as a way to automatically analyze users’ smartphone photos and rate their photo quality (EyeEm), group similar photos and weed out bad captures (Gallery Doctor), or select and aggregate users’ “best” photos based on the number of times a person appears in a set of photos (Google Photos).

We also found several patents from 2013-2014 which pertain to detecting and selecting best photographs (Sutherland et al, 2014), assessing aesthetic quality of photographs (Obrador et al, 2014), and predicting the aesthetic value of an image (Grenoble et al, 2013).

In the academic research, methods tend to focus on color harmony and image composition or cropping, but there is extensive debate and contradicting opinions on the best method of feature selection, and whether to focus on high-level perceptual features related to photographic principles or lower-level features. Different research teams have chosen different features, devised algorithms to curate signatures of photos that could quantify aesthetic quality, and then compared the signatures to human judgments. Researchers suggested several different applications for these techniques, such as selecting content for web image search results (Ke et al, 2006), professional headshot selection (Aydın et al, 2015), and as automated alternatives to professional photography editing (Deng et al, 2018).

We plan to explore new approaches based on the current research that we have reviewed. Because there isn’t a single established algorithm that best captures aesthetic image quality, we plan to continue in the same vein as current research, by refining and combining past techniques to search for feature definitions that improve upon past methods and yield competitive results compared against human judgments.
 
Quantifying images’ aesthetic quality is an extremely difficult task since human judgment of aesthetics is subjective. Therefore, existing approaches aren’t all-inclusive, and there are many features to test and analyze. Based on past research, our solution may be a combination of several different approaches and techniques, leading us to achieve a more nuanced conception of which combination of features succeed at representing aesthetic image quality.
 
We can evaluate the performance of our solution against human judgments of aesthetically best photos, as well as published performance of past algorithms against specific datasets.

First we will identify a variety of features to use in our aesthetic signature definitions. Then we will select datasets to apply these signatures to, and generate ratings of aesthetic image quality. We will compare these ratings to results of past publications, labeled datasets with human judgments, and/or new human judgments, when possible.

One potential extension of our research is combining multiple similar images to generate a new aesthetically superior image, which would be a new approach. Enhancing images through methods besides color and cropping (such as combining facial features of the same subject from multiple images to create an optimal portrait) is also new. Papers on image enhancement generally focus on altering individual photos by adjusting colors and cropping. Research has covered enhancing existing photos as well as systems to advise photographers in real-time while photographing a subject. One particular benefit of this new image-combining approach in image enhancement is that humans can manually crop and recolor images with a few clicks of basic software, but without advanced photo-editing knowledge, humans can’t combine elements from multiple images.



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

