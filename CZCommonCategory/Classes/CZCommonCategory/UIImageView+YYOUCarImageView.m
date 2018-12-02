//
//  UIImageView+YYOUCarImageView.m
//  YYOUCarOwnerAPP
//
//  Created by yonyou on 2018/9/4.
//  Copyright © 2018年 YonYou. All rights reserved.
//

#import "UIImageView+YYOUCarImageView.h"
@implementation UIImageView (YYOUCarImageView)
+ (UIImageView *)imageViewWithName:(NSString *)name superView:(id)superView{
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:name];
    [superView addSubview:imageView];
    return imageView;
}
+(UIImageView *)imageViewWithFrame:(CGRect)frame{
    return [self imageViewWithName:@"" imageFrame:frame];
}
+(UIImageView *)imageViewWithName:(NSString *)name imageFrame:(CGRect)frame{
    return [self imageViewWithName:name imageFrame:frame contentModel:UIViewContentModeScaleToFill corRadifous:CGSizeZero];
}
+(UIImageView *)imageViewWithName:(NSString *)name imageFrame:(CGRect)frame contentModel:(UIViewContentMode)contentModel corRadifous:(CGSize)corRadSize{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:name];
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:imageView.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:corRadSize];
    //cornerRadii=imageView.bounds.size 为圆形
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = imageView.bounds;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    imageView.layer.mask = maskLayer;
    imageView.contentMode = contentModel;
    return imageView;
}
@end
