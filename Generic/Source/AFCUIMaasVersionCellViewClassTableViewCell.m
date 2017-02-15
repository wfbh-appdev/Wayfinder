//
//  AFCUIMaasVersionCellViewClassTableViewCell.m
//  AFMDemo
//
//  Created by Hugo Oscar on 11/13/15.
//  Copyright © 2015 Phunware. All rights reserved.
//

#import "AFCUIMaasVersionCellViewClassTableViewCell.h"

#import <PWMapKit/PWMapKit.h>
#import <PWLocation/PWLocation.h>
#import <PWCore/PWCore.h>
#import <PWAnalytics/PWAnalytics.h>
#import <PWAdvertising/PWAds.h>
#import <PWCME/PWCME.h>
#import <PWMessaging/PWMessaging.h>

NSString *kPwMapKitVersion = @"3.1.0";
NSString *kPwMessagingVersion = @"3.0.2";


@implementation AFCUIMaasVersionCellViewClassTableViewCell


- (void)drawRect:(CGRect)rect
{
    NSString *versionString = @"-";


    if ([super.textLabel.text isEqualToString:@"PwMapKit"])
        versionString = kPwMapKitVersion;
    if ([super.textLabel.text isEqualToString:@"PwLocation"])
        versionString = PWLocation_VERSION;
    if ([super.textLabel.text isEqualToString:@"PwCore"])
        versionString = PWCore_Version;
    if ([super.textLabel.text isEqualToString:@"PwAnalytics"])
        versionString = PWAnalytics_VERSION;
    if ([super.textLabel.text isEqualToString:@"PwAds"])
        versionString = PWADS_VERSION;
    if ([super.textLabel.text isEqualToString:@"PwCME"])
        versionString = MaaSCMS_VERSION;
    if ([super.textLabel.text isEqualToString:@"PwMessaging"]) {
        versionString = kPwMessagingVersion;
    }


    UILabel *subLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 40)];
    subLabel.textColor = [UIColor lightGrayColor];
    subLabel.font = super.textLabel.font;
    subLabel.textAlignment = NSTextAlignmentLeft;
    subLabel.text = versionString;
    [subLabel sizeToFit];
    super.accessoryView = subLabel;
}

- (void)layoutSubviews
{
    //Code to draw different content goes here.


    [super layoutSubviews];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
