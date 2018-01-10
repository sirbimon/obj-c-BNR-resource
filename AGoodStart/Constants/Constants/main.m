//
//  main.m
//  Constants
//
//  Created by Bimonaretga on 12/28/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#import <Foundation/Foundation.h>
//if we want to include other directives we wrote
//#import "PetStore.h" //this is a name for a library that we wrote ourselves.

//Inglude the headers for the OpenLDAP Libraries.
//#import <ldap.h> //now this means that this is a standard library that we can use.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
        // so what happens here, is we used the macro MAX(A,B) which is an application of the constant theory in objective C.
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money here is %@", currency);
    }
    return 0;
}

enum BlenderSpeed {
    BlenderSpeedStir = 1,
    BlenderSpeedChop = 2,
    BlenderSpeedLiquify = 5,
    BlenderSPeedPulse = 9,
    BlenderSpeedIceCrush = 15
};
