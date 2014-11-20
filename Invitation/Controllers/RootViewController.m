//
//  RootViewController.m
//  Invitation
//
//  Created by dahuan on 14/11/19.
//  Copyright (c) 2014年 DongShenNianYi. All rights reserved.
//

#import "RootViewController.h"
#import "BrandCell.h"
#import "BrandEntity.h"

@interface RootViewController ()

@property (nonatomic, strong) NSMutableArray * listArray;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RootViewController

- (NSMutableArray *)listArray
{
    if (!_listArray) {
        _listArray = [NSMutableArray array];
    }
    return _listArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    [self buildLayout];
}

- (void)loadData
{
    self.listArray = [NSMutableArray arrayWithArray:@[@"1",@"2",@"3",@"4",@"5",@"6"]] ;


    
    [self.listArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        
        BrandEntity * entity = [[BrandEntity alloc] init];
        entity.brandName = (NSString *)obj;
        [self.listArray replaceObjectAtIndex:idx withObject:entity];
        
    }];
    
}

- (void)buildLayout
{
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.listArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BrandCell * cell = [BrandCell cellWithTableView:tableView];
    cell.brand = self.listArray[indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
