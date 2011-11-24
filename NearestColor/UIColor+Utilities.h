//
//  UIColor+Utilities.h
//  ColorAlgorithm
//
//  Created by Quenton Jones on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "colors.h"

#define K_L 1
#define K_1 0.045f
#define K_2 0.015f
#define X_REF 95.047f
#define Y_REF 100.0f
#define Z_REF 108.883f

@interface UIColor (Utilities)

// The Calvetica specific colors.
+ (NSArray *)calveticaPalette;

// Determines which color in the Calvetica palette most closely matches the recipient color.
- (UIColor *)closestColorInCalveticaPalette;

// Determines which color in the array of colors most closely matches recipient color.
- (UIColor *)closestColorInPalette:(NSArray *)palette;

// Converts the recipient UIColor to the L*a*b* color space.
- (float *)colorToLab;

// Converts a color from the RGB color space to the L*a*b* color space.
+ (float *)rgbToLab:(float *)rgb;

// Converts a color from the RGB color space to the XYZ color space.
+ (float *)rgbToXYZ:(float *)rgb;

// Coverts a color from the XYZ color space to the L*a*b* color space.
+ (float *)xyzToLab:(float *)xyz;

@end
