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
#import <PWEngagement/PWEngagement.h>


@implementation AFCUIMaasVersionCellViewClassTableViewCell


- (void)drawRect:(CGRect)rect
{
    NSString *versionString = @"-";


    if ([super.textLabel.text isEqualToString:@"PwMapKit"]) {
        versionString = PWMapKitVersion;
    }

    if ([super.textLabel.text isEqualToString:@"PwLocation"]) {
        versionString = PWLocationVersion;
    }

    if ([super.textLabel.text isEqualToString:@"PwCore"]) {
        versionString = PWCoreVersion;
    }

    if ([super.textLabel.text isEqualToString:@"PwEngagement"]) {
        versionString = PWEngagementVersion;
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
