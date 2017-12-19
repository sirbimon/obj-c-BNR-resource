//
//  BNREmployee.m
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/15/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

//because we declared an instance variable in the header, we need to create a getter and a setter for the _assets variable.

- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
    //what's happening here is that we're sending a message to "a", an instance of NSArray, which in turn will give us back a mutable copy of "a". and set it to the instance variable of _assets.
}

//now the setter has been declared, now it's time for the getter.

- (NSArray *)assets {
    return [_assets copy]; //this will return an NSArray from the NSMutableArray
}

//cool, now we need to implement two more things, the addAsset.
- (void)addAsset:(BNRAsset *)a {
    //check if assets nil
    if (!_assets) {
        //create the array if it's nil
        _assets = [[NSMutableArray alloc] init];
        //now we have the mutable array when we need it, that is when we already have an asset, and we'll
    }
}

- (double)yearsOfEmployment
{
   //check if hireDate is nil
    if (self.hireDate) {
        //NStimeInterval same as double
        NSDate *now = [NSDate date];
        NSTimeInterval seconds = [now timeIntervalSinceDate:self.hireDate];
        return seconds / 31557600.0;
    } else {
        return 0;
    }
}

- (float)bodyMassIndex
{ //override of body mass index property
    printf("BNREmployee override\n");
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{ //override of description
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    
}

@end
