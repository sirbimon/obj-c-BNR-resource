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
        
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *myCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1992];
        [comps setDay:3];
        [comps setMonth:3];
        [comps setHour:3];
        NSDate *dob = [myCalendar dateFromComponents:comps];
        double secondsSinceBirth = [now timeIntervalSinceDate:dob];
        
        NSLog(@"I have been alive for %.0f seconds", secondsSinceBirth);
        
    }
    return 0;
}
