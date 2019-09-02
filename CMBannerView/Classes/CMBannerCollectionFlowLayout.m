//
//  CMBannerViewConfig.m
//  CMBannerView
//
//  Created by zhijie on 第231天 Aug的第3周.
//

#import "CMBannerCollectionFlowLayout.h"

@interface CMBannerCollectionFlowLayout ()

@end

@implementation CMBannerCollectionFlowLayout

+ (instancetype)defaultLayout{
    return [[super alloc]initWithDefaultLayout];
}


- (instancetype)initWithDefaultLayout{
    if (self = [super init]) {
        _cm_defaultIndex = 0;
        _cm_autoScroll = YES;
        _cm_cycleScroll = YES;
        _cm_autoInterval = 3;
    }
    return self;
}

@end





