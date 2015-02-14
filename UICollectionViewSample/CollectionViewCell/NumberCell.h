//
//  NumberCell.h
//  UICollectionViewSample
//
//  Created on 2015/02/14.
//
//

#import <UIKit/UIKit.h>

@interface NumberCell : UICollectionViewCell

/**
 *  セルの番号を保持するプロパティです。
 */
@property (copy, nonatomic) NSNumber *number;

/**
 *  指定のセルのサイズ（縦、横）を取得します。
 *
 *  @param number サイズを取得するセルの番号。
 *
 *  @return 指定のセルのサイズ。
 */
+ (CGSize)cellSizeWithNumber:(NSNumber *)number;

@end
