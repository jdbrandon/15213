#include <stdio.h>
#include <stdlib.h>
int main(){
	int x = 0x87654321;
	fprintf(stderr,"%x\n",x);
	fprintf(stderr,"%x\n",x & 0xff);
	fprintf(stderr,"%x\n",~(x | 0xff) | x & 0xff);
	fprintf(stderr,"%x\n",x|0xff);
	exit(0);
}
