//
//  CMViewController.m
//  CMBannerView
//
//  Created by CrabMen on 08/19/2019.
//  Copyright (c) 2019 CrabMen. All rights reserved.
//

#import "CMViewController.h"
#import <CMBannerView/CMBannerView.h>
@interface CMViewController ()<CMBannerViewDelegate>

@end

@implementation CMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CMBannerView *banner = [[CMBannerView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    banner.delegate = self;
    CMBannerCollectionFlowLayout *config = [CMBannerCollectionFlowLayout defaultLayout];
    config.cm_localImages = @[@"",@"",@"",@"",@"",@"",];
    banner.cm_layout = config;
    
    [self.view addSubview:banner];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sd_bannerView:(CMBannerView *)bannerView didSelectIndex:(NSInteger)index {
    
    NSLog(@"当前点击了第%ld个item",index);

    
}

@end
