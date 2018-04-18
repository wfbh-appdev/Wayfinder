//
//  AFMUIMapViewController+WF.m
//  WakeForest
//
//  Created by Julio Estrada on 4/18/18.
//  Copyright © 2018 Phunware. All rights reserved.
//

#import "AFMUIMapViewController+WF.h"
#import <JRSwizzle/JRSwizzle.h>

@implementation AFMUIMapViewController (WF)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSError *error;
        BOOL result = [[self class] jr_swizzleMethod:@selector(viewDidLoad) withMethod:@selector(wf_viewDidLoad) error:&error];
        if (!result || error) {
            NSLog(@"Can't swizzle methods - %@", [error description]);
        }
        NSLog(@"Swizzled");
    });
}

- (void)wf_viewDidLoad
{
    [self wf_viewDidLoad];
    // Sets an empty view instead of the Floor Selector
    self.navigationItem.titleView = [[UIView alloc] init];
}


@end
