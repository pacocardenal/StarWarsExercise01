//
//  PCAJedi.m
//  ResolucionEjercicio01
//
//  Created by Paco on 12/1/15.
//  Copyright (c) 2015 pacocardenal. All rights reserved.
//

#import "PCAJedi.h"

@implementation PCAJedi

- (id) initWithName:(NSString *)name
       midchlorians: (NSUInteger) midichlorians
         lightSaber: (PCALightSaber *) lightSaber
          padawanOf: (PCAJedi *) master {
    
    if (self = [super initWithName:name]) {
        _midichlorians = midichlorians;
        _lightSaber = lightSaber;
        _padawanOf = master;
    }
    
    return self;
    
}

- (id) initWithName:(NSString *)name {
    
    return [self initWithName:name
                 midchlorians:100
                   lightSaber:[PCALightSaber blueLightSaber]
                    padawanOf:nil];
    
}

- (id) initWithJediMasterNamed: (NSString *)name {
    return [self initWithName:name
                 midchlorians:1000
                   lightSaber:[PCALightSaber greenLightSaber]
                    padawanOf:nil];
}

- (NSString *) unsheathe {
    return @"█||||||(•)█Ξ█████████████████████";
}

#pragma mark - NSObject
-(NSString *) description {
    
    return [NSString stringWithFormat:@"<%@: %@ (%lu) - %@", [self class], [self name], (unsigned long)[self midichlorians], [self padawanOf]];
    
}

- (BOOL) isEqual:(id)object {
    
    if (self == object) {
        return YES;
    }
    
    if ([object isKindOfClass:[self class]]) {
        // Comparo propiedades con Proxy For Comparison
        return [[self proxyForComparison] isEqual: [object proxyForComparison]];
    } else {
        return NO;
    }
    
}

// proxyForComparison no es necesario ponerlo en Header. Es un detalle de implementación
// Posiblemente fuera necesario el cast (unsigned long)

- (NSString *) proxyForComparison {
    
    return [NSString stringWithFormat:@"%@ %@ %lu %@",
            [self name], [self padawanOf], [self midichlorians], [self lightSaber]];
    
}

@end
