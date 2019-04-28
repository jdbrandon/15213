struct obj{
  double d;
  int i,j;
  char* s;
  short w;
  char c;
};

typedef struct obj obj;

int func(int n, obj o[n]){
   int i,j,c = 0;

   for(i=0;i<n;i++)
      for(j=n-1;j>=0;j--){
         if(o[i].w == o[j].i)
	    o[i].i = o[j].j;
         else o[i].j = o[j].i;
         c++;
      }
   return c;
}
