#include <stdio.h>
#include <math.h>
int main()
{

    int i = 0; int j = 0;
    double A[3][3] = {0};
        for(size_t i = 0;i < 3; i++){
            for (size_t j = 0; j < 3; j++) {
                A[i][j]=1.0/(i+j+2);
            }
        }

        for (size_t j = 0; j < 3; j++) {
            for(size_t i = 0;i < 3; i++){
                printf("\t");
                printf("%lf",A[i][j]);
            }
            printf("\n");
        }

    return 0;
}
