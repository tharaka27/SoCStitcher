/*


   Copyright (c) 2020, Tharaka Ratnayake, email: tharakasachintha.17@cse.mrt.ac.lk
   All rights reserved. https://github.com/tharaka27/ImageStitcherFAST





   Revision history:
	  March 30th, 2020: initial version.
*/



#include <stdio.h>
#include <iostream> 


#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/stitching.hpp"
#include "opencv2/features2d.hpp"
#include <opencv2/calib3d.hpp>
 


cv::Mat stitch_image(cv::Mat image1, cv::Mat image2, cv::Mat H)
{

	cv::Mat result;
	// cv::Mat result23;
	warpPerspective(image1, result, H, cv::Size(image1.cols + image2.cols, image1.rows));
	cv::Mat half(result, cv::Rect(0, 0, image2.cols, image2.rows));
	image2.copyTo(half);

	return result;

}

int main()
{


	auto start_fast1 = std::chrono::high_resolution_clock::now();


	cv::Mat left_image = cv::imread("C:\\Users\\ASUS\\Desktop\\sem 5 project\\ImageStitcherSIFT\\Data_FPGA\\left_r.jpg");
	cv::Mat middle_image = cv::imread("C:\\Users\\ASUS\\Desktop\\sem 5 project\\ImageStitcherSIFT\\Data_FPGA\\middle_r.jpg");
	//cv::Mat right_image = cv::imread("C:\\Users\\ASUS\\Desktop\\sem 5 project\\ImageStitcherSIFT\\Data_3\\right.jpg");


	cv::Mat left_image_gray;
	cv::Mat middle_image_gray;
	//cv::Mat right_image_gray;

	cv::flip(left_image, left_image, 1);
	cv::flip(middle_image, middle_image, 1);

	
	//-----------------------------------------------------------------

	cv::cvtColor(left_image, left_image_gray, cv::COLOR_BGR2GRAY);
	cv::cvtColor(middle_image, middle_image_gray, cv::COLOR_BGR2GRAY);
	//cv::cvtColor(right_image, right_image_gray, cv::COLOR_BGR2GRAY);


	std::vector<cv::KeyPoint> keypoints_left, keypoints_right, keypoints_middle;
	cv::Mat descriptors_left, descriptors_right, descriptors_middle;

	
	//-----------------------------------------------------------------
	//
	//                Detect Keypoints
	//
	//-----------------------------------------------------------------
	//auto start_detector = std::chrono::high_resolution_clock::now();
	/*
	cv::Ptr<cv::FastFeatureDetector> detector = cv::FastFeatureDetector::create();
	
	detector->detect(left_image, keypoints_left);
	detector->detect(middle_image, keypoints_middle);
	*/

	//detector->detect(right_image, keypoints_right);
	cv::FAST(left_image, keypoints_left, 15, true);
	cv::FAST(middle_image, keypoints_middle, 15, true);


	std::cout<<"Detection done \n";
	std::cout << "left Size is " << keypoints_left.size();
	std::cout << " , middle Size is " << keypoints_middle.size();
	std::cout << "\n";

	

	//-----------------------------------------------------------------
	//
	//                Build descriptors
	//
	//-----------------------------------------------------------------
	auto start_descriptor = std::chrono::high_resolution_clock::now();
	cv::Ptr<cv::ORB> extractor = cv::ORB::create();
	//cv::Ptr<cv::BRISK> extractor = cv::BRISK::create();

	cv::Mat mask;

	//extractor->detectAndCompute(left_image, mask, keypoints_left, descriptors_left, true);
	//extractor->detectAndCompute(middle_image, mask, keypoints_middle, descriptors_middle, true);

	//extractor->detect(left_image, keypoints_left);
	//extractor->detect(middle_image, keypoints_middle);

	
	extractor->compute(left_image, keypoints_left, descriptors_left);
	extractor->compute(middle_image, keypoints_middle, descriptors_middle);
	

	//cv::ORB c;
	//c.compute(left_image, keypoints_left, descriptors_left);
	//c.compute(middle_image, keypoints_middle, descriptors_middle);


	//extractor->compute(right_image, keypoints_right, descriptors_right);
	std::cout<<"Detection done \n";
	std::cout << "left Size is " << keypoints_left.size();
	std::cout << " , middle Size is " << keypoints_middle.size();
	std::cout << "\n";
	//std::cout << descriptors_left;
	std::cout << "Descriptor done \n";

	for (int i = 0; i < 5; i++) {
		std::cout << keypoints_left[i].angle << " ";
	}



	//return 0;

	//-----------------------------------------------------------------
	//
	//                Matching descriptors
	//
	//-----------------------------------------------------------------
	auto start_matching = std::chrono::high_resolution_clock::now();
	cv::Ptr<cv::DescriptorMatcher> matcher = cv::DescriptorMatcher::create("BruteForce-Hamming");
	std::vector< cv::DMatch > left_matches , right_matches;
	matcher->match(descriptors_left, descriptors_middle, left_matches);
	//matcher.match(descriptors_middle, descriptors_right, right_matches);
	std::cout << "Matching done \n";


	//-----------------------------------------------------------------
	//
	//                Build descriptors
	//
	//-----------------------------------------------------------------
	
	double max_dist1 = 0; double min_dist1 = 100;
	//double max_dist2 = 0; double min_dist2 = 100;

	//-- Quick calculation of max and min distances between keypoints 
	for (int i = 0; i < descriptors_left.rows; i++)
	{
		double dist1 = left_matches[i].distance;
		if (dist1 < min_dist1) {
			min_dist1 = dist1;
		}
		if (dist1 > max_dist1) {
			max_dist1 = dist1;
		}
	}

	/*
	for (int i = 0; i < descriptors_right.rows; i++)
	{
		double dist2 = right_matches[i].distance;

		if (dist2 < min_dist2) {
			min_dist2 = dist2;
		}
		if (dist2 > max_dist2) {
			max_dist2 = dist2;
		}
	}
	*/


	printf("-- Max dist: %f \n", max_dist1);
	printf("-- Min dist: %f \n", min_dist1);


	if (min_dist1 < 15) {
		min_dist1 = 15;
	}

	
	//-- Use only "good" matches (i.e. whose distance is less than 3*min_dist )
	std::vector< cv::DMatch > good_left_matches, good_right_matches;
	cv::Mat result;
	// cv::Mat result23;
	cv::Mat H_left, H_right;
	// cv::Mat H23;
	for (int i = 0; i < descriptors_left.rows; i++)
	{
		if (left_matches[i].distance < 3 * min_dist1)
		{
			good_left_matches.push_back(left_matches[i]);
		}
	}

	/*
	for (int i = 0; i < descriptors_right.rows; i++)
	{
		if (right_matches[i].distance < 3 * min_dist2)
		{
			good_right_matches.push_back(right_matches[i]);
		}
	}
	*/
	
	std::cout << "good matches : " << good_left_matches.size() << "\n";

	std::vector< cv::Point2f > obj_left, obj_right;
	std::vector< cv::Point2f > scene_left, scene_right;

	for (int i = 0; i < good_left_matches.size(); i++)
	{
		//-- Get the keypoints from the good matches
		obj_left.push_back(keypoints_left[good_left_matches[i].queryIdx].pt);
		scene_left.push_back(keypoints_middle[good_left_matches[i].trainIdx].pt);
	}

	/*
	for (int i = 0; i < good_right_matches.size(); i++)
	{
		//-- Get the keypoints from the good matches
		obj_right.push_back(keypoints_middle[good_right_matches[i].queryIdx].pt);
		scene_right.push_back(keypoints_right[good_right_matches[i].trainIdx].pt);
	}
	*/

	auto start_homography = std::chrono::high_resolution_clock::now();
	// Find the Homography Matrix for img 1 and img2
	H_left = cv::findHomography(obj_left,scene_left,cv::RANSAC);
	//H_right = cv::findHomography(obj_right, scene_right, cv::RANSAC);
	std::cout << "H done \n";

	cv::Mat result_left = stitch_image(left_image,middle_image, H_left);
	//cv::Mat result_middle = stitch_image(middle_image, right_image, H_right);


	auto end_full = std::chrono::high_resolution_clock::now();


	auto duration_fast1 = std::chrono::duration_cast<std::chrono::microseconds>(end_full - start_fast1);
	//auto duration_loading = std::chrono::duration_cast<std::chrono::microseconds>(start_detector - start_fast1);
	//auto duration_detector = std::chrono::duration_cast<std::chrono::microseconds>(start_descriptor - start_detector);
	auto duration_descriptor = std::chrono::duration_cast<std::chrono::microseconds>(start_matching - start_descriptor);
	auto duration_matching = std::chrono::duration_cast<std::chrono::microseconds>(start_homography - start_matching);
	auto duration_homography = std::chrono::duration_cast<std::chrono::microseconds>(end_full - start_homography);

	std::cout << "Time spent for first image: " << duration_fast1.count() << std::endl;
	//std::cout << "Time spent for loading: " << duration_loading.count() << std::endl;
	//std::cout << "Time spent for detector: " << duration_detector.count() << std::endl;
	std::cout << "Time spent for descriptor: " << duration_descriptor.count() << std::endl;
	std::cout << "Time spent for matching: " << duration_matching.count() << std::endl;
	std::cout << "Time spent for homography: " << duration_homography.count() << std::endl;


	std::cout << "Time spent for total: " << duration_homography.count() + duration_descriptor.count() + duration_matching.count() << std::endl;
	//std::cout << "Time spent for total: " << duration_homography.count() + duration_loading.count() + duration_detector.count() + duration_descriptor.count() + duration_matching.count() << std::endl;

	cv::imshow("stitched",result_left);
	cv::waitKey(0);

	for (int i = 0; i < obj_left.size(); i++) {
		std::cout << obj_left[i] << " " << scene_left[i] << std::endl;
	}

	std::cout << H_left;

	return 0;



}


