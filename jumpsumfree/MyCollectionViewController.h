//
//  MyCollectionViewController.h
//  jumpsum
//
//  Created by Tyler Cap on 2/5/15.
//  Copyright (c) 2015 Tyler Cap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCollectionViewCell.h"
#import "MyCollectionViewLayout.h"
#import "MyButtonCell.h"
#import "MyLabelCell.h"
#import "CellPair.h"
#import "MyBannerCell.h"
#import "Gameboard.h"
#import "GameboardL1.h"
#import "GameboardL2.h"
#import "GameboardL3.h"
#import "GameboardL4.h"
#import "GameboardL5.h"
#import "GameboardL6.h"
#import "GameboardL7.h"
#import "GameboardL8.h"
#import "GameboardL9.h"
#import "GameboardL10.h"
#import "GameboardL11.h"
#import "Application.h"
#import "MyWebViewController.h"
#import <GooglePlayGames/GooglePlayGames.h>
#import <FacebookSDK/FacebookSDK.h>
#import "FlurryAdInterstitial.h"
#import "FlurryAdInterstitialDelegate.h"

@interface MyCollectionViewController : UICollectionViewController
<UICollectionViewDataSource, FlurryAdInterstitialDelegate, GPGStatusDelegate>

@property (nonatomic, weak) IBOutlet MyCollectionViewLayout *layout;
@property (strong, nonatomic) Gameboard *gameboard;
@property (strong, nonatomic) NSMutableArray *tiles;
@property (nonatomic) NSInteger level;
@property (nonatomic) NSInteger currentScore;
@property (strong, atomic) UICollectionViewCell* movingCell;

@property (nonatomic, strong) FlurryAdInterstitial* adInterstitial;
@property (nonatomic) Boolean signedIn;
@property (nonatomic) Boolean silentlySigningIn;

@property (nonatomic) NSInteger headerSections;
@property (nonatomic) NSInteger footerSections;

@property (weak, nonatomic) MyButtonCell *restartGame;
@property (weak, nonatomic) MyButtonCell *howTo;
@property (weak, nonatomic) MyButtonCell *signInOut;
@property (weak, nonatomic) MyButtonCell *leaderboard;
@property (weak, nonatomic) MyLabelCell *currentScoreLabel;
@property (weak, nonatomic) MyLabelCell *highScoreLabel;
@property (weak, nonatomic) MyBannerCell *bannerAdCell;

-(void)highlightValidTargets:(NSIndexPath *)indexPath
                   highlight:(Boolean)highlight;
-(Boolean)jumpedTile:(NSIndexPath *)indexPath
             landing:(CGPoint)dropTarget;
-(Boolean)canDrag:(UICollectionViewCell *)cell;
-(void)finishedDrag:(UICollectionViewCell *)cell;

@end

