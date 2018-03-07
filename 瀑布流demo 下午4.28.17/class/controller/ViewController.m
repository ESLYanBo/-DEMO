//
//  ViewController.m
//  瀑布流demo
//
//  Created by 王晨辉 on 2018/1/9.
//  Copyright © 2018年 王晨辉. All rights reserved.
//

#import "ViewController.h"
#import "ZWCollectionViewFlowLayout.h"
#import "ZWCollectionViewCell.h"
#import "shopModel.h"
#import "MJExtension.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,ZWwaterFlowDelegate>
@property(nonatomic,retain)UICollectionView * collectView;
@property(nonatomic,strong)NSMutableArray * shops;
@end

@implementation ViewController
-(NSMutableArray *)shops
{
    if (_shops==nil) {
        self.shops = [NSMutableArray array];
    }
    return _shops;
}
- (void)viewDidLoad {
    [super viewDidLoad];
//初始化数据
    NSArray * shopsArray = [shopModel objectArrayWithFilename:@"1.plist"];
    [self.shops addObjectsFromArray:shopsArray];
//注册cell
    ZWCollectionViewFlowLayout * layOut = [[ZWCollectionViewFlowLayout alloc] init];
    layOut.degelate =self;
    UICollectionView * collectView = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:layOut];
    collectView.delegate =self;
    collectView.dataSource =self;
    [self.view addSubview:collectView];
    [collectView registerNib:[UINib nibWithNibName:@"ZWCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    self.collectView = collectView;

}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.shops.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZWCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    cell.shop = self.shops[indexPath.item];
    return cell;
}
//代理方法
-(CGFloat)ZWwaterFlow:(ZWCollectionViewFlowLayout *)waterFlow heightForWidth:(CGFloat)width atIndexPath:(NSIndexPath *)indexPach
{
    shopModel * shop = self.shops[indexPach.item];
    return shop.h/shop.w*width;
}
@end
