#include <stdio.h>
#define N 10

void print_arr(int*, int);

int main(){

  int array[N]={1,2,3,4,5,6,7,8,9,10};     //1 to 10
  int new_array[N];
  int even[N];
  int i, sum=0, pro=1, count=0;
  
  for(i=0; i<N; i++){
    new_array[i] = array[i] * 2;           //doubled
    sum += array[i];                       //summed
    pro *= array[i];                       //sum of product
    if( array[i] % 2 == 0 ){               
      even[count] = array[i];              //pick even numbers
      count++;                             //count even number
    }
  }
  
  print_arr(array,N);
  print_arr(new_array,N);
  print_arr(&sum,1);
  print_arr(&pro,1);
  print_arr(even,count);
    
  return 0;
}


void print_arr(int *arr, int n){
  int i;
  for(i=0; i<n; i++){
    printf("%3d",arr[i]);
  }
  printf("\n");
}
