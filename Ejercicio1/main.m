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
        VOSStarWarsCharacter * Han = [VOSStarWarsCharacter starWarsCharacterWithName:@"Han Solo"];
        
        NSLog( @"%@", Jabba );
        NSLog( @"%@", Han );
        NSLog( @"[hanSolo isEqual: Jabba] = %@", ([Han isEqual: Jabba] ? @"YES" : @"NO" ));
        
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
        
        VOSJedi * quiGon = [[VOSJedi alloc] initWithName:@"Qui-Gon Jinn"];

        NSLog(@"%@", quiGon);
        
        VOSJedi * obiWan = [[VOSJedi alloc] initWithName:@"Obi-Wan Kenobi"
                                           midichlorians:50000
                                              lightSaber:[VOSLightSaber lightSaberWithPurpleLight]
                                               padawanOf:quiGon];
        VOSJedi * anakin = [[VOSJedi alloc] initWithName:@"Anakin Skywalker"
                                           midichlorians:10000
                                              lightSaber:[VOSLightSaber lightSaberWithRedLight]
                                               padawanOf:obiWan];
        VOSJedi * yoda = [[VOSJedi alloc] initJediMasterWithName:@"Yoda"];
        VOSJedi * luke = [[VOSJedi alloc] initWithName:@"Luke Skywalker"
                                           midichlorians:2000
                                              lightSaber:[VOSLightSaber lightSaberWithBlueLight]
                                               padawanOf:yoda];

        
        NSLog(@"%@", anakin);
        NSLog( @"Luke %@ igual que obiwan", ([luke isEqual:obiWan] ? @"es" : @"no es"));
        
    }
    return 0;
}
