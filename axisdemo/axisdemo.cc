//#include "mbed.h"	//för nucleo
#include <iostream> 	/*  cout */
//#include <stdio.h>      /* printf */
#include <math.h>		/* sin */
#include <vector> 
#include <stdlib.h>     /* abs */

//using namespace std;

//VARIABLES HERE
int dataLength = 10;
//dataLength behövs kanske inte, vector klassen kan växa med behov
std::vector<int> channel_0(dataLength);
std::vector<int> channel_1(dataLength);


//FUNCTIONS HERE
//Calculating distance between sound and camera
double calcDis(double t, double v){
    double s = t*v;
    return s;
}

//Calculating angle in radians, D distanse between mic1 and mic2
double calcAng(double s, double D){
    double ang = asin(s/D);
    return ang;
}

//Assuming the input value is temp as a number and humidity as procent
double speedofsound(double temp, double hum){
    //Calculations were done in Matlab
    double speed = 331.1190 + 0.6016*temp + 0.0126*hum;
    return speed;
}

//calc time delay by finding peak values in 2 vectors
int FindPeak(){
	//reset max value & sum value
	int value0Max = 0;
	int value1Max = 0;
	
	//reset array position
	int index0 = 0;
	int index1 = 0;
	
	//find largest value & mark that position in vectors
	for (int position = 0; position < channel_0.size(); position++) {
		int val = abs(channel_0[position]);
		if (val > value0Max ){
			value0Max = val;
			index0 = position;
		}
	}
	std::cout << "max position for channel 0: " << index0+1 << std::endl;
	
	for (int position = 0; position < channel_1.size() ; position++) {
		int val = abs(channel_1[position]);
		if (val > value1Max ){
			value1Max = val;
			index1 = position;
		}
	}
	std::cout << "max position for channel 1: " << index1+1 << std::endl;

	return ( index1 - index0 );
}


int main() {
	//testcase
	//denna declaration av värden funkar på datorns kompilator.
	// <vector> växer dynamiskt när man sätter in mer värden än tänkt från början
	channel_0 = {0, 0, 5, 2, 3, 4, 0, 0,9, 1, 1, 1, 1, 0, 0};
	channel_1 = {0,0,0,0,0,0,0, 5, 2, 3, 4, 0, 0,9, 1, 1, 1, 1};
	
	//nucleo klagar på ovanstående inmatning av vector,
	//måste mata in som nedan, drygt men det går
	channel_0[0] = 0;
    channel_0[1] = 0;
    channel_0[2] = 5;
    //osv.....


	//skriv ut alla element i kanal 0
	std::cout << "channel_0: ";
	for(int i=0; i<channel_0.size(); ++i)
		std::cout << channel_0[i] << ' ';
	std::cout << std::endl;

	//skriv ut alla element i kanal 1
	std::cout << "channel_1: ";
	for(int i=0; i<channel_1.size(); ++i)
		std::cout << channel_1[i] << ' ';
	std::cout << std::endl;

	int delayValue =  FindPeak();
	std::cout << "run FindPeak, delay is: " << delayValue << std::endl;
}


