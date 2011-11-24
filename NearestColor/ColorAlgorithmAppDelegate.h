//
//  ColorAlgorithmAppDelegate.h
//  ColorAlgorithm
//
//  Created by Quenton Jones on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorAlgorithmAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIView *color;
@property (nonatomic, retain) IBOutlet UIView *cvColor;
@property (nonatomic, retain) IBOutlet UIView *cvPalette;

- (void)calculateNewColor;

- (IBAction)nextButtonTapped;

@end
