//
//  BNREmployee.h
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/15/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson



@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;

@property (nonatomic, copy) NSSet *assets;

- (void)addAsset:(BNRAsset *)a; //instance method that returns a void, named addAsset, takes in a BNRAsset, inside the method implementation, it uses an "a".
- (void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAsset;
- (double)yearsOfEmployment;

@end
