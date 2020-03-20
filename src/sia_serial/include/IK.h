#pragma once

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/stat.h>


#include<errno.h>

#include<string.h>
#include<vector>

#include <math.h>
#include <iostream>
#include <fstream>
#include <iomanip> // // io 流控制头文件, 主要是一些操纵用法如setw(int n),setprecision(int n),setbase(int   n),setfill(char c)的

using namespace std;

std::vector<double> IK(double q_current[], double x, double y, double z, int step_num);
void test(double q_current[]);


