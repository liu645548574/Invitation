//
//  BrandCell.m
//  Invitation
//
//  Created by dahuan on 14/11/19.
//  Copyright (c) 2014年 DongShenNianYi. All rights reserved.
//

#import "BrandCell.h"
#import "BrandEntity.h"

@interface BrandCell ()

@property (weak, nonatomic) IBOutlet UILabel *brandNameLabel;


@end

@implementation BrandCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString * ID = @"BrandCell";
    return [tableView dequeueReusableCellWithIdentifier:ID];;
}

- (void)setBrand:(BrandEntity *)brand
{
    _brand = brand;
    self.brandNameLabel.text = brand.brandName;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
