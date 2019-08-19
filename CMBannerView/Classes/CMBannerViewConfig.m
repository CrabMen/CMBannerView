//
//  CMBannerViewConfig.m
//  CMBannerView
//
//  Created by zhijie on 第231天 Aug的第3周.
//

#import "CMBannerViewConfig.h"

@interface CMBannerCollectionFlowLayout ()

@end

@implementation CMBannerCollectionFlowLayout



@end


@interface CMBannerViewConfig ()

@property (nonatomic,strong) CMBannerCollectionFlowLayout *cm_layout;


@end

@implementation CMBannerViewConfig

- (CMBannerCollectionFlowLayout *)cm_layout {
    
    if (!_cm_layout) {
        _cm_layout = [CMBannerCollectionFlowLayout new];
    }
    return _cm_layout;
    
}

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





