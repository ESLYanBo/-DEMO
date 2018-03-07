//
//  ZWCollectionViewCell.m
//  瀑布流demo
//
//  Created by 王晨辉 on 2018/1/9.
//  Copyright © 2018年 王晨辉. All rights reserved.
//

#import "ZWCollectionViewCell.h"
#import "UIImageView+WebCache.h"
@implementation ZWCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)setShop:(shopModel *)shop
{
    _shop = shop;
    [self.shopImage sd_setImageWithURL:[NSURL URLWithString:_shop.img]];
    self.shopName.text = _shop.price;
    

}
@end
