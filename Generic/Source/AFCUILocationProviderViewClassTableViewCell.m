//
//  AFCUILocationProviderViewClassTableViewCell.m
//  AFMDemo
//
//  Created by Hugo Oscar on 11/13/15.
//  Copyright © 2015 Phunware. All rights reserved.
//

#import "AFCUILocationProviderViewClassTableViewCell.h"
#import <AppFrameworkMappingModule/AFCMAppStateConstants.h>
#import <AppFrameworkCore/AppFrameworkCore.h>

@implementation AFCUILocationProviderViewClassTableViewCell



- (void)drawRect:(CGRect)rect{
    [super setAccessoryType:UITableViewCellAccessoryNone];
        if ([self isTheSelectedRow:super.textLabel.text]) {
            [super setAccessoryType:UITableViewCellAccessoryCheckmark];
            
        }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    if (selected) {
    
    NSString *PWSLocationManagerKey= @"";
    if ([[super textLabel].text isEqualToString:@"BLE"])
       PWSLocationManagerKey= @"PWSLLocationManager";
    
    if ([[super textLabel].text isEqualToString:@"MSE"])
       PWSLocationManagerKey= @"PWMSELocationManager";
        
    if ([[super textLabel].text isEqualToString:@"GPS / Apple Indoor (if available)"])
        PWSLocationManagerKey= @"PWGPSLocationManager";
    
    if (![PWSLocationManagerKey isEqualToString:@""])
        [[UIApplication sharedApplication] setValue:PWSLocationManagerKey forKey:kAFCMAppStateCurrentLocationProviderKey];
        [self setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
        
        
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



-(BOOL)isTheSelectedRow:(NSString *)value{
    
    
    BOOL finalValue = NO;
    if ([[[UIApplication sharedApplication] valueForKey:kAFCMAppStateCurrentLocationProviderKey] isEqualToString:@"PWSLLocationManager"] && [value isEqualToString:@"BLE"]) {
        finalValue = YES;
    }
    
    if ([[[UIApplication sharedApplication] valueForKey:kAFCMAppStateCurrentLocationProviderKey] isEqualToString:@"PWMSELocationManager"] && [value isEqualToString:@"MSE"]) {
        finalValue = YES;
    }
    
    if ([[[UIApplication sharedApplication] valueForKey:kAFCMAppStateCurrentLocationProviderKey] isEqualToString:@"PWGPSLocationManager"] && [value isEqualToString:@"GPS / Apple Indoor (if available)"]) {
        finalValue = YES;
    }
    
    
    return finalValue;
}

@end
