//
//  NumberCell.h
//  UICollectionViewSample
//
//  Created on 2015/02/14.
//
//

#import <UIKit/UIKit.h>

@interface NumberCell : UICollectionViewCell

@property (copy, nonatomic) NSNumber *number;

+ (CGSize)cellSizeWithNumber:(NSNumber *)number;

@end
