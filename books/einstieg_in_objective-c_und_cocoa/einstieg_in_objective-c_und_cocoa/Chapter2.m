//
//  Chapter2.m
//  einstieg_in_objective-c_und_cocoa
//

#import "Chapter2.h"

@implementation Chapter2

+(void) rechnenMitZahlen {
    int a = 7, b = 2, c;
    c = (a + 8 - b * 3) / 2;
    printf("Ergebnis: %d\n", c);
    float x = 7.0, y = 2.0, z;
    z = (x + 8 - y * 3) / 2;
    printf("Ergebnis: %f\n", z);
    printf("Nach Inkrementierung: %d\n", ++a);
    printf("Nach Dekrementierung: %d\n", --a);
}

+(void)verzweigungen {
    int a = 5, b = 7;
    if(a>b) // 1
    {
        printf("1: Erste Zahl ist größer\n");
    }
    else {
        printf("1: Erste Zahl ist nicht größer\n");
    }
    if(a>b) {
        printf("2: Erste Zahl ist größer\n");
    } else if(a==b) {
        printf("2: Beide Zahlen sind gleich\n");
    }   else {
        printf("2: Zweite Zahl ist größer\n");
    }
}


void linie(void);
void gib_aus(int, float);
float addiere(float, float);

+(void) funktionen {
    int m = 5;
    float x = 2.5, y = 0.4, ergebnis;
    linie();
    gib_aus(4, x);
    gib_aus(m, 3*x);
    ergebnis = addiere(x, y);
    printf("Summe: %.2f\n", ergebnis);
    printf("Summe: %.2f\n", addiere(7.0, 2*y));
    linie();
    
    
}

void linie(void)
{
    printf("-------------------------\n");
    return;
}

void gib_aus(int p, float z)
{
    printf("Zahl 1: %d, Zahl 2: %.2f\n", p, z);
    return;
}

float addiere(float a, float b)
{
    float c;
    c = a + b;
    return c;
    
}

+(void) felder {
    int i, x[5], summe;
    x[0] = 3;
    x[1] = 5;
    x[2] = -2;
    x[3] = 7;
    x[4] = 12;
    for(i=0; i<5; i++)
        printf("%d ", x[i]);
    printf("\n");
    
    summe = 0;
    for(i=0; i<5; i++)
        printf("Summe: %d\n", summe);
}

+(void) zeichenketten {
    char tx[50];
    strcpy(tx, "Das ist ein Text");
    printf("%s\n", tx);
    printf("Zeichen 0: %c\n", tx[0]);
    printf("Zeichen 14: %c\n", tx[14]);
}

@end
