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

#pragma mark - Init
-(id) initWithName: (NSString *) name
     midichlorians: (NSUInteger) midichlorians
        lightSaber: (VOSLightSaber *) lightsaber
         padawanOf: (VOSJedi *) master{

    if ( self = [super initWithName:name]) {
        _midichlorians = midichlorians;
        _lightSaber = lightsaber;
        _padawanOf = master;
    }
    
    return self;

}

-(id) initWithName: (NSString *) name{
    return [self initWithName:name
                midichlorians:100
                   lightSaber:[VOSLightSaber lightSaberWithBlueLight]
                    padawanOf:nil];
}

-(id) initWithJediMasterNamed: (NSString *) name{
    return [self initWithName:name
                midichlorians:1000
                   lightSaber:[VOSLightSaber lightSaberWithGreenLight]
                    padawanOf:nil];
    
}

-(NSString *) unsheathe{
    return [NSString stringWithFormat:@"█||||||(•)█Ξ█████████████████████"];
}

#pragma mark - Override
-(NSString *) description{
    
    return [NSString stringWithFormat: @"< %@: %@ es un Jedi con (%lu) midiclorianos, padawan de %@ y suele utilizar un  %@>", [self class], [self name], (unsigned long)[self midichlorians], [self padawanOf], self.lightSaber ];
}

-(BOOL) isEqual:(id) object{
    // si es la misma instancia por narices son iguales
    if ( self == object){
        return YES;
    }
    else{
        if ([ object isKindOfClass:[self class]]){
            return [[self proxyForComparision] isEqual:[object proxyForComparision]];
        }
        else{
            return NO;
        }
    }
}

-(NSString *) proxyForComparision{
    return [NSString stringWithFormat:@"%@ %@ %lu %@", [self name], [self padawanOf], [self midichlorians], [self lightSaber]];
}

@end
