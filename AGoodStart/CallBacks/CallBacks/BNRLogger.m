//
//  BNRLogger.m
//  CallBacks
//
//  Created by Bimonaretga on 12/28/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import "BNRLogger.h"

@interface BNRLogger()
//declare a private property for BNRLogger to handle the notification zoneChange: that gets fired when the phone enters a new timezone.
- (void)zoneChange:(NSNotification *)note;
@end

@implementation BNRLogger

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The System Time Zone has Changed");
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter)
    {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate: self.lastTime];
}

//because in the header file we made BNRLogger a delegate, it's time to conform.

//called each time a chunk of data arrives.
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    //create a mutable date if it does not already exists. because we only advertised it in the header and hadn't allocated and initialized the object.
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

//called when the last chunk of data has been processed.
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it All!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
}


//called if the fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end
