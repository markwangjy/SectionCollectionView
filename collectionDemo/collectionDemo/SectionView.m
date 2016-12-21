//
//  SectionView.m
//  collectionDemo
//
//  Created by 王吉源 on 16/12/21.
//  Copyright © 2016年 王吉源. All rights reserved.
//

#import "SectionView.h"

#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 \
alpha:1.0]
#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGTH   [UIScreen mainScreen].bounds.size.height
@implementation SectionView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubViews];
    }
    return self;
}

- (void)initSubViews{
    [self addSubview:self.contentLabel];
    [self addSubview:self.tagView];
}

- (UIView *)tagView{
    if (!_tagView) {
        _tagView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 5, 15)];
        _tagView.backgroundColor = UIColorFromRGB(0xffbf00);
        _tagView.layer.masksToBounds = YES;
        _tagView.layer.cornerRadius = 2.5;
    }
    return _tagView;
}

- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(25, 0, SCREEN_WIDTH, 40)];
        _contentLabel.font = [UIFont systemFontOfSize:13];
        _contentLabel.textColor = UIColorFromRGB(0x666666);
        _contentLabel.layer.zPosition = -1;
        _contentLabel.text = @"这里是头部视图";
    }
    return _contentLabel;
}

@end
