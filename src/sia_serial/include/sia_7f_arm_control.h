#ifndef sia_7f_arm_control_H
#define sia_7f_arm_control_H

#include <termios.h>
#include <unistd.h>
#include <serial/serial.h>
#include <signal.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <list>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <sensor_msgs/JointState.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <actionlib/server/simple_action_server.h>//header is the standard action library to implement an action server node
#include <control_msgs/FollowJointTrajectoryAction.h>////The header is generated from the stored action files
#include "std_msgs/Float64MultiArray.h"
#include "rob_comm.h"
#include <cstdlib>
#include <ros/ros.h>
#include <iostream>
#include "move_control.h"

// custom ROS Service
#include <EePose.h>
#include <EePoseResponse.h>
#include <EeRPY.h>
#include <EeRPYResponse.h>
#include <EeTraj.h>
#include <EeTrajResponse.h>
#include <JointTraj.h>
#include <JointTrajResponse.h>
#include <EeDelta.h>
#include <EeDeltaResponse.h>


int j = 5;

double test_Point1[7] = { 0, 50, -45, 0, 10, 0, 0};//{ 0, 0, 0, 0, 0, 0, 0 }; //
double test_Point2[7] = { 0, 90, -90, 0, 90, 0, 0 };
double agl_test[6] = { 0,0,0,0,0,0 };

double delta_pos_x = 0, delta_pos_y = 0, delta_pos_z = 0;
double real_pos_x = 0, real_pos_y = 0, real_pos_z = 0;
double angle_now[6] = {0, 1.5808, -1.5708, 0, 1.5708, 0};//{0,0,0,0,0,0};
double dec_now[6] = { 0, 0, 0, 0, 0, 0};
//Eigen::VectorXd angle_next;
std::vector<double> joint_values_ik;

unsigned short leave[7] = {0x0010,0x00a0,0x0d00,0x0980,0x0600,0x0800,0x0010};
unsigned short ttest[7] = { 0x07a0, 0x0bf8, 3000, 0x0990, 0x0860, 0x0700, 0x0400 };//0904 0984 098e 07c0 09fb 09d9
unsigned short home1[7] = { 0x06e5, 0x006b, 0x0fc8, 0x0909, 0x0ff0, 0x08d3, 0x0110 };//
unsigned short home_calib[7] = { 0x0458, 0x0282, 0x0600, 0x0409, 0x0a5f, 0x0016, 0x0010 };//
unsigned short home_pid1[7] = { 0x05e5, 0x056b, 0x05c8, 0x0709, 0x05f0, 0x05d3, 0x0110 };//
unsigned short home_pid2[7] = { 0x09e5, 0x096b, 0x09c8, 0x0809, 0x09f0, 0x0ad3, 0x0110 };//
//unsigned short home_pid2[7] = { 0x0b58, 0x0982, 0x0e00, 0x0a09, 0x0a5f, 0x0016, 0x0010 };//
unsigned short hexnum_now[7] = {0x06e5, 0x006b, 0x0fc8, 0x0909, 0x0ff0, 0x08d3, 0x0010};
unsigned char str[3] = {7,8,9};

//bool EePoseCallback(EePose::Request& req, EePose::Response& res);
//bool EeRpyCallback(EeRpy::Request& req, EeRpy::Response& res);
//bool EeTrajCallback(EeTraj::Request& req,EeTraj::Response& res);
//bool EeDeltaCallback(EeDelta::Request& req,EeDelta::Response& res);

using namespace std;
extern void Slavor_Init(unsigned short *a,int i);//从手初始化，开始执行时被调用一次即可
extern void Slavor_Init_Freeze(unsigned short *a, int i);//从手初始化，开始执行时被调用一次即可
extern unsigned short* Angle_Test(double* test);//std_msgs::Float64MultiArray
extern void SD_dataRecord(MCMD* a, char j, char b, char c, char d);
extern void Task_Point2Point_deg_all(double* sstart, double* eend, int num, int t);
extern unsigned short *deg2pos_cal(double* deg, unsigned short *ret);
extern serial::Serial sp;
extern void angle_print(double* angle, int len);
extern std::vector<double> IK(double q_current[], double x, double y, double z, int step_num);
extern void test(double q_current[]);

extern double ik_deg_desire[7];
extern unsigned short ik_dec_desire[7];
extern double ik_rad_desire[7];
extern void end_cartsian_pool(unsigned char* input);


struct robotState
{
	double j[6];		// joint position
	//double duration;	// duration for motion; needed for actionServer
};

namespace sia_7f_arm_robots
{

	// the struct stores information about the current robots state:
	// joint positions, cartesian position and error code

	class sia_7f_arm_control
	{

		private:

			bool flag_stop_requested;

			robotState setPointState;
			robotState targetState;

			int nrOfJoints; /* 6 */
			double cycleTime; /* in ms */

			//control data def	
			float controlData[6];	/* final control data */
			double executeData[6];
			double executeData_old[6];

			RobComm Comm;

			ros::NodeHandle n;
			sensor_msgs::JointState msgJointsCurrent;	/* the current joints */
			ros::Publisher  pubJoints; /* publishes the current joint positions  */

			void MotionGeneration();
			void CommunicationHW();
			

			
			
		public:
			~sia_7f_arm_control();
			void init();
			void mainLoop();
			void CommunicationROS();				
	};

}
bool list_judgequal(std::list<std_msgs::Float64MultiArray> n,std::list<std_msgs::Float64MultiArray> o);
void list_envalue();
std::list<std_msgs::Float64MultiArray> targetPointList_new;		// list of points to move to
std::list<std_msgs::Float64MultiArray> targetPointList_old;		// list of points to move to
std_msgs::Float64MultiArray msg_new; //std_msgs::String msg;
double cur_angle[7] = {0,0,0,0,0,0,0};

extern void Delay(int time);
int flag_gt = 0;
#endif
