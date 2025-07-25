#include <stdio.h>
#include <assert.h>
int func0(float numbers[], int size, float threshold);

int main(){
    
    float a[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
    printf("Testing case 1\n");
    assert(func0(a, 6, 0.3) == 1);
    assert(func0(a, 6, 0.05) == 10);

    float b[] = {1.0, 2.0, 5.9, 4.0, 5.0};
    printf("Testing case 2\n");
    assert(func0(b, 5, 0.95) == 1);
    assert(func0(b, 5, 0.8) == 10);
    
    float c[] = {1.0, 2.0, 3.0, 4.0, 5.0};
    printf("Testing case 3\n");
    assert(func0(c, 5, 2.0) == 1);

    float d[] = {1.1, 2.2, 3.1, 4.1, 5.1};
    printf("Testing case 4\n");
    assert(func0(d, 5, 1.0) == 1);
    assert(func0(d, 5, 0.5) == 10);

    printf("All tests passed\n");
    return 0;
}