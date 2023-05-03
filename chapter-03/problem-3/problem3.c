#include <stdio.h>

int main()
{
    double array[1000000];

    for (int i=0; i < 1000000; i++)
    {
        array[i] = 0.0;
    }

    printf("done...\n");

    return 0;
}