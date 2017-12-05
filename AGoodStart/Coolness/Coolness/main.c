//
//  main.c
//  Coolness
//
//  Created by Bimonaretga on 12/5/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>

void whileBeingCool(char *name) {
    int i = 0;
    while (i < 12) {
        printf("%d. %s is cool\n", i, name);
        i++;
    }
}

void forBeingCool(char *name) {
    for (int i = 0; i < 12; i++) {
        printf("%d. %s is a cool guy\n", i, name);
    }
}

void checkingTheEye() {
    int i;
    for (i = 0; i < 100; i++) {
        printf("checking the i\ni is = %d\n", i);
        if (i + 90 == i * i) {
            break;
        }
    }
    printf("the answer is %d\n", i);
}

void loopToContinue(int upperLimit) {
    int i;
    printf("starting loop to continue\n");
    for (i = 0; i < upperLimit; i++) {
        if (i % 3 == 0) {
            continue;
        }
        printf("checking i = %d\n", i);
        if (i + upperLimit == i * i) {
            break;
        }
    }
    printf("final answer is = %d\n", i);
}

void doWhileWhoop() {
    // a do while loop ensures that the code will be executed at least once
    int i = 0;
    do {
        printf("checkout i = %d\n", i);
        i++;
    } while (i < 12);
}

void countDownToZero(int input) {
    int i = input;
    while (i >= 0  ) {
        if (i == 0) {
            printf("i = %d terminate the program\n", i);
            break;
        }
        
        printf("i equals = %d, we're not there yet, reduce by 3! \n", i);
        if ((i % 5) == 0) {
            printf("found one, %d is divisible by 5!\n", i);
        }
        i -= 3;
        
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    countDownToZero(99);
    return 0;
}
