#define  row  4
#define  col  4
#include <stdio.h>
int main()
{
    double A [row][col]={0};
    int i_count=0; int j_count=0; int n=4;
    for(i_count=0;i_count<n;i_count++){
        for(j_count=0;i_count<n;j_count++){
            A [row][col]=1.0/(i_count+j_count-1.0);
            printf("%lf\n",A [row][col]);
        }
    }

    return 0;
}
