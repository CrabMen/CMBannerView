//
//  CCMBannerView.h
//  CMBannerView
//
//  Created by zhijie on 第231天 Aug的第3周.
//

#import <UIKit/UIKit.h>
#import "CMBannerViewConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface CMBannerView : UIView

@property (nonatomic,strong) CMBannerViewConfig *cm_config;


@property (nonatomic,weak,readonly) UICollectionView *collectionView;


- (void)cm_reloadConfig;

@end


@interface CMBannerCollectionCell : UICollectionViewCell

@end



NS_ASSUME_NONNULL_END
