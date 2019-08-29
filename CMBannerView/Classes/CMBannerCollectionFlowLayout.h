//
//  CMBannerViewConfig.h
//  CMBannerView
//
//  Created by zhijie on 第231天 Aug的第3周.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,CMBannerViewStyle) {
    
    CMBannerViewStyle_Liner,
    CMBannerViewStyle_Scale,
    CMBannerViewStyle_Angle,
};


@interface CMBannerCollectionFlowLayout : UICollectionViewFlowLayout

@property (nonatomic,strong) NSArray <NSString *>*cm_localImages;

@property (nonatomic,strong) NSArray <NSString *>*cm_remoteImages;

@property (nonatomic,assign) NSInteger *cm_defaultIndex;

@property (nonatomic,assign) CMBannerViewStyle cm_style;

@property (nonatomic,strong,readonly) CMBannerCollectionFlowLayout *cm_layout;

@property (nonatomic,assign) BOOL cm_autoScroll;

@property (nonatomic,assign) BOOL cm_cycleScroll;

@property (nonatomic,assign) NSInteger cm_autoInterval;



+ (instancetype)defaultConfig;
+(instancetype) alloc __attribute__((unavailable("please call class method +(instancetype)defaultConfig instead")));
+(instancetype) new __attribute__((unavailable("please call class method +(instancetype)defaultConfig instead")));
-(instancetype) copy __attribute__((unavailable("please call class method +(instancetype)defaultConfig instead")));
-(instancetype) mutableCopy __attribute__((unavailable("please call class method +(instancetype)defaultConfig instead")));

@end

NS_ASSUME_NONNULL_END
