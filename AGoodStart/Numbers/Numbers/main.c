//
//  main.c
//  Numbers
//
//  Created by Bimonaretga on 12/4/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    unsigned long x = 255;
    printf("x is %lu. \n", x);
    printf("in octal, x is %lo. \n", x);
    printf("in hexadecimal, x is %lx. \n", x);
    
    printf(" 2 + 2 * 3 = %d\n", 2 + 2 * 3);
    printf("11/3 = %f\n", 11/(float)3);
    
    int y = 5;
    y = y + 1;
    
    printf("the absolute value of -5 is %d\n", abs(-5));
    
    double zDouble = 12345.67553;
    printf("z is %.2f\n", zDouble);
    printf("z is %.2e\n", zDouble);
    
    return 0;
}
