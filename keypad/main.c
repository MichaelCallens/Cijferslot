#include "PJ_RPI.h"
#include <stdio.h>


char numbers[]={'7','8','9',' ','4','5','6',' ','1','2','3',' ','0',' ',' ','e','\0'};
char str[10]="";

void ByteToOutput(int data)
{
	if(data & 0x01)
			GPIO_SET = 1 << 2;	// inschakelen
	else
			GPIO_CLR = 1 << 2;	// uitschakelen

	if(data & 0x02)
			GPIO_SET = 1 << 3;		// inschakelen
	else
			GPIO_CLR = 1 << 3;	// uitschakelen

	if(data & 0x04)
			GPIO_SET = 1 << 4;			// inschakelen
	else
			GPIO_CLR = 1 << 4;	// uitschakelen

	if(data & 0x08)
			GPIO_SET = 1 << 17;	// inschakelen
	else
			GPIO_CLR = 1 << 17;	// uitschakelen

}
void GetNumber(int ingedrukteknop)
{
	if(numbers[ingedrukteknop]!='e')
	{		
		sprintf(str, "%s%c", str, numbers[ingedrukteknop]);
		printf("%s\n",str);
		fflush(stdout);
	}		
	else
	{
		if(strcmp (str,"0123")==0)
		{
			GPIO_SET = 1 << 11;	// inschakelen
			printf("de code is juist\n");			
			fflush(stdout);
			sprintf(str, "%s","");
		}
		else 
		{
			GPIO_CLR = 1 << 11;	// uitschakelen
			printf("de code is fout\n");
			fflush(stdout);
			sprintf(str, "%s","");
		}
	}	
		
}


int main()
{
	if(map_peripheral(&gpio) == -1) 
	{
       	 	printf("Failed to map the physical GPIO registers into the virtual memory space.\n");
        	return -1;
    	}

	// Define gpio 17 as output
	
	INP_GPIO(2);
	OUT_GPIO(2);

	INP_GPIO(3);
	OUT_GPIO(3);

	INP_GPIO(4);
	OUT_GPIO(4);

	INP_GPIO(17);
	OUT_GPIO(17);

	INP_GPIO(11);
	OUT_GPIO(11);

	INP_GPIO(27);
	INP_GPIO(22);
	INP_GPIO(10);
	INP_GPIO(9);

	while(1)
	{
		for(int i=0;i<4;i++)//de kolommen één voor één  aansturen
		{
			switch(i)
			{
				case 0:ByteToOutput(0x01);
					break;
				case 1:ByteToOutput(0x02);
					break;
				case 2:ByteToOutput(0x04);
					break;
				case 3:ByteToOutput(0x08);
					break;
			}
			for(int j=0;j<4;j++)//tijdens dat de kolom aangestuurd is controleren als er een button ingedrukt is.
			{
				switch(j)
				{
					case 0:if((GPIO_READ(27) & (0x01 << 27))  == (0x01 << 27))
							{	
								while((GPIO_READ(27) & (0x01 << 27))  == (0x01 << 27));	
								GetNumber(j*4+i);			
							}
						break;
									
					case 1:if((GPIO_READ(22) & (0x01 << 22))  == (0x01 << 22))
							{	
								while((GPIO_READ(22) & (0x01 << 22))  == (0x01 << 22));			
								GetNumber(j*4+i);		
							}
						break;
									
					case 2:if((GPIO_READ(10) & (0x01 << 10))  == (0x01 << 10))
							{
								while((GPIO_READ(10) & (0x01 << 10))  == (0x01 << 10));		
								GetNumber(j*4+i);		
							}
						break;
									
					case 3:if((GPIO_READ(9) & (0x01 << 9))  == (0x01 << 9))
							{
								while((GPIO_READ(9) & (0x01 << 9))  == (0x01 << 9));
								GetNumber(j*4+i);					
							}
						break;
				}
				usleep(5000);
				
			}
		}

		
		
		// Toggle 17 (blink a led!)
		
		
	}
	return 0;	

}
