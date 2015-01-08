//
//  VOSStarWarsCharacter.m
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSStarWarsCharacter.h"

@implementation VOSStarWarsCharacter

+(id) starWarsCharacterWithName: (NSString *) aName{

    return [[self alloc] initWithName:aName];

}

-(id) initWithName: (NSString *) aName{
    if ( self = [super init]) {
        _name = aName;
    }
    
    return self;
    
}

#pragma mark - Mis definiciones
-(NSString *) description{
    return [NSString stringWithFormat: @"<%@ Mi Personaje es: %@>", [self className], [self name] ];
}

-(BOOL) isEqualToCharacter: (VOSStarWarsCharacter *) other{
    if ( [[self name] isEqualToString:[other name]] ){
        return YES;
    }
    else{
        return NO;
    }
    
}
@end
