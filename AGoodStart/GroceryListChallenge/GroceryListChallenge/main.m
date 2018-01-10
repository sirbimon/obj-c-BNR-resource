//
//  main.m
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/12/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //create an array of BNREmployee Objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        
        for (int i = 0; i < 10; i++) {
            //create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            //Give the instance variable interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.5 + i;
            mikey.employeeID = i + 1;
            
            //put the employee in the employee array
            [employees addObject:mikey];
            
            //we need a ceo, if this is the first employee, assign them to the CEO in the executives: NSMutableDictionary
            if (i == 0) {
                [executives setObject:mikey forKey:@"CEO"];
            }
            
            //if it's the second, assign it to the CTO Chair.
            if (i == 1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        //we crate an array of assets here,
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        //create 10 assets
        for (int i = 0; i <10; i++) {
            //create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            //give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            //get a random number between 0 to 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //assign the asset to the employee.
            [randomEmployee addAsset:asset];
            
            //lets add them to the array of asssets, send an asset to the NSMutableArray we made earlier/
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAsset" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors: @[voa, eid]];
        
        NSLog(@"allAssets: %@", allAssets);
        
        //print out the entire dictionary.
        NSLog(@"executives: %@", executives);
        
        //print out the CEO's Info.
        NSLog(@"CEO: %@", executives[@"CEO"]);
        
        executives = nil;
        
        //time to filter,
        //create an NSPRedicate, and then use the instance method of allAssets: NSMutableArray to return an NSArray.
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAsset > 700"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"ToBeReclaimed!: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
        
        //NSNumber! you can't put in primitive C values in an array, so we have to wrap it in NSNumber
        NSMutableArray *list = [[NSMutableArray alloc] init];
        [list addObject:@5];
        [list addObject:@8.5];
        //you can't do math with these, so remember to unwrap it, do the math, and then wrap it again!
        
        
        
        
    }
    sleep(100);
    return 0;
}

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

void thirdPart() {
    //create an instance of BNRPerson -> BNREmployee
    BNREmployee *mikeyDay = [[BNREmployee alloc] init];
    BNREmployee *john = [[BNREmployee alloc] init];
    NSMutableArray *employees = [NSMutableArray array];
    
    mikeyDay.weightInKilos = 78;
    mikeyDay.heightInMeters = 1.8;
    mikeyDay.employeeID = 12;
    mikeyDay.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2001"];
    //mikeyDay.officeAlarmCode = 55555;
    [employees addObject:mikeyDay];
    //unsigned int mikeysCode = mikeyDay.officeAlarmCode;
    
    
    float height = mikeyDay.heightInMeters;
    int weight = mikeyDay.weightInKilos;
    
    NSDate *date = [mikeyDay hireDate];
    NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
    NSLog(@"mikey aka %@ was hired on %@", mikeyDay, date);
    
    john.weightInKilos = 65;
    john.heightInMeters = 1.6;
    john.employeeID = 5;
    john.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2002"];
    //john.officeAlarmCode = 9999;
    [employees addObject:john];
    

    
}
