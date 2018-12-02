//
//  UIImageView+YYOUCarImageView.h
//  YYOUCarOwnerAPP
//
//  Created by yonyou on 2018/9/4.
//  Copyright © 2018年 YonYou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (YYOUCarImageView)
+ (UIImageView *)imageViewWithName:(NSString *)name superView:(id)superView;
+(UIImageView *)imageViewWithFrame:(CGRect)frame;
/**
 imageView扩展
 
 @param name 图片名称
 @param frame 图片大小
 @return 返回图片
 */
+(UIImageView *)imageViewWithName:(NSString *)name imageFrame:(CGRect)frame;
/**
 imageView扩展
 
 @param name 图片名称
 @param frame 图片大小
 @return 返回图片
 */
+(UIImageView *)imageViewWithName:(NSString *)name imageFrame:(CGRect)frame contentModel:(UIViewContentMode)contentModel corRadifous:(CGSize)corRadSize;
@end
