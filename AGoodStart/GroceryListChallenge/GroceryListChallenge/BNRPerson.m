//
//  BNRPerson.m
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/12/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)heightInMeters {
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h {
    _heightInMeters = h;
}

- (int)weightInKilos {
    return _weightInKilos;
}

- (void)setWeightInKilos:(int)w {
    _weightInKilos = w;
}

- (void)addYourselToAnArray:(NSMutableArray *)theArray {
    [theArray addObject:self];
}

- (float)bodyMassIndex {
   // return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end

