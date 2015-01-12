//
//  PCALightSaber.h
//  ResolucionEjercicio01
//
//  Created by Paco on 12/1/15.
//  Copyright (c) 2015 pacocardenal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface PCALightSaber : NSObject

@property NSColor * color;

#pragma mark - Class Methods

+ (instancetype) lightSaberWithRed: (float)red
                             green: (float)green
                              blue: (float)blue;

// NO COMIENZAN CON LIGHTSABERWITH PARA FACILITAR LA VIDA (by APPLE)
+ (instancetype) blueLightSaber;
+ (instancetype) redLightSaber;
+ (instancetype) greenLightSaber;
+ (instancetype) purpleLightSaber;

// Designated
- (id) initWithRed: (float)red
             green: (float)green
              blue: (float)blue;

- (id) initWithBlueLightSaber;
- (id) initWithRedLightSaber;
- (id) initWithGreenLightSaber;
- (id) initWithPurpleLightSaber;

@end
