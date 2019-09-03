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
/**default note*/
@property (nonatomic,strong) CMBannerView *banner;

@property (nonatomic,strong) CMCollectionFlowLayouts *layout;

@end

@implementation CMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.banner = [[CMBannerView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    self.banner.delegate = self;
    self.layout = [CMCollectionFlowLayouts layoutWithStyle:CMCollectionFlowLayoutsStyle_Liner];
    self.layout.cm_localImages = @[@"",@"",@"",@"",@"",@"",];
    self.banner.cm_layout = self.layout;
    
    [self.view addSubview:self.banner];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.layout.minimumInteritemSpacing += 5;
    self.layout.minimumLineSpacing += 5;
    [self.banner cm_reloadLayout];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cm_bannerView:(CMBannerView *)bannerView didSelectIndex:(NSInteger)index {
    
    NSLog(@"当前选择了第%ld个item",index);

}

- (void)cm_bannerView:(CMBannerView *)bannerView didScrollToIndex:(NSInteger)index {
    
    NSLog(@"当前滚动到了第%ld个item",index);

}

- (void)cm_bannerView:(CMBannerView *)bannerView didClickIndex:(NSInteger)index {
    NSLog(@"当前点击了第%ld个item",index);
}

@end
