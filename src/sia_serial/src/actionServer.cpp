#include <sia_7f_arm_control.h>
#include "rob_comm.h"

//#include "armplaning_client.h"

using namespace std;

typedef actionlib::SimpleActionServer<control_msgs::FollowJointTrajectoryAction> TrajectoryServer;

double deg2rad = 3.14159/180.0;
double rad2deg = 180.0/3.14159;

//***************************************************************************
// Processing and JointTrajectoryAction
void sia_executeTrajectory(const control_msgs::FollowJointTrajectoryGoalConstPtr& _goal, TrajectoryServer* _as)
{                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
  	robotState rs;	// judge if the two msgs are the same
	
  	int nrOfPoints = _goal->trajectory.points.size();		// Number of points to add 
	ROS_INFO("targetPoint List's size: %d ", nrOfPoints);

  	
	for(int i=0; i<nrOfPoints; i++)
  	{
		for(int j=1; j<6; j++)
		{
			cur_angle[j-1] = _goal->trajectory.points[i].positions[j]*rad2deg;
			msg_new.data.push_back(_goal->trajectory.points[i].positions[j]*rad2deg);
		}
		cur_angle[5] = _goal->trajectory.points[i].positions[0]*rad2deg;
		msg_new.data.push_back(_goal->trajectory.points[i].positions[0]*rad2deg);
	  //ROS_INFO("okokokokok");
	  if(flag_RX == 0)
	  {
		Angle_Test(cur_angle);
        RX_msg(24);
		system("read -p 'Press Enter to continue...' var");
	  }
	  
	  targetPointList_new.push_back(msg_new);//push_back()
  	}
  	_as->setSucceeded();
}
//*************************************************************************
void quit(int sig)
{
  ros::shutdown();
  exit(0);
}

void siaGripperCmdCallback( const std_msgs::Int32& msg)
{
	if(msg.data > 0) //close
	{
		hexnum_now[6] = 0x0010;
		Slavor_Init(hexnum_now,6);
		printf("gripper closed\n");
	}
	else //open
	{
		hexnum_now[6] = 0x0ff0;
		Slavor_Init(hexnum_now,6);
		printf("gripper opened\n");
	}
}

bool EePoseCallback(sia_serial::EePose::Request& req, sia_serial::EePose::Response& res)
{
	Eigen::VectorXd qPre(6);

    qPre << angle_now[0],angle_now[1],angle_now[2],angle_now[3],angle_now[4],angle_now[5];

    Parser parser;
    Eigen::Matrix4d transformation = parser.Foward(qPre); 

	real_pos_x = transformation(0, 3);
	real_pos_y = transformation(1, 3);
	real_pos_z = transformation(2, 3);

	cout << "rx: " << real_pos_x << "\t" << "ry: " << real_pos_y << "\t" << "rz: " << real_pos_z << endl;

    res.pose.position.x = real_pos_x;
	res.pose.position.y = real_pos_y;
	res.pose.position.z = real_pos_z;
    return true;
}

bool EeRpyCallback(sia_serial::EeRPY::Request& req, sia_serial::EeRPY::Response& res)
{
    //res.r = rpy[0];
    //res.p = rpy[1];
    //res.y = rpy[2];
    return true;
}

bool EeTrajCallback(sia_serial::EeTraj::Request& req,sia_serial::EeTraj::Response& res)
{
    return true;
}

bool EeDeltaCallback(sia_serial::EeDelta::Request& req,sia_serial::EeDelta::Response& res)
{
	int n = 1;

	delta_pos_x = req.pose.position.x;
	delta_pos_y = req.pose.position.y;
	delta_pos_z = req.pose.position.z;
	cout << "delta_x: " << delta_pos_x << "\t" << "delta_y: " << delta_pos_y << "\t" << "delta_z: " << delta_pos_z << endl;

	//cout << "angle now: " << angle_now[0] << "\t" << angle_now[1]<< "\t" << angle_now[2] << "\t" << angle_now[3] << "\t" << angle_now[4] << "\t" << angle_now[5] << endl;
	//Eigen::VectorXd angle_sia7f(6);
		
	//angle_sia7f << angle_now[0],angle_now[1],angle_now[2],angle_now[3],angle_now[4],angle_now[5];

	joint_values_ik = IK(angle_now, delta_pos_x, delta_pos_y, delta_pos_z, n);
	printf("joint angles: ");
	for(int i=0;i<6;i++)
	{
		angle_now[i] = joint_values_ik[i];
		dec_now[i] = joint_values_ik[i]*180/3.1415926;
		printf("%lf\t",joint_values_ik[i]);
	}
	cout << endl;

	/*unsigned short* p = Angle_Test(dec_now);// send angles now
	for(int i=0; i<7; i++)
	{
		hexnum_now[i] = *(p+i);
	}*/
	deg2pos_cal(dec_now,hexnum_now);
	Slavor_Init(hexnum_now,6);
	res.success = true;
	res.message = "ok";
	return true;
}

bool JointTrajCallback(sia_serial::JointTraj::Request& req,sia_serial::JointTraj::Response& res)
{
    return true;
}
//******************** MAIN ************************************************
int main(int argc, char** argv)
{
	ros::init(argc, argv, "sia_7f_arm_joints_controller");
	ros::NodeHandle nh;
	open_serial();
	size_t n = 0;
	flag_RX = 0;
	flag_SD = 0;
	int i = 5;
    while(i--) 
	{
	    Slavor_Init(zero, j);
        RX_msg(24);
        system("read -p 'Press Enter to continue...' var");
	}
	//double test_now[7] = {0,0,0,0,0,0,0};
	//double tx = 0 ,ty = 0, tz = 0;
	//IK(angle_now, tx, ty, tz, 1);

	/*
	Eigen::VectorXd qPre(6);
	
	for(int i=0;i<6;i++)
	{
		angle_now[i] = test_Point2[i]/180*3.14159;
	}
	
    qPre << angle_now[0],angle_now[1],angle_now[2],angle_now[3],angle_now[4],angle_now[5];

    Parser parser;
    Eigen::Matrix4d transformation = parser.Foward(qPre); 

	real_pos_x = transformation(0, 3);
	real_pos_y = transformation(1, 3);
	real_pos_z = transformation(2, 3);
	cout << "rx: " << real_pos_x << "\t" << "ry: " << real_pos_y << "\t" << "rz: " << real_pos_z << endl;
    */

	//TrajectoryServer tserver(nh, "sia_7f_arm/follow_joint_trajectory", boost::bind(&sia_executeTrajectory, _1, &tserver), false);
  	//ROS_INFO("TrajectoryActionServer: Starting");
  	//tserver.start();
	
	ros::Publisher target_pub = nh.advertise<geometry_msgs::Pose>("/object_target",1);
	
	ros::Subscriber grip_cmd_sub = nh.subscribe("/sia_7f_arm_gripper/command",1,siaGripperCmdCallback);

	ros::ServiceServer ee_traj_srv_ = nh.advertiseService("/ee_traj_srv", EeTrajCallback);
    ros::ServiceServer joint_traj_srv_ = nh.advertiseService("/joint_traj_srv", JointTrajCallback);
    ros::ServiceServer ee_pose_srv_ = nh.advertiseService("/ee_pose_srv", EePoseCallback);
    ros::ServiceServer ee_rpy_srv_ = nh.advertiseService("/ee_rpy_srv", EeRpyCallback);
	ros::ServiceServer ee_delta_srv_ = nh.advertiseService("/ee_delta_srv", EeDeltaCallback);

	sia_7f_arm_robots::sia_7f_arm_control robot;
	robot.init();
	double deg_current[6] = {0,0,0,0,0,0};
    //test(deg_current);

	ros::Rate loop_rate(1000);

	
	while (ros::ok())
	{	
		geometry_msgs::Pose obj_msg;
		obj_msg.position.x = 0.96;
		obj_msg.position.y = 0.0;
		obj_msg.position.z = 0.15;

		target_pub.publish(obj_msg);

		n = sp.available();
        if((n!=0)&&(flag_SD == 0))
        {
            RX_msg(n);
        }
		robot.sia_7f_arm_control::CommunicationROS();
		//robot.mainLoop();		//spinning is done inside the main loop
		loop_rate.sleep();
		ros::spinOnce();
	}
	sp.close();
  	signal(SIGINT,quit);	
	return 0;
}

namespace sia_7f_arm_robots{
	//*************************************************************************************
	sia_7f_arm_control::~sia_7f_arm_control(){}
	//*************************************************************************************
	void sia_7f_arm_control::init(){
		ROS_INFO("...initing...");


		msgJointsCurrent.header.stamp = ros::Time::now();
		msgJointsCurrent.name.resize(6);
		msgJointsCurrent.position.resize(6);
		msgJointsCurrent.velocity.resize(6);
		msgJointsCurrent.name[0] ="sia_7f_arm_joint1";
		msgJointsCurrent.position[0] = angle_now[0];//0.0;
		msgJointsCurrent.velocity[0] = 0.0;
		msgJointsCurrent.name[1] ="sia_7f_arm_joint2";
		msgJointsCurrent.position[1] = angle_now[1];//0.0;
		msgJointsCurrent.velocity[1] = 0.0;
        msgJointsCurrent.name[2] ="sia_7f_arm_joint3";
		msgJointsCurrent.position[2] = angle_now[2];//0.0;
		msgJointsCurrent.velocity[2] = 0.0;
        msgJointsCurrent.name[3] ="sia_7f_arm_joint4";
		msgJointsCurrent.position[3] = angle_now[3];
		msgJointsCurrent.velocity[3] = 0.0;
		msgJointsCurrent.name[4] ="sia_7f_arm_joint5";
		msgJointsCurrent.position[4] = angle_now[4];//0.0;
		msgJointsCurrent.velocity[4] = 0.0;
        msgJointsCurrent.name[5] ="sia_7f_arm_gripper";
		msgJointsCurrent.position[5] = angle_now[5];//0.0;
		msgJointsCurrent.velocity[5] = 0.0;

		// Publish the current joint states
		pubJoints = n.advertise<sensor_msgs::JointState>("/joint_states", 1);

	}
	//*************************************************************************************
	void sia_7f_arm_control::mainLoop()
	{

	} 
	//************************************************************************************
	//
	void sia_7f_arm_control::MotionGeneration()
	{

	}
	//************************************************************************************
	// Forward the new setpoints to the hardware

	void sia_7f_arm_control::CommunicationHW()
	{

	}
	//************************************************************************************
	// forward the current joints to RViz etc
	void sia_7f_arm_control::CommunicationROS()
	{
		msgJointsCurrent.header.stamp = ros::Time::now();
		msgJointsCurrent.position[0] = angle_now[0];		// Robot communication works in degree
		msgJointsCurrent.position[1] = angle_now[1];
		msgJointsCurrent.position[2] = angle_now[2];
		msgJointsCurrent.position[3] = angle_now[3];
        msgJointsCurrent.position[4] = angle_now[4];
        msgJointsCurrent.position[5] = angle_now[5];

		msgJointsCurrent.velocity[0] = 0.0;		
		msgJointsCurrent.velocity[1] = 0.0;
		msgJointsCurrent.velocity[2] = 0.0;		
		msgJointsCurrent.velocity[3] = 0.0;
		msgJointsCurrent.velocity[4] = 0.0;		
		msgJointsCurrent.velocity[5] = 0.0;

		pubJoints.publish(msgJointsCurrent);	

	}
	
}