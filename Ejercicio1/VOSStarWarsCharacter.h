//
//  VOSStarWarsCharacter.h
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VOSStarWarsCharacter : NSObject

#pragma mark - Propertys
@property NSString * name;

// Métodos de clase
#pragma mark - Class Methods
+(id) starWarsCharacterWithName: (NSString *) aName;

// Métodos de instancia
// designated
#pragma mark - Init
-(id) initWithName: (NSString *) aName;


-(BOOL) isEqualToCharacter: (VOSStarWarsCharacter *) other;


@end
