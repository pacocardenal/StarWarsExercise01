//
//  PCALightSaber.m
//  ResolucionEjercicio01
//
//  Created by Paco on 12/1/15.
//  Copyright (c) 2015 pacocardenal. All rights reserved.
//

#import "PCALightSaber.h"

@implementation PCALightSaber

+ (instancetype) lightSaberWithRed: (float)red
                             green: (float)green
                              blue: (float)blue {
    
    return [[self alloc] initWithRed:red green:green blue:blue];
    
}

+ (instancetype) blueLightSaber {
    return [[self alloc] initWithBlueLightSaber];
}

+ (instancetype) redLightSaber {
    return [[self alloc] initWithRedLightSaber];
}
+ (instancetype) greenLightSaber {
    return [[self alloc] initWithGreenLightSaber];
}
+ (instancetype) purpleLightSaber {
    return [[self alloc] initWithPurpleLightSaber];
}

- (id) initWithRed: (float)red
             green: (float)green
              blue: (float)blue {
    
    if (self = [super init]) {
        _color = [NSColor colorWithRed:red
                                 green:green
                                  blue:blue
                                 alpha:1.0];
    }
    
    return self;
    
}

- (id) initWithBlueLightSaber {
    
    return [self initWithRed:0 green:0 blue:1.0];
    
}

- (id) initWithRedLightSaber {
    
    return [self initWithRed:1.0 green:0 blue:0];
    
}

- (id) initWithGreenLightSaber {
    
    return [self initWithRed:0 green:1.0 blue:0];
    
}

- (id) initWithPurpleLightSaber {
    
    return [self initWithRed:1.0 green:0 blue:1.0];
    
}

#pragma mark - NSObject

- (NSString *) description {
    
    return [NSString stringWithFormat:@"<%@>: %@", self.class, self.color];
    
}

- (BOOL) isEqual:(id)object {
    
    // Proxy for Comparison
    if ([object isKindOfClass: [self class]]) {
        
        // Somos de la misma clase. Comparamos propiedades
        return [self.color isEqual:[object color]];
        
    } else {
        return NO;
    }
    
}

@end
