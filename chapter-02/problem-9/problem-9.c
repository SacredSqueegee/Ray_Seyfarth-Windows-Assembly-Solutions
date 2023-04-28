#include <stdio.h>
#include <stdbool.h>

int main()
{
    float min,max,cur,prev = 0.0;

    while(true)
    {
        cur += 1.0;

        // Update min/max
        if (cur > prev)
            max = cur;
        if (cur < prev)
            min = cur;
        
        // Did cur actually change?
        if (cur == prev)
            break;
        
        prev = cur;
    }

    printf("We incremented by 1.0 but the value of 'cur' did not change!\n");
    printf("Value of cur: %f\n", cur);
    printf("Value of prev: %f\n", prev);
    printf("Value of max: %f\n", max);
    printf("Value of min: %f\n", min);

    return 0;
}
