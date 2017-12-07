//
//  main.c
//  timeStructC
//
//  Created by Bimonaretga on 12/7/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    
    long secondsSince1970 = time(NULL);
    printf("it has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    long fourMilSec = secondsSince1970 + 4000000;
    localtime_r(&fourMilSec, &now);
    secondsSince1970 = secondsSince1970;  //+ 4000000;
    //printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    printf("the date is, %d-%d-%d\n",(now.tm_mon + 1), now.tm_mday, (now.tm_year + 1900) );
    
    
    return 0;
}
