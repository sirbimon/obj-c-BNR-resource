//
//  main.c
//  Degrees
//
//  Created by Bimonaretga on 12/4/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>

float fahrenheitFrCelcius(float cel) {
    float fahr = cel * 1.8 + 32;
    printf("%f celcius is %f fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    
    float freezeInc = 0;
    float freezeInFahr = fahrenheitFrCelcius(freezeInc);
    printf("Water freezes at %f degrees fahrenheit.\n", freezeInFahr);
    
    return 0;
}
