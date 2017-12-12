//
//  main.m
//  MoreMessages
//
//  Created by Bimonaretga on 12/7/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init]; //allocate then init
        
        //double seconds = [[NSDate date] timeIntervalSince1970];
        NSDate *future = [now dateByAddingTimeInterval:100000];
        NSLog(@"it used to be %@, now it's %@", now, future);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",[cal calendarIdentifier]);
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];
        NSLog(@"This is the %luth day of the month", day);
    }
    return 0;
}
