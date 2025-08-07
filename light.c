#include <stdio.h>

int main(int argc, char* argv[]) {
    char str[10];
    if (argc < 2) {
        printf("Please input the brightness\n> ");
        fgets(str, sizeof(str), stdin);
    } else {
        snprintf(str, sizeof(str), "%s", argv[1]);
    }
    FILE* fp = fopen("/sys/class/backlight/intel_backlight/brightness","w");

    fwrite(str, sizeof(str), 1, fp);
    printf("The brightness set to %s\n", str);
    fclose(fp) ;
    return 0;
}


