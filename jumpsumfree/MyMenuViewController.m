//
//  MyMenuViewController.m
//  jumpsumfree
//
//  Created by Tyler Cap on 2/23/15.
//  Copyright (c) 2015 Tyler Cap. All rights reserved.
//

#import "MyMenuViewController.h"

static NSString * const BannerAdId = @"ca-app-pub-8484316959485082/7478851650";
static NSString * const GoogleClientId = @"320198239668-quml3u6s5mch28jvq0vpdeutg8relg25.apps.googleusercontent.com";

@implementation MyMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _bannerAd.adUnitID = BannerAdId;
    _bannerAd.rootViewController = self;
    [_bannerAd loadRequest:[GADRequest request]];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    MyCollectionViewController *destViewController = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"Level1"]) {
        destViewController.level = 1;
    }
    else if ([segue.identifier isEqualToString:@"Level2"]) {
        destViewController.level = 2;
    }
    else if ([segue.identifier isEqualToString:@"Level3"]) {
        destViewController.level = 3;
    }
    else if ([segue.identifier isEqualToString:@"Level4"]) {
        destViewController.level = 4;
    }
    else if ([segue.identifier isEqualToString:@"Level5"]) {
        destViewController.level = 5;
    }
    else if ([segue.identifier isEqualToString:@"Level6"]) {
        destViewController.level = 6;
    }
    else if ([segue.identifier isEqualToString:@"Level7"]) {
        destViewController.level = 7;
    }
    else if ([segue.identifier isEqualToString:@"Level8"]) {
        destViewController.level = 8;
    }
    else if ([segue.identifier isEqualToString:@"Level9"]) {
        destViewController.level = 9;
    }
    else if ([segue.identifier isEqualToString:@"Level10"]) {
        destViewController.level = 10;
    }
}

@end
