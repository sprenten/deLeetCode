#include <stdio.h>
#include <math.h>
#include <time.h>





int main()
{
	float f=65.45123;
	unsigned int b,m,s;
	unsigned int man_mask = 0b00000000011111111111111111111111;
	unsigned int b_mask   = 0b01111111100000000000000000000000;
	memcpy(&s,&f,sizeof(float));
	m = s & man_mask;
	b = s & b_mask<<1>>23;
	printf("Float: %f\n",f);
	printf("Integer: %d\n",s);
	printf("Mantissa_Mask: %d\n",0b00000000011111111111111111111111);
	printf("Mantissa: %d\n",m);
	printf("Beta: %d\n\n",b);

	f=33.45123;
        memcpy(&s,&f,sizeof(float));
        m = s & man_mask;
        b = s & b_mask<<1>>23;
        printf("Float: %f\n",f);
        printf("Integer: %d\n",s);
        printf("Mantissa_Mask: %d\n",0b00000000011111111111111111111111);
        printf("Mantissa: %d\n",m);
        printf("Beta: %d\n",b);


	f=17.45123;
        memcpy(&s,&f,sizeof(float));
        m = s & man_mask;
        b = s & b_mask;
        printf("Float: %f\n",f);
        printf("Integer: %d\n",s);
        printf("Mantissa_Mask: %d\n",0b00000000011111111111111111111111);
        printf("Mantissa: %d\n",m);
        printf("Beta: %d\n",b);


	f=129.45123;
        memcpy(&s,&f,sizeof(float));
        m = s & man_mask;
        b = s & b_mask;
        printf("Float: %f\n",f);
        printf("Integer: %d\n",s);
        printf("Mantissa_Mask: %d\n",0b00000000011111111111111111111111);
        printf("Mantissa: %d\n",m);
        printf("Beta: %d\n",b);

	f=12.375;
        memcpy(&s,&f,sizeof(float));
        m = s & man_mask;
        b = s & b_mask<<1>>23;
        printf("Float: %f\n",f);
        printf("Integer: %d\n",s);
        printf("Mantissa_Mask: %d\n",0b00000000011111111111111111111111);
        printf("Mantissa: %d\n",m);
        printf("Beta: %d\n",b);



}
