//
//  PCAStarWarsCharacter.h
//  ResolucionEjercicio01
//
//  Created by Paco on 12/1/15.
//  Copyright (c) 2015 pacocardenal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PCAStarWarsCharacter : NSObject

@property NSString *name;

+ (instancetype) starWarsCharacterWithName: (NSString *) name;

- (id) initWithName: (NSString *) name;

@end
