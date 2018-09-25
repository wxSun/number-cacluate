

/*
# include <stdio.h>

  double duoxiangshiqiuzhi (double a[], int n,double x);

  int main(void )
{

 double  m[4]= {1.655, 2.5, 3.33, 4.0};
 double p=duoxiangshiqiuzhi (m,4,4.05);
 printf("%lf\n", p);

}

*/

/******************************************************************************
input : a[]  多项式系数
        n    多项式阶数
        x    待求值
output :
        多项式的值
license:  Hsinwang   2018.9.20
*******************************************************************************/
    double  duoxiangshiqiuzhi   (double a[], int n,double x)
 {
     int count=0;   // 计数器
     double out=a[n-1]; //  输出值，结果保存

        for (count=1;count<(n-1);count++)
            {
             out=a[n-1-count]+(out*x);//迭代计算过程
            }
    return out;
 }
