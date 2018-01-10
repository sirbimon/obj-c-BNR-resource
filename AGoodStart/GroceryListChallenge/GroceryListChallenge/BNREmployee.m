//
//  BNREmployee.m
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/15/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//a class extension
@interface BNREmployee ()
{
    //the purpose of hiding this is to hide mutability.
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;
@end

@implementation BNREmployee



//because we declared an instance variable in the header, we need to create a getter and a setter for the _assets variable.

- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
    //
    
}

//now the setter has been declared, now it's time for the getter.

- (NSArray *)assets {
    return [_assets copy];
}

//cool, now we need to implement two more things, the addAsset.
- (void)addAsset:(BNRAsset *)a
{
    if (!_assets) {
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (void)removeAsset:(BNRAsset *)a
{
    [_assets removeObject:a];
}

- (unsigned int)valueOfAsset {
    //sum up the resale value of the assets.
    unsigned int sum = 0;
    for (BNRAsset *asset in _assets) {
        sum += asset.resaleValue;
    }
    return sum;
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
    return [NSString stringWithFormat:@"<Employee %u: weight= %dkgs, height= %f, $%u in assets>", self.employeeID, self.weightInKilos, self.heightInMeters, self.valueOfAsset];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
