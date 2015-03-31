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
        loops();
        intarray();
        chararray();
    }
    return 0;
}

int loops() {
    printf("asdf: ");
    for (float f=0.1; f < 4.31; f += 0.2) {
        printf("%.2f ", f);
    }
    printf("\n");
    return 0;
}

int intarray()
{
    int i, x[5], summe;
    x[0] = 3;
    x[1] = 5;
    x[2] = -2;
    x[3] = 7;
    // 1 // 2
    x[4] = 12;
    for(i=0; i<5; i++)
        printf("%d ", x[i]);
    printf("\n");
    // 3
    // 4 printf("Summe: %d\n", summe);
    summe = 0;
    for(i=0; i<5; i++)
        summe = summe + x[i];
    return 0;
}


int chararray () {
    char tx[16];
    strcpy(tx, "Das ist ein Text");
    printf("%s\n", tx);
    printf("Zeichen 0: %c\n", tx[0]);
    printf("Zeichen 14: %c\n", tx[14]);
        printf("Letztes Zeichen: %c\n", tx[15]);
    
    return 0;
}