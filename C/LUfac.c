void Lufac(double A[],int n,double L[],double U[])
{
 int i=0;int j=0;int k=0;


     for(i=0;i<n;i++){
         for(j=0;j<n;j++){
             if (i=j) {
                 (*(L+i)+j)=1;
             } else  {
                 (*(L+i)+j)=0;
             }
         }
     }

double sumu=0.0;
     for(k=0;k<n;k++){
         for(i=k;i<n;i++){
             for (j=1;j<(k-1);k++){
                 sumu=sumu-(*(L+k)+j)*(*(U+j)+i);
             }
             (*(U+k)+i)=(*(A+k)+i)-sumu;
         }
     }

double suml=0.0;
    for(k=0;k<n;k++){
        for(i=(k+1);i<n;i++){
            for(j=1;j<(k-1);j++){
                suml=suml-(*(L+i)+j)*(*(U+j)+k);
            }
            (*(L+i)+k)=((*(A+i)+k)-suml)/(*(U+k)+k);
        }
    }
}
