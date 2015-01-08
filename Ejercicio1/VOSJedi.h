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

@property int midichlorians;
@property VOSLightSaber * lightSaber;
@property VOSJedi * padawanOf;


-(id) initWithName: (NSString *) aName
     midichlorians: (int) anMidichlorians
        lightSaber: (VOSLightSaber *) alightsaber
         padawanOf: (VOSJedi *) aJedi;

-(id) initWithName: (NSString *) aName;
-(id) initJediMasterWithName: (NSString *) aName;

@end
