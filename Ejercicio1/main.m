//
//  main.m
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VOSStarWarsCharacter.h"
#import "VOSLightSaber.h"
#import "VOSJedi.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        VOSStarWarsCharacter * Jabba = [VOSStarWarsCharacter starWarsCharacterWithName:@"Jabba the Hutt"];
        VOSStarWarsCharacter * Han = [VOSStarWarsCharacter starWarsCharacterWithName:@"Hans Solo"];
        
        NSLog( @"%@", Jabba );
        NSLog( @"%@", Han );
        
        if ( [Jabba isEqualToCharacter:Han] ){
            NSLog( @"Son el mismo personaje" );
        }
        else{
            NSLog( @"NO Son el mismo personaje" );
        }

        VOSLightSaber * LukeSaber = [VOSLightSaber lightSaberWithRed:0 green:0.93 blue:0.93 alpha:0.630];
        VOSLightSaber * YodaSaber = [VOSLightSaber lightSaberWithGreenLight];
        VOSLightSaber * MySaber = [VOSLightSaber lightSaberWithRed:0
                                                             green:0.93
                                                              blue:0.93
                                                             alpha:0.630];
        
        NSLog( @"%@", LukeSaber );
        NSLog( @"%@", YodaSaber );
        
        if ( [LukeSaber isEqual:YodaSaber] ){
            NSLog( @"Es el mismo sable de luz" );
        }
        else{
            NSLog( @"Son distintos sables de luz" );
        }

        if ( [LukeSaber isEqual:MySaber] ){
            NSLog( @"Es el mismo sable de luz" );
        }
        else{
            NSLog( @"Son distintos sables de luz" );
        }
        
        VOSJedi * QuiGon = [[VOSJedi alloc] initWithName:@"Qui-Gon Jinn"];

        NSLog(@"%@", QuiGon);
    }
    return 0;
}
