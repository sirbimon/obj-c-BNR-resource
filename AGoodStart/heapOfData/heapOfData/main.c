//
//  main.c
//  heapOfData
//
//  Created by Bimonaretga on 12/7/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    //declare the pointer
    float *startOfBuffer;
    
    //ask to use some bytes from the heap
    startOfBuffer = malloc(1000 * sizeof(float));
    
    //use the bufferr...
    
    //relinquish your clai on the memry so it can be reused
    free(startOfBuffer);
    
    //forget where that memory is
    startOfBuffer = NULL;
    
    return 0;
}
