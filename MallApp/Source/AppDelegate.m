//
//  AppDelegate.m
//  MallApp
//
//  Created by Héctor García Peña on 10/9/15.
//  Copyright © 2015 Phunware. All rights reserved.
//

#import "AppDelegate.h"
#import <AppFrameworkCore/AFCCoreEngine.h>
#import <AppFrameworkCore/AFCAbstractModule.h>
#import <AppFrameworkCore/AFCDictionaryBasedModule.h>
#import <AppFrameworkCore/AFCAppDefaults.h>
#import <AppFrameworkCore/UIApplication+AFCAppState.h>

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSDictionary *dictionary=[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"ModuleDefinition" withExtension:@"plist"]];
    
    AFCAbstractModule *module=[[AFCDictionaryBasedModule alloc] initWithDictionary:dictionary];
    [[AFCCoreEngine sharedCore] addModule:module];
    
    AFCCMEConfiguration *configuration=[AFCAppDefaults standardDefaults].cme;
    if(configuration.venues)
    {
        CMEVenue *venue=[configuration.venues objectAtIndex:0];
        if(venue.campuses)
        {
            CMECampus *campus=[venue.campuses objectAtIndex:0];
            [[UIApplication sharedApplication] setValue:[NSNumber numberWithInteger:campus.currentBuilding.buildingId] forKey:@"buildingId"];
            [[UIApplication sharedApplication] setValue:campus forKey:kAFCApplicationStateCurrentCampus];
        }
    }
    
    
    return [super application:application willFinishLaunchingWithOptions:launchOptions];
}

@end