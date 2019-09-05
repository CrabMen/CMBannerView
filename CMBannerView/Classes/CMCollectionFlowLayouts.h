//
//  CMCollectionFlowLayouts.h
//  CMCollectionFlowLayouts
//
//  Created by zhijie on 第242天 Aug的第5周.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,CMCollectionFlowLayoutsStyle) {
    CMCollectionFlowLayoutsStyle_Liner,
    CMCollectionFlowLayoutsStyle_Scale,
    CMCollectionFlowLayoutsStyle_Angle,
    CMCollectionFlowLayoutsStyle_Waterfall,
    CMCollectionFlowLayoutsStyle_Emotions
};

typedef NS_ENUM(NSInteger,CMLayoutsHorizontalContentMode) {
    CMLayoutsHorizontalContentMode_Left,
    CMLayoutsHorizontalContentMode_Center,
    CMLayoutsHorizontalContentMode_Right
};

typedef NS_ENUM(NSInteger,CMLayoutsScrollDirection) {
    CMLayoutsScrollDirection_Left,
    CMLayoutsScrollDirection_Right
};


@interface CMCollectionFlowLayouts : UICollectionViewFlowLayout

@property (nonatomic,strong) NSArray <NSString *>*cm_localImages;

@property (nonatomic,strong) NSArray <NSString *>*cm_remoteImages;

@property (nonatomic,assign,getter=cm_selectedIndex) NSInteger cm_defaultIndex;

@property (nonatomic,assign) CMCollectionFlowLayoutsStyle cm_style;

@property (nonatomic,assign) BOOL cm_autoScroll;

@property (nonatomic,assign) BOOL cm_cycleScroll;

@property (nonatomic,assign) NSInteger cm_autoInterval;

@property (nonatomic,assign) CMLayoutsHorizontalContentMode cm_horizontalContentMode;



@property (nonatomic,assign) CGFloat cm_scale;
@property (nonatomic,assign) CGFloat cm_alpha;


+(instancetype)layoutWithStyle:(CMCollectionFlowLayoutsStyle)style;
+(instancetype) alloc __attribute__((unavailable("please call class method \"+ (instancetype)layoutWithStyle:(CMCollectionFlowLayoutsStyle)style\" instead")));
+(instancetype) new __attribute__((unavailable("please call class method \"+ (instancetype)layoutWithStyle:(CMCollectionFlowLayoutsStyle)style\" instead")));
-(instancetype) copy __attribute__((unavailable("please call class method \"+ (instancetype)layoutWithStyle:(CMCollectionFlowLayoutsStyle)style\" instead")));
-(instancetype) mutableCopy __attribute__((unavailable("please call class method \"+ (instancetype)layoutWithStyle:(CMCollectionFlowLayoutsStyle)style\" instead")));


@end


@interface CMCollectionFlowLayouts_Angle : CMCollectionFlowLayouts



+(instancetype) alloc;

@end

@interface CMCollectionFlowLayouts_Scale : CMCollectionFlowLayouts


+(instancetype) alloc;

@end


@protocol CMCollectionFlowLayoutsDataSource_Waterfall <NSObject>

@required

- (CGFloat)cm_heightForItem:(NSIndexPath *)indexPath;

@end

@interface CMCollectionFlowLayouts_Waterfall : CMCollectionFlowLayouts

@property (nonatomic,assign) NSInteger cm_columnCount;

@property (nonatomic,weak) id<CMCollectionFlowLayoutsDataSource_Waterfall> dataSource;

+(instancetype) alloc;

@end


@interface CMCollectionFlowLayouts_Emotions : CMCollectionFlowLayouts

@property (nonatomic,assign) NSInteger cm_rowCount;

@property (nonatomic,assign) NSInteger cm_columnCount;

+(instancetype) alloc;

@end




NS_ASSUME_NONNULL_END
