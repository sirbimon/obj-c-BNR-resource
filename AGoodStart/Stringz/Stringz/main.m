//
//  main.m
//  Stringz
//
//  Created by Bimonaretga on 12/28/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"https://www.google.com/images/logos/ps_logo.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
        } else {
            
        }
        
        NSLog(@"the file is %lu bytes", (unsigned long)[data length]);
        
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = desktops[0];
        NSString *addString = @"/google.png";
        NSString *desktopURL = [NSString stringWithFormat:@"%@%@", desktopPath, addString];
        BOOL written = [data writeToFile:desktopURL options:NSDataWritingAtomic error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"Success");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);
        
    }
    return 0;
}

void firstOne()
{
    
    NSMutableString *str = [[NSMutableString alloc] init];
    for (int i = 0; i < 10; i++) {
        [str appendString:@"Aaron is cool!\n"];
    }
    
    // to error handle, declare a pointer to an NSError Object. But do not instantiate it,
    //The NSError instance will only be created if ther is in fact an error.
    
    NSError *error;
    
    //Pass the NSError pointer by reference to the NSStringMethod.
    
    BOOL success = [str writeToFile:@"/tooDarnedCool/coolio.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
    //Test returned the BOOL. and quert the NSError if the write failed.
    
    if (success) {
        NSLog(@"done writing /tmp/coolio.txt");
    } else {
        NSLog(@"writing /tmp/coolio.txt failed: %@", [error localizedDescription]);
    }
    //so you pass a pointer to the NSString Instance method to handle the creation of the error if the error is instantiated.
    //
    
}

void readDate()
{
    //time to read data
    //create an NSError pointer
    NSError *error;
    //create an NSString and init with content.
    NSString *str = [[NSString alloc] initWithContentsOfFile:@"/tmp/coolio.txt" encoding:NSASCIIStringEncoding error:&error];
    //check if the read failed
    if (!str) {
        //the read failed, the pointer holds nil.
        NSLog(@"read failed: %@", [error localizedDescription]);
    } else {
        //the read succeded,now read it.
        NSLog(@"the file looks like this:\n %@", str);
    }
    
}

void encodePNG()
{
   
}
