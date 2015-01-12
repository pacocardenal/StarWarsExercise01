//
//  PCAJedi.h
//  ResolucionEjercicio01
//
//  Created by Paco on 12/1/15.
//  Copyright (c) 2015 pacocardenal. All rights reserved.
//

#import "PCAStarWarsCharacter.h"
#import "PCALightSaber.h"

@interface PCAJedi : PCAStarWarsCharacter

// Typedef : alias de un tipo preexistente
// Preferible poner typedef en lugar de int para evitar warnings en 32 y 64 bits
// NSInteger -> Entero con signo
// NSUInteger -> Entero sin signo

@property NSUInteger midichlorians;
@property PCALightSaber *lightSaber;
@property PCAJedi *padawanOf;

// Designated
- (id) initWithName:(NSString *)name
       midchlorians: (NSUInteger) midichlorians
         lightSaber: (PCALightSaber *) lightSaber
          padawanOf: (PCAJedi *) master;

- (id) initWithName:(NSString *)name;

- (id) initWithJediMasterNamed: (NSString *)name;

- (NSString *) unsheathe;




@end
