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

#pragma mark - Class Methods
+(id) unsheathe{
    return [NSString stringWithFormat:@"█||||||(•)█Ξ█████████████████████"];
}

#pragma mark - Init
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

#pragma mark - Override
-(NSString *) description{
    
    return [NSString stringWithFormat: @"< %@ %@ es un Jedi con %d midiclorianos, padawan de %@ y suele utilizar un  %@>", [self class], [self name], [self midichlorians], [self padawanOf], self.lightSaber ];
}

-(BOOL) isEqual:(id) object{
    // si es la misma instancia por narices son iguales
    if ( self == object){
        return YES;
    }
    else{
        if ([ object isKindOfClass:[self class]]){
            return [self isEqualToJedi:object];
        }
        else{
            return NO;
        }
    }
}

-(BOOL) isEqualToJedi: (VOSJedi *) other{
//    if ( [self.name isEqualToString:other.name] &&
//        self.midichlorians == other.midichlorians &&
//        [self.lightSaber isEqualTo:other.lightSaber] &&
//        [self.padawanOf isEqualToMaster:other.padawanOf] ){
//        return YES;
//    }
//    else{
//        return NO;
//    }
    
    return ( ( [self.name isEqualToString:other.name] &&
                self.midichlorians == other.midichlorians &&
               [self.lightSaber isEqualTo:other.lightSaber] &&
               [self.padawanOf isEqualToMaster:other.padawanOf] ) ? : 0 );
    
}

-(BOOL) isEqualToMaster:(id) object{
    if ( self == object){
        return YES;
    }
    else{
        if ([ object isKindOfClass:[self class]]){
            return [self.padawanOf isEqualToJedi:object];
        }
        else{
            return NO;
        }
    }
}

@end
