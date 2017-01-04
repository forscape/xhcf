//
//  ProductNewsViewController.m
//  xhcf
//
//  Created by 刘学 on 17/1/3.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import "ProductNewsViewController.h"
#import "ProductCell.h"
#import "DetailsViewController.h"

@interface ProductNewsViewController ()

@end

@implementation ProductNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /** 导航栏的最大Y值 */
    CGFloat const XMGNavMaxY = 64;
    
    /** 标题栏的高度 */
    CGFloat const XMGTitlesViewH = 60;
    
    self.tableView.backgroundColor =  kColordcdf;
    self.tableView.contentInset = UIEdgeInsetsMake(XMGNavMaxY + XMGTitlesViewH, 0, 0, 0);
    self.tableView.scrollIndicatorInsets = self.tableView.contentInset;
    [self.tableView registerClass:[ProductCell class] forCellReuseIdentifier:kCellIdentifier_productCell];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier_productCell forIndexPath:indexPath];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailsViewController *detailVC = [[DetailsViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:NO];
}


@end
