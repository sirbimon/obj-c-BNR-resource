//
//  BNRAsset.m
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/18/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    //return [NSString stringWithFormat:@"<%@: $%u", self.label, self.resaleValue];
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>", self.label, self.resaleValue];
    }
}

- (void)dealloc {
    NSLog(@"deallocating: %@", self);
}

@end
