//
//  CCMBannerView.m
//  CMBannerView
//
//  Created by zhijie on 第231天 Aug的第3周.
//

#import "CMBannerView.h"

//随机色
#define CM_RANDOM_COLOR [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]


#define CMPageErrorAssert(condition,message) NSAssert(condition,message)


@interface CMBannerView ()<UICollectionViewDelegate,UICollectionViewDataSource>

/**default note*/
@property (nonatomic,weak) UICollectionView *collectionView;

@property (nonatomic,strong) NSTimer *timer;


@end

@implementation CMBannerView
- (NSTimer *)timer {
    if (!_timer) {
        _timer = [NSTimer timerWithTimeInterval:3 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop]addTimer:_timer forMode:NSRunLoopCommonModes];
//        _timer = [NSTimer timerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
//
//            [self.collectionView setContentOffset:CGPointMake(self.collectionView.contentOffset.x + self.collectionView.bounds.size.width, 0) animated:YES];
//        }];
    }
    return _timer;
}

- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        self.cm_config.cm_layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        self.cm_config.cm_layout.minimumLineSpacing = 0;
        self.cm_config.cm_layout.minimumInteritemSpacing = 0;
        self.cm_config.cm_layout.itemSize = self.frame.size;
        UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.cm_config.cm_layout];
        [collectionView registerClass:CMBannerCollectionCell.class forCellWithReuseIdentifier:NSStringFromClass(CMBannerCollectionCell.class)];
        collectionView.translatesAutoresizingMaskIntoConstraints = NO;
        collectionView.delegate = self;
        collectionView.dataSource = self;
        collectionView.showsHorizontalScrollIndicator = NO;
        collectionView.showsVerticalScrollIndicator = NO;
        collectionView.backgroundColor = [UIColor clearColor];
        collectionView.pagingEnabled = YES;
        
        _collectionView = collectionView;
        [self addSubview:_collectionView];
    }
    
    return _collectionView;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self validateConfig];
    [self initSubViewsConstraintLayout];
    [self timer];
}

- (void)timerInvalidate {
    if (!_timer) return;
    [_timer invalidate];
    _timer = nil;
}

- (void)timerAction {
    
   [self.collectionView setContentOffset:CGPointMake(self.collectionView.contentOffset.x + self.collectionView.bounds.size.width, 0) animated:YES];
}

- (void)cm_reloadConfig {
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    self.collectionView = nil;
    [self layoutSubviews];
}

- (void)validateConfig {
    
    //校验config内的参数
    CMPageErrorAssert(self.cm_config.cm_localImages.count || self.cm_config.cm_remoteImages.count,@"图片数组不能为空");
    
    
}

- (void)initSubViewsConstraintLayout {
    
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[collection]|" options:0 metrics:@{}views:@{@"collection":self.collectionView}]];
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[collection]|" options:0 metrics:@{}views:@{@"collection":self.collectionView}]];

}



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.cm_config.cm_localImages.count *200;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CMBannerCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(CMBannerCollectionCell.class) forIndexPath:indexPath];
    cell.contentView.backgroundColor = CM_RANDOM_COLOR;
    if (self.cm_config.cm_remoteImages.count) {
        
    }
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"当前点击了第%ld个item",indexPath.item % 200);
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSInteger index = (NSInteger)floor(scrollView.contentOffset.x / self.bounds.size.width) % 200;
    NSLog(@"当前滚动到了第%ld个item",index);
}

@end







@interface CMBannerCollectionCell ()

@end

@implementation CMBannerCollectionCell

-(UIImageView *)imageView {
    
    if (!_imageView) {
        UIImageView *imageView = [UIImageView new];
        imageView.translatesAutoresizingMaskIntoConstraints = NO;
       
        _imageView = imageView;
        [self.contentView addSubview:_imageView];
    }
    return _imageView;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.backgroundColor = [UIColor redColor];
    [self initSubViewsLayoutConstraint];
    
}

- (void)initSubViewsLayoutConstraint {
    
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[imageView]|" options:0 metrics:@{}views:@{@"imageView":self.imageView}]];
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[imageView]|" options:0 metrics:@{}views:@{@"imageView":self.imageView}]];
}


@end



