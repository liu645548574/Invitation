//
//  BrandCell.h
//  Invitation
//
//  Created by dahuan on 14/11/19.
//  Copyright (c) 2014年 DongShenNianYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BrandEntity;

@interface BrandCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic, strong) BrandEntity * brand;

@end
