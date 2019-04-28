#define N 64
int main(){
    void transpose(int[N][N],int[N][N]);
    int a[N][N], b[N][N],i,j;

    for(i=0;i<N;i++)
        for(j=0;j<N;j++)
            a[i][j] = ((i+1)*10) + (j+1);
}

void transpose(int a[N][N], int b[N][N]){
    int i,j;
    for(i=0;i<N;i++)
        for(j=0;j<N;j++)
            b[j][i] = a[i][j];
}
