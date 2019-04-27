#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

void print_new_file(FILE *fp, int i) {
    char *data = "#include <stdio.h>%c#include <string.h>%c#include <stdlib.h>%c#include <unistd.h>%c#include <sys/types.h>%c%cvoid print_new_file(FILE *fp, int i) {%c    char *data = %c%s%c;%c    fprintf(fp, data, 10, 10, 10, 10, 10, 10, 10, 34, data, 34, 10, 10, 10, 10, 10, i - 1, 10, 34, 37, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 34, 92, 34, 10, 34, 92, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main() {%cFILE *fp;int i = %d;char intLength[18];int length = 0;%csprintf(intLength, %c%cd%c, i);%clength = strlen(intLength);%cchar *filename = (char*)malloc(sizeof(char) * (length + 11));%cfilename = strcpy(filename, %cSully_%c);%cfilename = strncat(filename, intLength, length);%cchar output[length + 11];%cchar output2[length + 13];%cstrcpy(output2, %c./Sully_%c);%cstrncat(output2, intLength, length);%cstrcpy(output, %cSully_%c);%cstrncat(output, intLength, length);%cstrncat(output, %c%c0%c, 1);%cfilename = strncat(filename, %c.c%c0%c, 3);%cfp = fopen(filename, %cw+%c);%cprint_new_file(fp, i);%cfclose(fp);%cif (i > 0)%c{%cchar* command1 = (char*)malloc(sizeof(char) * (strlen(filename) + strlen(output) + 30));%ccommand1 = strcpy(command1, %cgcc -Wall -Wextra -Werror %c);%ccommand1 = strncat(command1, filename, strlen(filename));%ccommand1 = strncat(command1, %c -o %c, 4);%ccommand1 = strncat(command1, output, strlen(output) + 1);%cfree(filename);%csystem(command1);%csystem(output2);%c}%creturn 0;%c}%c";
    fprintf(fp, data, 10, 10, 10, 10, 10, 10, 10, 34, data, 34, 10, 10, 10, 10, 10, i - 1, 10, 34, 37, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 34, 92, 34, 10, 34, 92, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main() {
FILE *fp;int i = 5;char intLength[18];int length = 0;
sprintf(intLength, "%d", i);
length = strlen(intLength);
char *filename = (char*)malloc(sizeof(char) * (length + 11));
filename = strcpy(filename, "Sully_");
filename = strncat(filename, intLength, length);
char output[length + 11];
char output2[length + 13];
strcpy(output2, "./Sully_");
strncat(output2, intLength, length);
strcpy(output, "Sully_");
strncat(output, intLength, length);
strncat(output, "\0", 1);
filename = strncat(filename, ".c\0", 3);
fp = fopen(filename, "w+");
print_new_file(fp, i);
fclose(fp);
if (i > 0)
{
char* command1 = (char*)malloc(sizeof(char) * (strlen(filename) + strlen(output) + 30));
command1 = strcpy(command1, "gcc -Wall -Wextra -Werror ");
command1 = strncat(command1, filename, strlen(filename));
command1 = strncat(command1, " -o ", 4);
command1 = strncat(command1, output, strlen(output) + 1);
free(filename);
system(command1);
system(output2);
}
return 0;
}
