//
//  VOSStarWarsCharacter.m
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSStarWarsCharacter.h"

@implementation VOSStarWarsCharacter

#pragma mark - Class methods
+(instancetype) starWarsCharacterWithName: (NSString *) aName{

    return [[self alloc] initWithName:aName];

}

#pragma mark - Init
-(id) initWithName: (NSString *) aName{
    if ( self = [super init]) {
        _name = aName;
    }
    
    return self;
    
}

#pragma mark - Override
-(NSString *) description{
    return [NSString stringWithFormat: @"<%@ Mi Personaje es: %@>", [self class], [self name] ];
}

-(BOOL) isEqual:(id)object{
    if ( self == object ){
        return YES;
    }else{
        if( [object isKindOfClass:[self class]]){
            return [self.name isEqual:[object name]];
        }else{
            return NO;
        }
    }
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
