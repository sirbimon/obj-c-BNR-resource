//
//  main.m
//  TimeAfterTime
//
//  Created by Bimonaretga on 12/7/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        //this is a class method
        //This is a message send [ReceiverObject selector]
        //reveiver is a pointer to the object or class that has the method you want to execute
        //selecor is the name of the method you want to execute
        NSLog(@"This NSDate object lives at %p now", now);
        NSLog(@"The date is %@", now);
        
        //this is an instance method. where now is an instance of NSDate
        double seconds = [now timeIntervalSince1970];
        NSLog(@"it has been %f seconds since the start of the Unix Epoch in 1970", seconds);

        
    }
    return 0;
}
