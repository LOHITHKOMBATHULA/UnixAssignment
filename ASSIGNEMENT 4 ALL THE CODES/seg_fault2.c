#include <stdio.h>
#include <stdlib.h>

void processArray(int *arr, int size) {
    for (int i = 0; i < size; i++) { // Loop with potential out-of-bounds access
        printf("Element at index %d: %d\n", i, arr[i]);
    }
}

int main() {
    int size = 5;
    int *arr = malloc(size * sizeof(int)); // Allocate memory for array

    // Initialize array elements
    for (int i = 0; i < size; i++) {
        arr[i] = i + 1;
    }

    processArray(arr, size); // Pass the array to processArray

    free(arr); // Free allocated memory
    return 0;
}
