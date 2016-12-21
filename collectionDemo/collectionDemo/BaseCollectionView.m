//
//  BaseCollectionView.m
//  collectionDemo
//
//  Created by 王吉源 on 16/12/13.
//  Copyright © 2016年 王吉源. All rights reserved.
//

#import "BaseCollectionView.h"
#import "SmallCollectionCell.h"
static NSString *identifier = @"baseCell";
@implementation BaseCollectionView
-(void)initCompletionOpration{
    [self.contentCollectionView registerNib:[UINib nibWithNibName:@"SmallCollectionCell" bundle:nil] forCellWithReuseIdentifier:identifier];
    self.contentLayout.minimumLineSpacing = 10;
    self.contentLayout.minimumInteritemSpacing = 5;
    self.contentLayout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
}
-(void)contentModelCompletionOpration{
    self.contentLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.contentCollectionView.scrollEnabled = YES;
    self.contentCollectionView.pagingEnabled = YES;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat height = (200 - 20)/ 2;
    //NSLog(@"--------------h%.2f",self.contentCollectionView.height);
    //        return CGSizeMake(height/ 90.0 * 130, height);
    
    
    if (_columnCountForSection == 1) {
        return CGSizeMake(self.frame.size.width-10, height);
    }else if (_columnCountForSection == 2){
        return CGSizeMake((self.frame.size.width-20)/2, height);
    }else{
        return CGSizeMake((self.frame.size.width - 30)/ 3.0, height);
    }
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SmallCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    [cell setContentModel:[NSString stringWithFormat:@"%ld",indexPath.item]];
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:true];
}
-(void)setColumnCountForSection:(NSInteger)columnCountForSection{
    _columnCountForSection = columnCountForSection;
    [self.contentCollectionView reloadData];
}

@end
