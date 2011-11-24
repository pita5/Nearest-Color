//
//  ColorAlgorithmAppDelegate.m
//  ColorAlgorithm
//
//  Created by Quenton Jones on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ColorAlgorithmAppDelegate.h"
#import "UIColor+Utilities.h"

@implementation ColorAlgorithmAppDelegate


@synthesize window=_window;
@synthesize color;
@synthesize cvColor;
@synthesize cvPalette;

- (void)calculateNewColor {
    float r = (float)(arc4random() % 256);
    float g = (float)(arc4random() % 256);
    float b = (float)(arc4random() % 256);
    
    UIColor *c = [UIColor colorWithRed:(r / 255.0f) green:(g / 255.0f) blue:(b / 255.0f) alpha:1];
    self.color.backgroundColor = c;
    self.cvColor.backgroundColor = [c closestColorInCalveticaPalette];
}

- (void)nextButtonTapped {
    [self calculateNewColor];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *palette = [UIColor calveticaPalette];
    float width = self.cvPalette.frame.size.width / 1;
    float height = self.cvPalette.frame.size.height / [palette count];
    
    float x = 0.0f;
    float y = 0.0f;
    for (UIColor *c in palette) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, y, width, height)];
        view.backgroundColor = c;
        [self.cvPalette addSubview:view];
        [view release];
        
        if (x + width < self.cvPalette.frame.size.width) {
            x += width;
        } else {
            x = 0.0f;
            y += height;
        }
    }
    
    [self calculateNewColor];

    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
