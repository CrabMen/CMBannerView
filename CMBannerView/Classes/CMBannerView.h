//
//  CCMBannerView.h
//  CMBannerView
//
//  Created by zhijie on 第231天 Aug的第3周.
//

#import <UIKit/UIKit.h>
#import "CMBannerCollectionFlowLayout.h"

NS_ASSUME_NONNULL_BEGIN

@class CMBannerView;

@protocol CMBannerViewDelegate <NSObject>
- (void)sd_bannerView:(CMBannerView *)bannerView didSelectIndex:(NSInteger)index;

@end

@interface CMBannerView : UIView

@property (nonatomic,strong) CMBannerCollectionFlowLayout *cm_layout;
@property (nonatomic,weak,readonly) UICollectionView *collectionView;
@property (nonatomic,weak) id<CMBannerViewDelegate> delegate;


- (void)cm_reloadConfig;

@end


@interface CMBannerCollectionCell : UICollectionViewCell

@property (nonatomic,weak) UIImageView *imageView;

@end





NS_ASSUME_NONNULL_END
