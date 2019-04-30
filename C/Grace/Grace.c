#include <stdio.h>
#define DATA "#include <stdio.h>%c#define DATA %c%s%c%c#define MAIN() GRACE(DATA)%c#define GRACE(x)int main(){FILE *fp;fp = fopen(%c./Grace_kid.c%c, %cw+%c);fprintf(fp, x, 10, 34, x, 34, 10, 10, 34, 34, 34, 34, 10, 47, 10, 10, 47, 10, 10);fclose(fp);return 0;}%c%c*%c    This program will print its own source when run.%c*%c%cMAIN()%c"
#define MAIN() GRACE(DATA)
#define GRACE(x)int main(){FILE *fp;fp = fopen("./Grace_kid.c", "w+");fprintf(fp, x, 10, 34, x, 34, 10, 10, 34, 34, 34, 34, 10, 47, 10, 10, 47, 10, 10);fclose(fp);return 0;}
/*
    This program will print its own source when run.
*/
MAIN()
