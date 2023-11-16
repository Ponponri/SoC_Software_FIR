# 0 "fir.c"
# 1 "/home/ponponri/Desktop/shared_folder/LAB4-1/lab-exmem_fir/testbench/counter_la_fir//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "fir.c"
# 1 "fir.h" 1





int taps[11] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
int inputbuffer[11];
int inputsignal[11] = {1,2,3,4,5,6,7,8,9,10,11};
int outputsignal[11];
# 2 "fir.c" 2

void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {

}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
 initfir();

 for(int i=0;i<11;i++){
  outputsignal[i] = 0;
  for(int j=0;j<=i;j++){
   outputsignal[i] += taps[j] * inputsignal[i-j];
  }
 }

 return outputsignal;
}
