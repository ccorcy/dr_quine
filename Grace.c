#include <stdio.h>
#define DATA "#include <stdio.h>%c#define DATA %c%s%c%c#define MAIN() GRACE(DATA)%c#define GRACE(x)int main(){%c*This program will print its own source when run. *%cFILE *fp;fp = fopen(%c./Grace_kid.c%c, %cw+%c);fprintf(fp, x, 10, 34, x, 34, 10, 10, 47, 47, 34, 34, 34, 34, 10, 10, 10);fclose(fp);return 0;}%c%cMAIN()%c"
#define MAIN() GRACE(DATA)
#define GRACE(x)int main(){/*This program will print its own source when run. */FILE *fp;fp = fopen("./Grace_kid.c", "w+");fprintf(fp, x, 10, 34, x, 34, 10, 10, 47, 47, 34, 34, 34, 34, 10, 10, 10);fclose(fp);return 0;}

MAIN()
