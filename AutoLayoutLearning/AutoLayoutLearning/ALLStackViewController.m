//
//  ALLStackViewController.m
//  AutoLayoutLearning
//
//  Created by txooo on 2019/3/21.
//  Copyright © 2019 txooo. All rights reserved.
//

#import "ALLStackViewController.h"
#import "ALLStackViewCell.h"

@interface ALLStackViewController ()
{
    NSArray *_array;
}
@end

@implementation ALLStackViewController

static NSString *cellID = @"cellID";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"UIStackView";
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 130;
    self.tableView.separatorInset = UIEdgeInsetsZero;
    
    [self.tableView registerClass:[ALLStackViewCell class] forCellReuseIdentifier:cellID];
    
    _array = @[ @"更新内容:\n无",
                @"更新内容:\n优化用户体验",
                @"更新内容:\n1.优化用户体验\n2.修复一些崩溃",
                @"更新内容:\n1.优化用户体验\n2.修复一些崩溃\n3.优化用户体验\n4.修复一些崩溃",
                @"更新内容:\n1.优化用户体验\n2.修复一些崩溃\n3.优化用户体验\n4.修复一些崩溃\n5.优化用户体验\n6.修复一些崩溃",
                @"更新内容:\n1.优化用户体验\n2.修复一些崩溃\n3.优化用户体验\n4.修复一些崩溃\n5.优化用户体验\n6.修复一些崩溃\n7.优化用户体验\n8.修复一些崩溃",
                @"更新内容:\n1.优化用户体验",
                @"更新内容:\n1.优化用户体验\n2.修复一些崩溃",
                @"更新内容:\n无",
                @"更新内容:\n1.修复一些崩溃, 这个崩溃比较隐蔽, 一般人发现不了, 好好测测, 加油!"
                ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ALLStackViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.message = _array[indexPath.row];
    return cell;
}

@end
