#include <stdio.h>
void quine(){char* data="#include <stdio.h>%cvoid quine(){char* data=%c%s%c;printf(data, 10, 34, data, 34, 10, 47, 10, 10, 47, 10, 10, 47, 10, 10, 47, 10, 10);}%c%c*%c    comment outside%c*%c%cint main(){%c%c*%c    comment in main%c*%c%cquine();}%c";printf(data, 10, 34, data, 34, 10, 47, 10, 10, 47, 10, 10, 47, 10, 10, 47, 10, 10);}
/*
    comment outside
*/
int main(){
/*
    comment in main
*/
quine();}
