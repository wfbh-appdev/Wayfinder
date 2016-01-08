//
//  AFGoogleAnalyticsController.m
//  AppFrameworkAnalytics
//
//  Created by Victor Soto on 8/7/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "AFGoogleAnalyticsController.h"
#import <AppFrameworkCore/UIApplication+AFAnalytics.h>
#import <Google/Analytics.h>

static NSString * const AFGoogleAnalyticsControllerTokenSuffix = @"GOOGLE";

@implementation AFGoogleAnalyticsController

#pragma mark - Required

- (void)startAnalyticsWithInfo:(NSDictionary *)info {
    [super startAnalyticsWithInfo:info];    
    NSError *configureError;
    [[GGLContext sharedInstance] configureWithError:&configureError];
}

- (void)stopAnalyticsWithInfo:(NSDictionary *)info {
    [super stopAnalyticsWithInfo:info];
}

- (void)trackScreen:(NSString *)screenName info:(NSDictionary *)info {
    [super trackScreen:screenName info:info];    
    id tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:screenName];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

- (void)sendEventWithName:(NSString *)name info:(NSDictionary *)info {
    [super sendEventWithName:name info:info];
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:AFAnalyticsControllerEventCategory
                                                          action:name
                                                           label:[info objectForKey:AFAnalyticsControllerEventLabel]
                                                           value:[info objectForKey:AFAnalyticsControllerEventValue]] build]];
}

- (void)startTimedEventWithName:(NSString *)name info:(NSDictionary *)info {
    [super startTimedEventWithName:name info:info];
}

- (void)stopTimedEventWithName:(NSString *)name info:(NSDictionary *)info {
    [super stopTimedEventWithName:name info:info];
}

- (void)sentTimedEventWithName:(NSString *)name duration:(NSTimeInterval)duration info:(NSDictionary *)info {
    [super sentTimedEventWithName:name duration:duration info:info];
    id tracker = [[GAI sharedInstance] defaultTracker];    
    [tracker send:[[GAIDictionaryBuilder createTimingWithCategory:AFAnalyticsControllerTimedEventCategory
                                                         interval:@((NSUInteger)(duration * 1000))
                                                             name:name
                                                            label:[info objectForKey:AFAnalyticsControllerEventLabel]] build]];
}

#pragma mark - Optional

- (void)assignUserId:(NSString *)userId {
    [super assignUserId:userId];
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    // You only need to set User ID on a tracker once. By setting it on the tracker, the ID will be
    // sent with all subsequent hits.
    [tracker set:@"&uid" value:userId];
}

- (void)assignUserProfileInfo:(NSDictionary *)userProfileInfo {
    [super assignUserProfileInfo:userProfileInfo];
}

- (void)sendLocation:(CLLocation *)location {
    [super sendLocation:location];
}

#pragma mark - Configure

- (void)configure {
    self.tokenSufix = AFGoogleAnalyticsControllerTokenSuffix;
    [[GAI sharedInstance] trackerWithTrackingId:@"UA-71848714-1"];
    [super configure];
}

@end
