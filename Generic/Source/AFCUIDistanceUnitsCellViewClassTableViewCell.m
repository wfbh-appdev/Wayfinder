//
//  AFCUIDistanceUnitsCellViewClassTableViewCell.m
//  AFMDemo
//
//  Created by Hugo Oscar on 11/13/15.
//  Copyright © 2015 Phunware. All rights reserved.
//

#import "AFCUIDistanceUnitsCellViewClassTableViewCell.h"
#import <AppFrameworkMappingModule/AFCMAppStateConstants.h>
#import <AppFrameworkCore/AppFrameworkCore.h>


@implementation AFCUIDistanceUnitsCellViewClassTableViewCell


- (void)drawRect:(CGRect)rect
{
    [super setAccessoryType:UITableViewCellAccessoryNone];
    if ([self isTheSelectedRow:super.textLabel.text]) {
        [super setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    if (selected) {
        NSString *PWSLocationManagerKey = @"";
        if ([[super textLabel].text isEqualToString:@"Miles"])
            PWSLocationManagerKey = @"PWMapDistanceMiles";

        if ([[super textLabel].text isEqualToString:@"Kilometers"])
            PWSLocationManagerKey = @"PWMapDistanceKilometers";

        if (![PWSLocationManagerKey isEqualToString:@""])
            [[UIApplication sharedApplication] setValue:PWSLocationManagerKey forKey:kAFCMAppStateCurrentDistanceUnitsKey];
        [self setAccessoryType:UITableViewCellAccessoryCheckmark];
    }


    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (BOOL)isTheSelectedRow:(NSString *)value
{
    BOOL finalValue = NO;
    if ([[[UIApplication sharedApplication] valueForKey:kAFCMAppStateCurrentDistanceUnitsKey] isEqualToString:@"PWMapDistanceMiles"] && [value isEqualToString:@"Miles"]) {
        finalValue = YES;
    }

    if ([[[UIApplication sharedApplication] valueForKey:kAFCMAppStateCurrentDistanceUnitsKey] isEqualToString:@"PWMapDistanceKilometers"] && [value isEqualToString:@"Kilometers"]) {
        finalValue = YES;
    }


    return finalValue;
}

@end
