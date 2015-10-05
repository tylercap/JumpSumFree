//
//  MyBannerCell.m
//  jumpsum
//
//  Created by Tyler Cap on 2/11/15.
//  Copyright (c) 2015 Tyler Cap. All rights reserved.
//

#import "MyBannerCell.h"

static NSString * const bannerAdName = @"JS_IOS_BANNER";

@implementation MyBannerCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    return self;
}

- (void)loadAd:(UIViewController*)parent
{
    // Fetch and display banner ad for a given ad space. Note: Choose an adspace name that
    // will uniquely identifiy the ad's placement within your app
    FlurryAdBanner *adBanner = [[FlurryAdBanner alloc] initWithSpace:bannerAdName];
    adBanner.adDelegate = self;
    [adBanner fetchAndDisplayAdInView:self viewControllerForPresentation:parent];
}

@end
