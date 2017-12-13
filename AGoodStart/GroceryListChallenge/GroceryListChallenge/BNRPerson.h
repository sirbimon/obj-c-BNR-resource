//
//  BNRPerson.h
//  GroceryListChallenge
//
//  Created by Bimonaretga on 12/12/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    //BNRPerson has two Instance VARIABLES
    float _heightInMeters;
    int _weightInKilos;
}

//BNRPerson has methods to read and set its instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

//BNR Person has a method that calculates the body mass index
- (float)bodyMassIndex;

@end
