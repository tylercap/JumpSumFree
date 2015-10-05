//
//  MyBannerCell.h
//  jumpsum
//
//  Created by Tyler Cap on 2/11/15.
//  Copyright (c) 2015 Tyler Cap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlurryAdBanner.h"
#import "FlurryAdBannerDelegate.h"

@interface MyBannerCell : UICollectionViewCell <FlurryAdBannerDelegate>

- (void)loadAd:(UIViewController*)parent;

@end
