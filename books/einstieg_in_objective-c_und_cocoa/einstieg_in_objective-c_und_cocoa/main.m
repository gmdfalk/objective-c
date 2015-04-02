//
//  main.m
//  einstieg_in_objective-c_und_cocoa
//
//  Created by Falk, Geronimo on 01/04/2015.
//
//

#import <Foundation/Foundation.h>
#import "Chapter2.h"
#import "Chapter3.h"

void printSeparator(NSString* name) {
    NSLog(@"\n\n--------------%@---------------\n", name);
}

void chap2() {
    printSeparator(@"2.3: Rechnen mit Zahlen");
    [Chapter2 rechnenMitZahlen];
    printSeparator(@"2.4: Verzweigungen");
    [Chapter2 verzweigungen];
    printSeparator(@"2.6: Funktionen");
    [Chapter2 funktionen];
    printSeparator(@"2.7: Felder");
    [Chapter2 felder];
    printSeparator(@"2.8: Zeichenketten");
    [Chapter2 zeichenketten];
}

void chap3() {
    printSeparator(@"3.1: Zeiger");
    [Chapter3 zeiger];
    printSeparator(@"3.2: Strukturen");
    [Chapter3 strukturen];
    printSeparator(@"3.4: Enumerationen");
    [Chapter3 enumerationen];
    printSeparator(@"3.5: Bit-Masken und -Operatoren");
    [Chapter3 bitoperatoren];
    printSeparator(@"3.6: Mathematische Funktionen");
    [Chapter3 arithmetik];
    printSeparator(@"3.7: Zufallszahlen");
    [Chapter3 zufallszahlen];
    printSeparator(@"3.9: Funktionen als Parameter");
    [Chapter3 funktionAlsParameter];
    printSeparator(@"3.10: Uebungen");
    [Chapter3 uebung_1];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        chap2();
        chap3();
    }
    return 0;
}
