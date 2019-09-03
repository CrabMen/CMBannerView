//
//  CCMBannerView.h
//  CMBannerView
//
//  Created by zhijie on 第231天 Aug的第3周.
//

#import <UIKit/UIKit.h>
#import "CMCollectionFlowLayouts.h"

NS_ASSUME_NONNULL_BEGIN

@class CMBannerView;

@protocol CMBannerViewDelegate <NSObject>
- (void)cm_bannerView:(CMBannerView *)bannerView didSelectIndex:(NSInteger)index;
- (void)cm_bannerView:(CMBannerView *)bannerView didClickIndex:(NSInteger)index;
- (void)cm_bannerView:(CMBannerView *)bannerView didScrollToIndex:(NSInteger)index;
@end

@protocol CMBannerViewDataSource <NSObject>

- (NSInteger)cm_numberOfSectionsInCollectionView:(UICollectionView *)collectionView;
- (NSInteger)cm_collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
- (UICollectionViewCell *)cm_collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;

@end


@interface CMBannerView : UIView

@property (nonatomic,strong) CMCollectionFlowLayouts *cm_layout;
@property (nonatomic,weak,readonly) UICollectionView *collectionView;
@property (nonatomic,weak) id<CMBannerViewDelegate> delegate;
@property (nonatomic,weak) id<CMBannerViewDataSource> dataSource;


//根据情况 走setNeedsLayout还是layoutSubViews
- (void)cm_reloadLayout;
- (void)cm_setNeedsLayout;

@end


@interface CMBannerCollectionCell : UICollectionViewCell

@property (nonatomic,weak) UIImageView *imageView;

@end





NS_ASSUME_NONNULL_END
