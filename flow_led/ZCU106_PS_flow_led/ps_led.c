#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpiops.h"
#include "sleep.h"

int main()
{
    init_platform();



    static XGpioPs psGpioInstancePtr;
    XGpioPs_Config* GpioConfigPtr;
    int iPinNumber= 23; //MIO23
    u32 uPinDirection = 0x1; //1��ʾ����� 0��ʾ����
    int xStatus;

    //--MIO�ĳ�ʼ��
    GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PSU_GPIO_0_DEVICE_ID);
    if(GpioConfigPtr == NULL)
    	return XST_FAILURE;
    xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,GpioConfigPtr,
    GpioConfigPtr->BaseAddr);
    if(XST_SUCCESS != xStatus)
    	print(" PS GPIO INIT FAILED \n\r");

    //--MIO�������������
    XGpioPs_SetDirectionPin(&psGpioInstancePtr, iPinNumber,uPinDirection);//����MIO�������
    XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, iPinNumber,1);//����MIO�ĵ�7λ���
    while(1)
    {
        XGpioPs_WritePin(&psGpioInstancePtr, iPinNumber, 1);//����MIO�ĵ�7λ���1
        usleep(500000); //��ʱ
        XGpioPs_WritePin(&psGpioInstancePtr, iPinNumber, 0);//Ϩ��MIO�ĵ�7λ���0
        usleep(500000); //��ʱ
    }



    cleanup_platform();
    return 0;
}
