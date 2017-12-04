//
//  main.c
//  BeerSong
//
//  Created by Bimonaretga on 12/4/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles) {
    if (numberOfBottles == 0) {
        printf("There are siply no more bottles of beer on the wall. \n\n");
        return;
        
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n ", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall. \n\n", oneFewer);
        //recursion time
        singSongFor(oneFewer);
        //print a message before the function ends
        printf("Put a bottle in the recycling, %d empty bottles in the bin. \n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {

    singSongFor(6);
    
}
