//
//  Chapter3.m
//  einstieg_in_objective-c_und_cocoa
//
//  Created by Falk, Geronimo on 01/04/2015.
//
//

#import "Chapter3.h"

@implementation Chapter3

+(void) zeiger {
    int a = 5;
    int *pa = &a;
    *pa = 10;
    int *pb = &a;
    *pb = *pb + 3;
    printf("%d\n", a);
}
+(void) strukturen {
    typedef struct
    {
        int leistung;
        char farbe[20];
    } Fahrzeug;
    Fahrzeug dacia;
    dacia.leistung = 50;
    strcpy(dacia.farbe, "blau");
    printf("Leistung %d KW, Farbe %s\n", dacia.leistung, dacia.farbe);
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
    printf("Rechteck: Ecke bei: %.1f, %.1f,"
           " Größe: %.1f, %.1f,"
           " Farbe: %s, Rahmen: %d\n",
           ra.ecke.x, ra.ecke.y, ra.ausdehnung.breite, ra.ausdehnung.hoehe, ra.farbe, ra.rahmen);
    Kreis ka;
    ka.zentrum.x = 80;
    ka.zentrum.y = 130;
    ka.radius = 20;
    strcpy(ka.farbe, "rot");
    printf("Kreis: Zentrum bei: %.1f, %.1f,"
           " Radius: %d, Farbe: %s\n",
           ka.zentrum.x, ka.zentrum.y,
           ka.radius, ka.farbe);
}
+(void) enumerationen {
    typedef enum {rot, gelb, gruen, blau} Farbe;
    Farbe fahrzeugLackierung;
    fahrzeugLackierung = gelb;
    if(fahrzeugLackierung == gelb)
        printf("Das Fahrzeug ist gelb lackiert\n");
    fahrzeugLackierung = 3;
    if(fahrzeugLackierung == blau)
        
        printf("Das Fahrzeug ist blau lackiert\n");
}
+(void) bitoperatoren {
    int geprueft = 13;     // ... 0000 1101
    int bit3 = 8;     // ... 0000 1000  Bit 3
    int bit1 = 2;     // ... 0000 0010  Bit 1
    int erg3 = geprueft & bit3;  // ... 0000 1000
    
    int erg1 = geprueft  & bit1;  // ... 0000 0000
    if(erg3 != 0)
        printf("In %d ist Bit 3 gesetzt\n", geprueft);
    if(erg1 != 0)
        printf("In %d ist Bit 1 gesetzt\n", geprueft);
    
}
+(void) arithmetik {
    
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
}
+(void) zufallszahlen {
    srand((unsigned int)time(NULL));
    for(int i=1; i<=10; i++)
        printf("%d ", rand() % 6 + 1);
    printf("\n");
    for(int i=1; i<=10; i++)
        printf("%d ", arc4random() % 6 + 1);
}
double fkt1(double x)
{
    return 3 * x; }
double fkt2(double x)
{
    return 0.1 * x + 0.5;
}
void tabelle(double ug, double og,
             
             int anzahl, double f(double x))
{
    double x, differenz, schritt;
    differenz = og - ug;
    schritt = differenz / (anzahl-1);
    for(x = ug; x < og + schritt / 2.0; x = x + schritt)
        printf("%10.3lf %10.3lf\n", x, f(x));
    printf("\n");
}
+(void) funktionAlsParameter {
    tabelle(3.0, 5.2, 5, fkt1);
    tabelle(0.0, 1.0, 3, fkt2);
}
void scanner_example() {
    int a, b, c;
    printf("Bitte die erste ganze Zahl eingeben: ");
    scanf("%d", &a);
    printf("Bitte die zweite ganze Zahl eingeben: ");
    scanf("%d", &b);
    c = a + b;
    printf("%d + %d = %d\n", a, b, c);
}
+(void) uebung_1 {
    int rand1, rand2, input, result, count = 5, solvedCount = 0;
    int rand1Results[count], rand2Results[count], inputResults[count];
    for (int i=0; i < count; i++) {
        rand1 = arc4random() % 20 + 1;
        rand2 = arc4random() % 20 + 1;
        result = rand1 + rand2;
        printf("Bitte ausrechnen: %d + %d = ", rand1, rand2);
        scanf("%d", &input);
        
        rand1Results[i] = rand1;
        rand2Results[i] = rand2;
        inputResults[i] = input;
    }
    char resultString[8];
    strcpy(resultString, "falsch");
    for (int i=0; i < count; i++) {
        result = rand1Results[i] + rand2Results[i];
        if (inputResults[i] == result) {
            strcpy(resultString, "richtig");
            solvedCount++;
        }
        printf("%d + %d = %d, Ihre Eingabe ist %s.\n", rand1Results[i], rand2Results[i], result, resultString);
    }
    printf("Sie haben %d von %d Aufgaben richtig geloest.\n", solvedCount, count);
}
//+(void) uebung_2;
//+(void) uebung_3;
//+(void) uebung_4;

@end
