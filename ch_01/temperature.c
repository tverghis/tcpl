#include <stdio.h>

#define LOWER 0
#define UPPER 300
#define STEP 20

int main()
{
    float fahr, celcius;

    fahr = LOWER;
    while (fahr <= UPPER)
    {
        celcius = (5.0 / 9.0) * (fahr - 32.0);
        printf("%.0f\t%.1f\n", fahr, celcius);
        fahr = fahr + STEP;
    }
}