//
//  AFCUILocationProviderViewClassTableViewCell.m
//  AFMDemo
//
//  Created by Hugo Oscar on 11/13/15.
//  Copyright © 2015 Phunware. All rights reserved.
//

#import "AFCUILocationProviderViewClassTableViewCell.h"
#import <AppFrameworkMappingModule/AFMAppStateConstants.h>
#import <AppFrameworkCore/AppFrameworkCore.h>


@implementation AFCUILocationProviderViewClassTableViewCell


- (void)drawRect:(CGRect)rect
{
    [super setAccessoryType:UITableViewCellAccessoryNone];
    if ([self isTheSelectedRow:self.textLabel.text]) {
        [super setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    if (selected) {
        [self setAccessoryType:UITableViewCellAccessoryNone];
        NSString *PWSLocationManagerKey = @"";
        if ([[super textLabel].text isEqualToString:@"BLE"])
            PWSLocationManagerKey = @"PWMapViewLocationTypeBLE";

        if ([[super textLabel].text isEqualToString:@"MSE"])
            PWSLocationManagerKey = @"PWMapViewLocationTypeMSE";

        if ([[super textLabel].text isEqualToString:@"GPS / Apple Indoor (if available)"])
            PWSLocationManagerKey = @"PWMapViewLocationTypeGPS";

        if ([[super textLabel].text isEqualToString:@"Managed Provider"])
            PWSLocationManagerKey = @"PWMapViewLocationTypeManagedProvider";

        if (![PWSLocationManagerKey isEqualToString:@""])
            [[NSUserDefaults standardUserDefaults] setValue:PWSLocationManagerKey forKey:kAFCMAppStateCurrentLocationProviderKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self setAccessoryType:UITableViewCellAccessoryCheckmark];
    }


    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (BOOL)isTheSelectedRow:(NSString *)value
{
    BOOL finalValue = NO;
    if ([[[NSUserDefaults standardUserDefaults] valueForKey:kAFCMAppStateCurrentLocationProviderKey] isEqualToString:@"PWMapViewLocationTypeBLE"] && [value isEqualToString:@"BLE"]) {
        finalValue = YES;
    }

    if ([[[NSUserDefaults standardUserDefaults] valueForKey:kAFCMAppStateCurrentLocationProviderKey] isEqualToString:@"PWMapViewLocationTypeMSE"] && [value isEqualToString:@"MSE"]) {
        finalValue = YES;
    }

    if ([[[NSUserDefaults standardUserDefaults] valueForKey:kAFCMAppStateCurrentLocationProviderKey] isEqualToString:@"PWMapViewLocationTypeGPS"] && [value isEqualToString:@"GPS / Apple Indoor (if available)"]) {
        finalValue = YES;
    }

    if ([[[NSUserDefaults standardUserDefaults] valueForKey:kAFCMAppStateCurrentLocationProviderKey] isEqualToString:@"PWMapViewLocationTypeManagedProvider"] && [value isEqualToString:@"Managed Provider"]) {
        finalValue = YES;
    }


    return finalValue;
}

- (void)selectStoredRowValue
{
    if ([self isTheSelectedRow:self.textLabel.text])
        [self setAccessoryType:UITableViewCellAccessoryCheckmark];
}

@end
