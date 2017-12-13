//
//  main.m
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/12/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

void secondPart() {
    NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
    NSArray *names = [nameString componentsSeparatedByString:@"\n"];
    
    for (NSString *n in names) {
        NSRange r = [n rangeOfString:@"aa" options:NSCaseInsensitiveSearch];
        if (r.location != NSNotFound) {
            NSLog(@"%@", n);
        }
    }
}

void firstPart() {
    NSMutableArray *groceryList = [NSMutableArray array];
    NSString *firstItem = @"Cabbage";
    NSString *secondItem = @"More Cabbage";
    NSString *thirdItem = @"Even More Cabbage";
    
    [groceryList addObject:firstItem];
    [groceryList addObject:secondItem];
    [groceryList addObject:thirdItem];
    [groceryList addObject:@"Jumanji Board"];
    
    printf("Grocery List:\n");
    for (NSString *item in groceryList) {
        printf("%s \n", [item UTF8String]);
    }
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create an instance of BNRPerson
        BNRPerson *mikeyDay = [[BNRPerson alloc] init];
        
        // give the instance variables interesting values using the setter
        [mikeyDay setWeightInKilos:78];
        [mikeyDay setHeightInMeters:1.8];
        
        //log the instance variables using getters
        float height = [mikeyDay heightInMeters];
        int weight = [mikeyDay weightInKilos];
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        float bmi = [mikeyDay bodyMassIndex];
        NSLog(@"Mikey has a BMI of %f", bmi);
    }
    return 0;
}

