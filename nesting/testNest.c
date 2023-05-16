/* Online C Compiler and Editor */
#include <stdio.h>

void print_bin(unsigned char value)
{
    for (int i = sizeof(char) * 7; i >= 0; i--)
        printf("%d", (value & (1 << i)) >> i );
}
void print_binary(unsigned int number)
{
    if (number >> 1) {
        print_binary(number >> 1);
    }
    putc((number & 1) ? '1' : '0', stdout);
}

int main()
{
    unsigned int x;
    
    unsigned int  mod;
    x =  1000000;
    for(unsigned int i=1;i<=x; i=i*10)
    {
        printf("Number: ");
        printf("%d",i-1);
	printf(" : ");
        print_binary(i-1);        
	printf(" : Modulo 2 : ");
	mod = i-1  & 1;  
	printf("%d",mod);
	putc('\n', stdout);

	printf("Number: ");
        printf("%d",i);
	printf(" : ");
        print_binary(i);        
	printf(" : Modulo 2 : ");
	mod = i  & 1;  
	printf("%d",mod);
	putc('\n', stdout);
    }
    unsigned int test;
    test =  57 & 99;
    printf("Bitwise AND of 57,99 : %d ",test);
    test = 57 | 99;
    printf("Bitwise OR  of 57,99 : %d ",test);

    test =  8  & 99;
    printf("Bitwise AND of 8,99 : %d ",test);
    test = 8 | 99;
    printf("Bitwise OR  of 8,99 : %d ",test);

    test =  100  & 99;
    printf("Bitwise AND of 100,99 : %d ",test);
    test = 100 | 99;
    printf("Bitwise OR  of 100,99 : %d ",test);



}

int calculate(int bottom, int top)
{
    if (top > bottom) {
        int sum = 0;
        for (int number = bottom; number <= top; number++) {
            if (number % 2 == 0) {
                sum += number;
            }
        }
        return sum;
    }
    else
    {
        return 0;
    }
}


