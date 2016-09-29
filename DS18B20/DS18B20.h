#ifndef __DS18B20_H_
#define __DS18B20_H_

#include <8052.h>
#include "kingst.h"
#include "config.h"

//温度引脚
#define Ds18b20IO P3_2     //温度传感器引脚

/*******************************************************************************
 * 函数名称 : getDs18B20
 * 函数介绍 : 读取18B20的温度,整数温度
 * 参数介绍 : 无
 * 返回值   : 整数温度
 ******************************************************************************/
extern unsigned char getDs18B20(void);

/*******************************************************************************
 * 函数名称 : get18B20Ack
 * 函数介绍 : 判断18B20是否就绪
 * 参数介绍 : 无
 * 返回值   : 0 : 就绪, 1:没有就绪
 ******************************************************************************/
extern char get18B20Ack();

/*******************************************************************************
 * 函数名称 : write18B20
 * 函数介绍 : 向18B20写一个字节
 * 参数介绍 : ch : 将要写的字节
 * 返回值   : 无
 ******************************************************************************/
extern void write18B20(unsigned char ch);

/*******************************************************************************
 * 函数名称 : read18B20
 * 函数介绍 : 从18B20读取一个字节
 * 参数介绍 : 无
 * 返回值   : 返回读取的字节
 ******************************************************************************/
extern unsigned char read18B20();

/*******************************************************************************
 * 函数名称 : getFloatDs18B20
 * 函数介绍 : 得到18B20的浮点温度
 * 参数介绍 : 无
 * 返回值   : 浮点温度
 ******************************************************************************/
extern float getFloatDs18B20(void);
#endif
