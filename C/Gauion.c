void Gauion(double *A, double *b, int n,double *x )
{
 int i=0;int j=0;int k=0;
 //int *L = NULL;
 double sum=0.0;

    for ( k = 0; k < n; k++) {
        for(i=(k+1);i<(n+1);i++){
            (*(L+i)+k)=(*(A+i)+k)/(*(A+k)+k);
            *(b+i)=*(b+i)-(*(L+i)+k)*(*(b+k));
            for(j=(k+1);j<(n+1);j++){
                (*(A+i)+j)=(*(A+i)+j)-(*(L+i)+k)*(*(A+k)+j);
            }
        }
    }
(*(X+(n-1)))=(*(b+(n-1)))/(*(A+(n-1))+(n-1))
    for(i=(n-2);i>0;i--){
        for(j=(i+1);j<(n+1);j++){
            sum=sum+(*(A+i)+j)*(*(X+j));
        }
        (*(X+i))=((*(b+i))-sum)/(*(A+i)+i);
    }
}
