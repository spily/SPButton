//
//  UIButton+ContentLayout.h
//  RMReader
//
//  Created by bx on 12/5/19.
//  Copyright © 2019 bx. All rights reserved.
//



#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, UIButtonLayoutType) {
    UIButtonLayoutImageLeft,
    UIButtonLayoutImageRight,
    UIButtonLayoutImageTop,
    UIButtonLayoutImageBottom,
};


NS_ASSUME_NONNULL_BEGIN

@interface UIButton (ContentLayout)
/**
 titleLabel是否自适应宽度
 */
@property (assign, nonatomic) BOOL isSizeToFit;

- (void)setLabelLeftImageRight;
- (void)setLabelCenter;
- (void)setImageLayout:(UIButtonLayoutType)type space:(CGFloat)space;


@end

NS_ASSUME_NONNULL_END
