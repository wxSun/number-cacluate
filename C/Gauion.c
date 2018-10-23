#define row  4
#define col  4



int  Gauion(double A[row][col], double b[col], int n,double x[col] )
{
 int i=0;int j=0;int k=0;
 double L[ ][row] = {0};
    for (size_t k = 0; k < (col-1); k++) {
        for (size_t i = k; i < col; i++) {
            L[i][k]=A[i][k]/A[k][k];
            b[i]=b[i]-L[i][k]*b[k];
            for (size_t j = k; j < col; j++) {
                A[i][j]=A[i][j]-L[i][k]*A[k][j];
            }
        }
    }
x[col]=b[col]/A[row][col];
double sum = 0;
    for (size_t i = (n-1); i > 0; i--) {
        for (size_t j = i; j < col; j++) {
            sum=sum+A[i][j]*x[j];
        }
        x[i]=(b[i]-sum)/A[i][i];
    }
return -1;
}
