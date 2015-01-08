//
//  VOSJedi.m
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSJedi.h"
#import "VOSLightSaber.h"

@implementation VOSJedi

+(id) unsheathe{
    return [NSString stringWithFormat:@"█||||||(•)█Ξ█████████████████████"];
}

-(id) initWithName: (NSString *) aName
     midichlorians: (int) anMidichlorians
        lightSaber: (VOSLightSaber *) alightsaber
         padawanOf: (VOSJedi *) aJedi{

    if ( self = [super init]) {
        self.name = aName;
        _midichlorians = anMidichlorians;
        _lightSaber = alightsaber;
        _padawanOf = aJedi;
    }
    
    return self;

}

-(id) initWithName: (NSString *) aName{
    return [self initWithName:aName
                midichlorians:100
                   lightSaber:[VOSLightSaber lightSaberWithBlueLight]
                    padawanOf:nil];
}

-(id) initJediMasterWithName: (NSString *) aName{
    return [self initWithName:aName
                midichlorians:1000
                   lightSaber:[VOSLightSaber lightSaberWithGreenLight]
                    padawanOf:nil];
    
}

-(NSString *) description{
    
    return [NSString stringWithFormat: @"< %@ %@ es un Jedi con %d midiclorianos, padawan de %@ y suele utilizar un  %@>", [self class], [self name], [self midichlorians], [self padawanOf], self.lightSaber ];
}

@end
