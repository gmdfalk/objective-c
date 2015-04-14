//
//  Temperature.h
//  GRechnen
//
//  Created by Falk, Geronimo on 13/04/15.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TemperatureType) {
    TTFahrenheit,
    TTCelsius
};

@interface Temperature : NSObject

@property (nonatomic) double value;
@property (nonatomic) TemperatureType type;



@end
