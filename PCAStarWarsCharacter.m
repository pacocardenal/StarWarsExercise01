//
//  PCAStarWarsCharacter.m
//  ResolucionEjercicio01
//
//  Created by Paco on 12/1/15.
//  Copyright (c) 2015 pacocardenal. All rights reserved.
//

#import "PCAStarWarsCharacter.h"

@implementation PCAStarWarsCharacter

# pragma mark - Class Methods

+ (instancetype) starWarsCharacterWithName: (NSString *) name {
    
    return [[self alloc] initWithName:name];
    
}

# pragma mark - Instance Methods

- (id) initWithName: (NSString *) name {
    
    if (self = [super init]) {
        
        _name = name;
        
    }
    
    return self;
}

# pragma mark - NSObject

- (NSString *) description {
    
    return [NSString stringWithFormat:@"<%@ : %@>", self.class, self.name];
    
}

- (BOOL) isEqual:(id)object {
    
    // Compruebo que sea el mismo objeto (ahorro comparación)
    if (self == object) {
        return YES;
    }
    
    if ([object isKindOfClass:[self class]]) {
        return [self.name isEqual:[object name]];
    } else {
        return NO;
    }
    
}

@end
