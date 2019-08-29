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

+ (instancetype)defaultConfig{
    
    return [[super alloc]initWithDefaultConfig];
    
}


- (instancetype)initWithDefaultConfig {

    
    if (self = [super init]) {
        _cm_defaultIndex = 0;
        _cm_autoScroll = YES;
        _cm_cycleScroll = YES;
        
    }

    return self;
}

@end





