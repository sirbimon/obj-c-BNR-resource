//
//  main.c
//  Addresses
//
//  Created by Bimonaretga on 12/5/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>

void playingWithPointers() {
    int i = 17;
    int *ptr = &i;
    printf("i stores its value at %p\n", ptr);
    printf("the int stored at addressofI is %d\n", *ptr);
    *ptr = 8931;
    printf("now the stored int at addressofI is %d\n", *ptr);
    printf("An int is %zu bytes \n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    printf("the int stored is %zu bytes\n", sizeof(*ptr));
}
void pointerFunctions() {
    float *myPointer;
    //set myPointer to NULL for now, I'll store an address there
    //later in the program
    myPointer = NULL;
    
    //has myPointer been set?
    if (myPointer) {
        //myPointer is not NULL
        printf("My pointer is not NULL\n");
    } else {
        //My Pointer is null,
        printf("my pointer is null!");
    }
    
    //scenario, you need to figure out if you have an actual gravity or not.
}

void gravity() {
    int *measuredGravityPtr = NULL;
 //did we measure the gravity?
    if (measuredGravityPtr) {
        //do stuff with the measured gravity if not null
    } else {
        // do stuff without measured gravity
    }
}

void pointerDeclarations() {
}

int main(int argc, const char * argv[]) {
    // insert code here...
    

    return 0;
}
