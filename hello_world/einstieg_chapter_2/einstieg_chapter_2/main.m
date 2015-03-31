//
//  main.m
//  einstieg_chapter_2
//
//  Created by Falk, Geronimo on 30/03/2015.
//  Copyright (c) 2015 Falk, Geronimo. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Fahrzeug.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        pointers();
        structs1();
        structs2();
        enums();
        bitmasks();
        maths();
        randomNumbers();
    }
    return 0;
}

int pointers() {
    int a = 5;
    int *pa = &a;
    *pa = 10;
    
    int *pb = &a;
    *pb = *pb + 3;
    
    printf("%d\n", a);
    return 0;
}

int structs1() {
    
    Fahrzeug dacia;
    
    dacia.leistung = 50;
    strcpy(dacia.farbe, "blau");
    
    printf("Leistung %d KW, Farbe %s\n", dacia.leistung, dacia.farbe);
    
    return 0;
}

int structs2() {
    typedef struct
    {
        float x;
        float y;
    } Punkt;
    typedef struct
    {
        float breite;
        float hoehe;
    } Groesse;
    typedef struct
    {
        Punkt ecke;
        Groesse ausdehnung;
        char farbe[20];
        int rahmen;
    } Rechteck;
    typedef struct
    {
        Punkt zentrum;
        int radius;
        char farbe[20];
    } Kreis;
    
    Punkt pa; // 1
    pa.x = 10;
    pa.y = 80;
    printf("Punkt bei: %.1f, %.1f\n", pa.x, pa.y);
    Groesse ga; // 2
    ga.breite = 400;
    ga.hoehe = 150;
    printf("Größe: %.1f, %.1f\n", ga.breite, ga.hoehe);

    Rechteck ra;
    ra.ecke.x = 50;
    ra.ecke.y = 20;
    ra.ausdehnung.breite = 200;
    ra.ausdehnung.hoehe = 120;
    strcpy(ra.farbe, "blau");
    ra.rahmen = 1;
    // 3
    printf("Rechteck: Ecke bei: %.1f, %.1f,"
           " Größe: %.1f, %.1f,"
           " Farbe: %s, Rahmen: %d\n",
           ra.ecke.x, ra.ecke.y, ra.ausdehnung.breite, ra.ausdehnung.hoehe, ra.farbe, ra.rahmen);
    
    Kreis ka;
    ka.zentrum.x = 80;
    ka.zentrum.y = 130;
    ka.radius = 20;
    strcpy(ka.farbe, "rot");
    // 4
    printf("Kreis: Zentrum bei: %.1f, %.1f,"
           " Radius: %d, Farbe: %s\n",
           ka.zentrum.x, ka.zentrum.y,
           ka.radius, ka.farbe);
    
    return 0;
}

typedef enum {rot, gelb, gruen, blau} Farbe;

int enums() {
    Farbe fahrzeugLackierung;
    
    fahrzeugLackierung = gelb;
    
    if (fahrzeugLackierung == gelb) {
        printf ("Das Fahrzeug ist gelb lackiert\n");
    }
    
    fahrzeugLackierung = 3;
    if (fahrzeugLackierung == blau) {
        printf("Das Fahrzeug ist blau lackiert\n");
    }
    
    return 0;
}

int bitmasks()
{
    int geprueft = 13; // ... 0000 1101
    int bit3 = 8; // ... 0000 1000  Bit 3
    int bit1 = 2; // ... 0000 0010  Bit 1
    int erg3 = geprueft     & bit3;  // ... 0000 1000
    int erg1 = geprueft     & bit1;  // ... 0000 0000
    
    printf("%d, %d\n", erg1, erg3);
    return 0;
}

int maths()
{
    double bm;
    double pi = 4 * atan(1.0);
    printf("  x  sin(x)  cos(x)  tan(x) sqrt(x)"
           "         e^x      x^3\n");
    for(double x=5.0; x<86.0; x=x+10.0)
    {
        bm = x / 180.0 * pi;
        printf("%3.0lf %7.3lf %7.3lf %7.3lf"
               " %7.3lf %11.3e %8.0lf\n",
               x, sin(bm), cos(bm), tan(bm),
               sqrt(x), exp(x), pow(x,3));
    }
    long a = pow(2, 63);
    printf("%d\n", a);
    return 0;
}

int randomNumbers() {
        srand((unsigned int)time(NULL));
        for(int i=1; i<=10; i++)
            printf("%d ", rand() % 6 + 1);
        printf("\n");
        // 1 // 2
        for(int i=1; i<=10; i++)
            printf("%d ", arc4random() % 6 + 1); // 3
        return 0;
}