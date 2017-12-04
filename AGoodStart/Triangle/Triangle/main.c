//
//  main.c
//  Triangle
//
//  Created by Bimonaretga on 12/4/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>

float calculateAngle(float angleA, float angleB) {
    float angleC = 180.0 - angleA - angleB;
    return angleC;
}

int main(int argc, const char * argv[]) {
    float angleA = 60.0;
    float angleB = 20;
    float angleC = calculateAngle(angleA, angleB);
    printf("the third angle is %.1f \n", angleC);
}
