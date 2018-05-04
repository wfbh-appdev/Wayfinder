//
//  AFMManagedProviderAlertTableViewCell.m
//  AFMDemo
//
//  Created by Jeffrey Johnson on 4/5/17.
//  Copyright © 2017 Phunware. All rights reserved.
//

#import "AFMManagedProviderAlertTableViewCell.h"
#import <AppFrameworkMappingModule/AFMMapConstants.h>


@implementation AFMManagedProviderAlertTableViewCell

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
        NSString *AFMManagedProviderAlertKey = @"";

        if ([[super textLabel].text isEqualToString:@"On"])
            AFMManagedProviderAlertKey = @"On";

        if ([[super textLabel].text isEqualToString:@"Off"])
            AFMManagedProviderAlertKey = @"Off";

        if (![AFMManagedProviderAlertKey isEqualToString:@""])
            [[NSUserDefaults standardUserDefaults] setValue:AFMManagedProviderAlertKey forKey:kAFMManagedProviderAlertKey];

        [[NSUserDefaults standardUserDefaults] synchronize];
        [self setAccessoryType:UITableViewCellAccessoryCheckmark];
    }


    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (BOOL)isTheSelectedRow:(NSString *)value
{
    BOOL finalValue = NO;

    if ([[[NSUserDefaults standardUserDefaults] valueForKey:kAFMManagedProviderAlertKey] isEqualToString:@"On"] && [value isEqualToString:@"On"]) {
        finalValue = YES;
    }

    if ([[[NSUserDefaults standardUserDefaults] valueForKey:kAFMManagedProviderAlertKey] isEqualToString:@"Off"] && [value isEqualToString:@"Off"]) {
        finalValue = YES;
    }

    if (![[NSUserDefaults standardUserDefaults] objectForKey:kAFMManagedProviderAlertKey] && [value isEqualToString:@"Off"]) {
        [[NSUserDefaults standardUserDefaults] setValue:@"Off" forKey:kAFMManagedProviderAlertKey];
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
