//
//  VOSJedi.h
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSStarWarsCharacter.h"
#import "VOSLightSaber.h"

@interface VOSJedi : VOSStarWarsCharacter

@property NSUInteger midichlorians;
@property VOSLightSaber * lightSaber;
@property VOSJedi * padawanOf;


-(id) initWithName: (NSString *) name
     midichlorians: (NSUInteger) midichlorians
        lightSaber: (VOSLightSaber *) lightsaber
         padawanOf: (VOSJedi *) master;

-(id) initWithName: (NSString *) name;
-(id) initWithJediMasterNamed: (NSString *) name;

@end
