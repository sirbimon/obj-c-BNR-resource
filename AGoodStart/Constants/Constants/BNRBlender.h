//
//  BNRBlender.h
//  Constants
//
//  Created by Bimonaretga on 12/28/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>
//
//typedef enum BlenderSpeed {
//    BlenderSpeedStir = 1,
//    BlenderSpeedChop = 2,
//    BlenderSpeedLiquify = 5,
//    BlenderSpeedPulse = 9,
//    BlenderSpeedIceCrush = 15
//};

typedef NS_ENUM(char, BlenderSpeed) {
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedLiquify,
    BlenderSpeedPulse,
    BlenderSpeedIceCrush
};

@interface BNRBlender : NSObject

{
    BlenderSpeed speed;
}
- (void)setSpeed:(BlenderSpeed)x;

@end
