void quine(){char* data="void quine(){char* data=%c%s%c;printf(data, 34, data, 34, 47, 47, 47, 47, 10);}%c* comment outside *%cint main(){%c* comment in main *%cquine();}%c";printf(data, 34, data, 34, 47, 47, 47, 47, 10);}/* comment outside */int main(){/* comment in main */quine();}
