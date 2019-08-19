//
//  CMViewController.m
//  CMBannerView
//
//  Created by CrabMen on 08/19/2019.
//  Copyright (c) 2019 CrabMen. All rights reserved.
//

#import "CMViewController.h"
#import <CMBannerView/CMBannerView.h>
@interface CMViewController ()

@end

@implementation CMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CMBannerView *banner = [[CMBannerView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    
    CMBannerViewConfig *config = [CMBannerViewConfig defaultConfig];
    
    banner.cm_config = config;
    
    [self.view addSubview:banner];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
