//
//  VOSLightSaber.m
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSLightSaber.h"


@implementation VOSLightSaber

#pragma mark - Class methods
+(id) lightSaberWithRed:(float) red
                  green:(float) green
                   blue:(float) blue
                  alpha:(float) alpha{
    
    return [[self alloc] initWithRed:red
                               green:green
                                blue:blue
                               alpha:alpha ];
    
}

+(id) lightSaberWithBlueLight{
    
    return [[self alloc] initWithBlueLight ];
    
}

+(id) lightSaberWithRedLight{
    
    return [[self alloc] initWithBlueLight ];
    
}

+(id) lightSaberWithGreenLight{
    
    return [[self alloc] initWithGreenLight ];
    
}

+(id) lightSaberWithPurpleLight{
    
    return [[self alloc] initWithPurpleLight ];
    
}

#pragma mark - Init
-(id) initWithRed:(float) red
            green:(float) green
             blue:(float) blue
            alpha:(float) alpha{
    
    if ( self = [super init]) {
       _colour = [NSColor  colorWithRed:red
                                  green:green
                                   blue:blue
                                  alpha:alpha];
    }
    
    return self;
}


-(id) initWithBlueLight{
    return [self initWithRed:0
                       green:0
                        blue:1
                       alpha:1.0];
    
//    if ( self = [super init]) {
//        _colour = [NSColor blueColor];
//    }
//    
//    return self;
    
}

-(id) initWithRedLight{
    if ( self = [super init]) {
        _colour = [NSColor redColor];
    }
    
    return self;
    
}

-(id) initWithGreenLight{
    if ( self = [super init]) {
        _colour = [NSColor greenColor];
    }
    
    return self;
    
}

-(id) initWithPurpleLight{
    if ( self = [super init]) {
        _colour = [NSColor purpleColor];
    }
    
    return self;
    
}

#pragma mark - Override
-(NSString *) description{
    
    return [NSString stringWithFormat: @"%@: Sable de Luz con Componente rojo: %f, verde: %f, azul: %f alpha: %f", self.class, self.colour.redComponent, self.colour.greenComponent, self.colour.blueComponent, self.colour.alphaComponent ];
}

-(BOOL) isEqual:(id) object{
    // si es la misma instancia por narices son iguales
    if ( self == object){
        return YES;
    }
    else{
        if ([ object isKindOfClass:[self class]]){
//            return [self isEqualToColor:object];
            return [self.colour isEqual:[object colour]];
        }
        else{
            return NO;
        }
    }
}

// Proxy for Comparision
-(BOOL) isEqualToColor: (VOSLightSaber *) other{
    if ( self.colour.redComponent == other.colour.redComponent &&
         self.colour.greenComponent == other.colour.greenComponent &&
        self.colour.blueComponent == other.colour.blueComponent ){
        return YES;
    } else{
        return NO;
    }
    
}
@end
