#include "PCF8591.h"


/*******************************************************************************
 *  函数名字 ：  initPCF8591
 *  函数介绍 ：  初始化PCF8591芯片
 *  参数介绍 ：  无
 *  返回    ：  无
 ******************************************************************************/
void initPCF8591()
{
	
}

/*******************************************************************************
 *  函数名字 ：  getADCValue
 *  函数介绍 ：  得到ADC特定通道的值
 *  参数介绍 ：  chan : 选择的通道
 *  返回    ：  得到ADC的值
 ******************************************************************************/
unsigned char getADCValue(unsigned char chan)
{
	unsigned char val;
	i2cStart();
	if( !i2cWrite(0x48 << 1) )  //寻址PCF8591,如未应答,则停止操作,并返回0
	{
		i2cStop();
		return 0;
	}
	
	i2cWrite(0x40 | chan);  //写入控制字,选择转换通道
	i2cStart();
	i2cWrite( (0x48 << 1) | 0x01 );  //重新寻址PCF8591,制定后续为读操作
	i2cReadACK();             //先读取一个字节,提供采样时间
	val = i2cReadNAK();         //读取刚刚转换完的数值
	i2cStop();
	return val;
}

/*******************************************************************************
 *  函数名字 ：  setDACValue
 *  函数介绍 ：  设置DAC的输出值
 *  参数介绍 ：  value : 将要设置的值
 *  返回    ：  无   
 ******************************************************************************/
void setDACValue(unsigned char value)
{
	
}
