//
//  main.m
//  firstObjCChallange
//
//  Created by Bimonaretga on 12/7/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSHost *myHost = [NSHost currentHost];
        NSString *hostName = [myHost localizedName];
        NSLog(@"Hi! my name is %@", hostName);
        
    }
    return 0;
}
