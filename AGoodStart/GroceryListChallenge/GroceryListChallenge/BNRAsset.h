//
//  BNRAsset.h
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/18/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject


@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic, weak) BNREmployee *holder; //this will cause some memory leaks.


@end
