# SoCStitcher

## Introduction

1. Image stitching or photo stitching is the process of combining multiple photographic images with overlapping fields of view to produce a segmented panorama or high-resolution image.
2. Image stitching is widely used in modern applications, such as the following:
  - Document mosaicing
  - Image stabilization feature in camcorders that use frame-rate image alignment
  - High-resolution photomosaics in digital maps and satellite imagery
  - Medical imaging
  - Multiple-image super-resolution imaging
  - Video stitching
  - Object insertion
  
## Architecture
  
#### Image acquisition module
Obtain stable images from camera and the inner registers  can be reconfigured by the I2C port.

#### Feature extraction module 
Extract the FAST features of the images using the designed FPGA-based parallel computing platform.

#### Feature matching module
Calculate the similarity of two feature descriptors and establish the correspondence by the nearest neighbor ratio method.

#### Image fusion module
Fuse images of two adjacent images in order to obtain smooth transition effects between the two images whose brightness and orientations are different.

#### HDMI displaying module
Display the real-time panoramic stitching results on a monitor.

## Design decisions

### Use FAST feature detector instead of SIFT  [ SIFT | SURF | FAST ]
SIFT (patented) is slow compared to FAST algorithm (source : Homography Estimation by Elan Dubrofsky (Master’s essay submission))
FAST algorithm is already implemented in vivado xfopencv library 
### Use ORB feature descriptor [ SIFT | SURF | BRISK | BRIEF | ORB ]
FAST algorithm lacks orientation component so the algorithm is not invariant for orientation. ORB add orientation component to the FAST features.
ORB is using BRISK keypoint descriptor which is relatively speed and contains less data relative to the SIFT descriptor 
### Use Brute force feature Matcher [ BRUTE FORCE | FLANN based ]
FLANN based matcher used random sampling. Since we are using FPGA all the feature sizes are fixed size, hence take only fixed number of clock cycles which can be calculated in compilation time so planned to proceed with brute force matcher.

## FAST feature detector

Features from Accelerated Segment Test (FAST) is a corner detection algorithm, that is faster than most of the other feature detectors.
The fast picks up a pixel in the image and compares the intensity of 16 pixels in its neighborhood on a circle, called the Bresenham's circle. If the intensity of 9 consecutive pixels is found to be either more than or less than that of the candidate pixel by a given threshold, then the pixel is declared as a corner. Once the corners are detected, the non-maximal suppression is applied to remove the weaker corners.


## ORB Descriptor
The addition of a fast and accurate orientation component to FAST. 
The efficient computation of oriented BRIEF features.
Analysis of variance and correlation of oriented BRIEF features. 
A learning method for de-correlating BRIEF features under rotational invariance, leading to better performance in nearest-neighbor applications.


## ORB Matcher
Features matching or generally image matching, a part of many computer vision applications such as image registration, camera calibration and object recognition, is the task of establishing correspondences between two images of the same scene/object.

## RANSAC Algorithm
The RANSAC algorithm is a learning technique to estimate parameters of a model by random sampling of observed data. Given a dataset whose data elements contain both inliers and outliers, RANSAC uses the voting scheme to find the optimal fitting result.

## Homography estimation
A Homography is a transformation ( a 3×3 matrix ) that maps the points in one image to the corresponding points in the other image.

# Hardware Implementation

## Gussian Elimination Algoritham

![GE](https://github.com/tharaka27/SoCStitcher/blob/master/Images/Gussian_Elimination_performance.PNG)

## FAST Algoritham

![FAST](https://github.com/tharaka27/SoCStitcher/blob/master/Images/basic_fast.PNG)







