//
//  main.m
//  HelloWorld
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *s1 = @"Hello ";
        NSString *s2 = @"World!";
        NSLog([s1 stringByAppendingString:s2]);
    }
    return 0;
}