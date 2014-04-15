#include <stdio.h>

int main(int argc, char *argv[]){
    if(argc != 4){
        fprintf(stderr,
                "Usage: time %s N time type\n"
                "\n"
                "type: 0 - ij loop\n"
                "      1 - ji loop\n"
                "      2 - one row\n"
                "      3 - one col\n"
                "      4 - diag\n"
                , argv[0]);
        return -1;
    }
    int N = atoi(argv[1]);
    int T = atoi(argv[2]);
    char a[N][N];
    int i, j;
    while(--T){
        switch(argv[3][0]){
        case '0':
            for(i = 0; i < N; i++)
                for(j = 0; j < N; j++)
                    a[i][j] = 42;
            break;
        case '1':
            for(j = 0; j < N; j++)
                for(i = 0; i < N; i++)
                    a[i][j] = 42;
            break;
        case '2':
            for(i = 0; i < N; i++)
                a[0][i] = 42;
            break;
        case '3':
            for(i = 0; i < N; i++)
                a[i][0] = 42;
            break;
        case '4':
            for(i = 0; i < N; i++)
                a[i][i] = 42;
            break;
        }
    }
    return 0;
}



