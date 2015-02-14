//
//  NumberCell.m
//  UICollectionViewSample
//
//  Created on 2015/02/14.
//
//

#import "NumberCell.h"

@interface NumberCell ()

@property (weak, nonatomic) UILabel *label;

@end

@implementation NumberCell

/**
 *  コンストラクタです。
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

/**
 *  コンストラクタです。
 */
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initialize];
    }
    return self;
}

/**
 *  初期化関数です。
 */
- (void)initialize
{
    //
    UILabel *label = [[UILabel alloc] init];
    label.font = [[self class] font];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    _label = label;
    [self.contentView addSubview:label];
}

+ (UIFont *)font
{
    return [UIFont boldSystemFontOfSize:24];
}

+ (CGSize)cellSizeWithNumber:(NSNumber *)number
{
    static CGFloat margin = 5.f;
    CGSize numberSize = [[number stringValue] sizeWithAttributes:@{NSFontAttributeName:[self font]}];
    return CGSizeMake(numberSize.width + margin * 2,
                      numberSize.height + margin * 2);
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.label.frame = self.contentView.bounds;
}

- (void)setNumber:(NSNumber *)number {
    if (_number != number) {
        _number = number;
        self.label.text = [number stringValue];
    }
}

@end
