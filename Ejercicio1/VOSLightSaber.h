//
//  VOSLightSaber.h
//  Ejercicio1
//
//  Created by Vicente Oliva de la Serna on 8/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface VOSLightSaber : NSObject

@property (strong, nonatomic) NSColor * colour;

// Métodos de clase
#pragma mark - Class Methods
+(id) lightSaberWithRed:(CGFloat) red
                  green:(CGFloat) green
                   blue:(CGFloat) blue
                  alpha:(CGFloat) alpha;
+(id) lightSaberWithBlueLight;
+(id) lightSaberWithRedLight;
+(id) lightSaberWithGreenLight;
+(id) lightSaberWithPurpleLight;

-(id) initWithRed:(CGFloat) red
            green:(CGFloat) green
             blue:(CGFloat) blue
            alpha:(CGFloat) alpha;

// 4 inicializadores de conveniencia para crear un sable blue, red, green y purple.

-(id) initWithBlueLight;
-(id) initWithRedLight;
-(id) initWithGreenLight;
-(id) initWithPurpleLight;

@end
