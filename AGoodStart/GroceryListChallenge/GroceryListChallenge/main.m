//
//  main.m
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/12/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

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
        //create an instance of BNRPerson -> BNREmployee
        BNREmployee *mikeyDay = [[BNREmployee alloc] init];
        BNREmployee *john = [[BNREmployee alloc] init];
        NSMutableArray *employees = [NSMutableArray array];
        
        mikeyDay.weightInKilos = 78;
        mikeyDay.heightInMeters = 1.8;
        mikeyDay.employeeID = 12;
        mikeyDay.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2001"];
        mikeyDay.officeAlarmCode = 55555;
        [employees addObject:mikeyDay];
        
        
        float height = mikeyDay.heightInMeters;
        int weight = mikeyDay.weightInKilos;
        
        NSDate *date = [mikeyDay hireDate];
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"mikey aka %@ was hired on %@", mikeyDay, date);
        
        john.weightInKilos = 65;
        john.heightInMeters = 1.6;
        john.employeeID = 5;
        john.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2002"];
        john.officeAlarmCode = 9999;
        [employees addObject:john];
        
        
        
        
        

        
    }
    return 0;
}

