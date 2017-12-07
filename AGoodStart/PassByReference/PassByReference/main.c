//
//  main.c
//  PassByReference
//
//  Created by Bimonaretga on 12/6/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inchPtr) {
    printf("so, we need to conver %f meters to feet.\n", meters);
    double rawFeet = meters * 3.281;
    double doubleFeet; //= (unsigned int)floor(rawFeet);
    double fractionedFeet = modf(rawFeet, &doubleFeet);
    unsigned int feet = (unsigned int)doubleFeet;
    double inches = fractionedFeet * 12.0;
    
    
    if (ftPtr) {
        //printf("storing %u to the address %p\n", unFeet, ftPtr);
        *ftPtr = feet;
    }
    
    if (inchPtr) {
        //printf("storing %u to the address %p\n", unFeet, ftPtr);
        *inchPtr = inches;
    }
    
}

int main(int argc, const char * argv[]) {
    double meters = 30;
    unsigned int feetPointer;
    double inchPointer;
    metersToFeetAndInches(meters, &feetPointer, &inchPointer);
    //okay, so if you're asked an address using pass by reference, you instantiate the variable first then give the address to the pass by reference using the & as an address.
    printf("89 meters is %d feet and %.2f inches\n", feetPointer, inchPointer);
    
    return 0;
}
