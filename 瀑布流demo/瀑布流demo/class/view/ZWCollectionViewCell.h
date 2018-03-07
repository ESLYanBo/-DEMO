//
//  ZWCollectionViewCell.h
//  瀑布流demo
//
//  Created by 王晨辉 on 2018/1/9.
//  Copyright © 2018年 王晨辉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "shopModel.h"
@interface ZWCollectionViewCell : UICollectionViewCell
@property(nonatomic,retain)shopModel * shop;
@property (weak, nonatomic) IBOutlet UIImageView *shopImage;
@property (weak, nonatomic) IBOutlet UILabel *shopName;

@end
