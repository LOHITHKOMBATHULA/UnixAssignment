
// segmentation fault on median

#include <stdio.h>
#include <stdlib.h>

float findMedian(int *arr, int size) {
    if (size % 2 == 0) {
        return (arr[size / 2] + arr[(size / 2) - 1]) / 2.0; // Accessing middle elements for even-sized array
    } else {
        return arr[size / 2]; // Accessing middle element for odd-sized array
    }
}

int main() {
    int *arr = NULL; // Set the array pointer to NULL
    int size = 5; // Array size

    float median = findMedian(arr, size); // Pass NULL pointer to findMedian
    printf("Median: %.2f\n", median); // Attempt to print the median (segmentation fault expected)
    return 0;
}
