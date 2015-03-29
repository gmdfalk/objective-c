//
//  HelloWorld.m
//  
//
//  Created by Falk, Geronimo on 29/03/2015.
//
//

#import <Foundation/Foundation.h>

@interface HelloWorldExample : NSObject

+ (void) printMethod;

@end


@implementation HelloWorldExample

+ (void) printMethod {
    NSLog(@"Hello World\n");
}

@end

int main() {
    
    [HelloWorldExample printMethod];
    return 0;
}