//
//  UITextView+Skin.m
//  HyCurrency
//
//  Created by rui on 2017/7/3.
//  Copyright © 2017年 ---. All rights reserved.
//

#import "UITextView+Skin.h"

@implementation UITextView (Skin)

- (void)setR_textColor:(NSString *)r_textColor
{
    objc_setAssociatedObject(self, @selector(r_textColor), r_textColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
    ColorPicker *colorPicker = [ColorPicker new];
    colorPicker.skinDict = [self.skinManager skinColorDictWithKey:r_textColor];
    self.textColor = [colorPicker getCurrentModeSkin];
    [self.skinPool setValue:colorPicker forKey:SET_TEXT_COLOR];
}

- (NSString *)r_textColor
{
    return objc_getAssociatedObject(self, @selector(r_textColor));
}

@end
