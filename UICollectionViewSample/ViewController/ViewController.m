//
//  ViewController.m
//  UICollectionViewSample
//
//  Created on 2015/02/14.
//
//

#import "ViewController.h"
#import "NumberCell.h"

@interface ViewController () <UICollectionViewDelegateFlowLayout>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerClass:[NumberCell class]
            forCellWithReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/**
 *  セルの最大数を返却します。
 *
 *  @param collectionView コレクションビュー。
 *  @param section        セクション。
 *
 *  @return セルの最大数。
 */
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return 100;
}

/**
 *  コレクションビューに配置するセルを返却します。
 *
 *  @param collectionView コレクションビュー。
 *  @param indexPath      セルの配置番号
 *
 *  @return コレクションに配置するセル。
 */
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NumberCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell"
                                                                 forIndexPath:indexPath];
    cell.number = @(indexPath.row + 1);
    return cell;
}

/**
 *  コレクションビューに配置するセルのサイズ（縦、横）を返却します。
 *
 *  @param collectionView       コレクションビュー。
 *  @param collectionViewLayout コレクションビューレイアウト。
 *  @param indexPath            セルの配置番号。
 *
 *  @return コレクションビューに配置するセルのサイズ。
 */
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [NumberCell cellSizeWithNumber:@(indexPath.row + 1)];
}

@end
