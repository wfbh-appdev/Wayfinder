//
//  GenericAppNavigationController.m
//  GenericApp
//
//  Created by Héctor García Peña on 10/16/15.
//  Copyright © 2015 Phunware. All rights reserved.
//

#import "GenericAppNavigationController.h"
#import "SplashViewController.h"
#import <AppFrameworkCore/AFCUIImageSplashViewController.h>


@implementation GenericAppNavigationController
{
    BOOL firstTime;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if(self=[super initWithCoder:aDecoder])
    {
        SplashViewController *controller=[[SplashViewController alloc] initWithNibName:@"SplashViewController" bundle:[NSBundle mainBundle]];
        [self setViewControllers:@[controller]];
        self.navigationBarHidden=YES;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationBar.barStyle=UIBarStyleBlack;
    if(!firstTime)
    {
        self.navigationBarHidden=YES;
        firstTime=YES;
    }
    self.navigationBar.translucent=NO;
}




@end
