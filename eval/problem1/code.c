#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int func0(float numbers[], int size, float threshold) {
    int i, j;
    for (i = 0; i < size; i++) {
        for (j = i + 1; j < size; j++) {
            // WORKAROUND: Replaced fabs() with a ternary operator
            // to generate different machine code that may avoid the McToll bug.
            float diff = numbers[i] - numbers[j];
            if ((diff >= 0 ? diff : -diff) < threshold) {
                return 1;
            }
        }
    }
    return 10;
}
