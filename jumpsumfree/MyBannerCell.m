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
FlurryAdBanner *adBanner = nil;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    return self;
}

- (void)loadAd:(UIViewController*)parent
{
    // Fetch and display banner ad for a given ad space. Note: Choose an adspace name that
    // will uniquely identifiy the ad's placement within your app
    adBanner = [[FlurryAdBanner alloc] initWithSpace:bannerAdName];
    adBanner.adDelegate = self;
    _parent = parent;
    
    [adBanner fetchAdForFrame:self.childView.frame];
    //    [adBanner fetchAndDisplayAdInView:self.childView viewControllerForPresentation:parent];
}

// Show whenever delegate is invoked
- (void) adBannerDidFetchAd:(FlurryAdBanner *) adBanner
{
    // Received Ad
    [adBanner displayAdInView:self.childView viewControllerForPresentation:_parent];
}

//Invoked when the banner ad is rendered.
- (void) adBannerDidRender:(FlurryAdBanner*)bannerAd
{
//        NSLog(@"Rendered Banner");
}

//Informational callback invoked when an ad is clicked for the specified @c bannerAd object.
- (void) adBannerDidReceiveClick:(FlurryAdBanner*)bannerAd;
{
    //    NSLog(@"Did Receive Click");
}

//Informational callback invoked when there is an ad error
- (void) adBanner:(FlurryAdBanner*) bannerAd adError:(FlurryAdError) adError errorDescription:(NSError*) errorDescription
{
//        NSLog(@"Error Banner");
    //  @param bannerAd The banner ad object associated with the error
    //  @param adError an enum that specifies the reason for the error.
    //  @param errorDescription An error object that gives additional information on the cause of the ad error.
}

@end
