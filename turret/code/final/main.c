#include <stdio.h>


#include <inttypes.h>



#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_gpio/mss_gpio.h"
#include "core_pwm.h"


pwm_instance_t motors;
pwm_instance_t servos;

#define SERVO_PRESCALE 999
#define SERVO_PERIOD 1999

#define MOTOR_PRESCALE 390625
#define MOTOR_PERIOD 256

#define MOTOR_PWM_ADDRESS 0x40050000
#define SERVO_PWM_ADDRESS 0x40050100

void start_gun(){
//EFFECT: Starts gun motors
	MSS_GPIO_set_output(MSS_GPIO_31, 1);
	return;
}

void stop_gun(){
//EFFECT: Stops gun motors
	MSS_GPIO_set_output(MSS_GPIO_31, 0);
	return;
}

void pwm_init(){
//EFFECT: Initializes PWM outputs
	//PWM_init(&s94156_pwm, FPIN_0, PWM_PRESCALE, PWM_SERVO_PERIOD);
	PWM_init(&motors, MOTOR_PWM_ADDRESS, MOTOR_PRESCALE, MOTOR_PERIOD);
	PWM_init(&servos, SERVO_PWM_ADDRESS, SERVO_PRESCALE, SERVO_PERIOD);
}

void wheel1(int pwm){
//REQUIRES: pwm_init() has been called
//          Takes a number from -255 to 255 where 0 is stopped and 
//          255 is full speed ahead
//EFFECTS: Modifies the speed of wheel1 
	if (pwm == 0){
		PWM_disable(&motors, PWM_1);
		PWM_disable(&motors, PWM_2);
	}
	else if (pwm > 0){
		PWM_set_duty_cycle(&motors, PWM_1, pwm);;
		PWM_enable(&motors, PWM_1);
		PWM_disable(&motors, PWM_2);
	}
	else {
		pwm *= -1;
		PWM_set_duty_cycle(&motors, PWM_2, pwm);;
		PWM_enable(&motors, PWM_2);
		PWM_disable(&motors, PWM_1);
	}
	return;
}

void wheel2(int pwm){
//REQUIRES: pwm_init() has been called
//          Takes a number from -255 to 255 where 0 is stopped and 
//          255 is full speed ahead
//EFFECTS: Modifies the speed of wheel2
	if (pwm == 0){
		PWM_disable(&motors, PWM_3);
		PWM_disable(&motors, PWM_4);
	}
	else if (pwm > 0){
		PWM_set_duty_cycle(&motors, PWM_3, pwm);;
		PWM_enable(&motors, PWM_3);
		PWM_disable(&motors, PWM_4);
	}
	else {
		pwm *= -1;
		PWM_set_duty_cycle(&motors, PWM_4, pwm);;
		PWM_enable(&motors, PWM_4);
		PWM_disable(&motors, PWM_3);
	}
	return;
}

void wheel3(int pwm){
//REQUIRES: pwm_init() has been called
//          Takes a number from -255 to 255 where 0 is stopped and 
//          255 is full speed ahead
//EFFECTS: Modifies the speed of wheel3
	if (pwm == 0){
		PWM_disable(&motors, PWM_5);
		PWM_disable(&motors, PWM_6);
	}
	else if (pwm > 0){
		PWM_set_duty_cycle(&motors, PWM_5, pwm);;
		PWM_enable(&motors, PWM_5);
		PWM_disable(&motors, PWM_6);
	}
	else {
		pwm *= -1;
		PWM_set_duty_cycle(&motors, PWM_6, pwm);;
		PWM_enable(&motors, PWM_6);
		PWM_disable(&motors, PWM_5);
	}
	return;
}

void wheel4(int pwm){
//REQUIRES: pwm_init() has been called
//          Takes a number from -255 to 255 where 0 is stopped and 
//          255 is full speed ahead
//EFFECTS: Modifies the speed of wheel4
	if (pwm == 0){
		PWM_disable(&motors, PWM_7);
		PWM_disable(&motors, PWM_8);
	}
	else if (pwm > 0){
		PWM_set_duty_cycle(&motors, PWM_7, pwm);;
		PWM_enable(&motors, PWM_7);
		PWM_disable(&motors, PWM_8);
	}
	else {
		pwm *= -1;
		PWM_set_duty_cycle(&motors, PWM_8, pwm);;
		PWM_enable(&motors, PWM_8);
		PWM_disable(&motors, PWM_7);
	}
	return;
}

void set_gun_angle(int angle){
//REQUIRES: pwm_init() has been called
//          angle is a number between 0 and 204
//EFFECTS: Sets angle of gun on robot
	angle += 46;
	PWM_set_duty_cycle(&servos, PWM_1, angle);
	return;
}

int main(){
	pwm_init();
	MSS_GPIO_init();
	MSS_GPIO_config(MSS_GPIO_31, MSS_GPIO_OUTPUT_MODE);



	while(1){
		set_gun_angle(0);
		wheel1(-255);
    }
    return 0;
}
