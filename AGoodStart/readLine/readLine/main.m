//
//  main.m
//  readLine
//
//  Created by Bimonaretga on 12/11/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        char input[50] = {0} ;
        printf("enter your name:");
        
        scanf("%s", input);
        // read and format into the input buffer
        printf("Your name is %s\n", input);
        
        NSString *nsStringedChar = [NSString stringWithUTF8String:input];
        NSLog(@"it's time to unveil to the world, %@!!!!", nsStringedChar);
        
    }
    return 0;
}
