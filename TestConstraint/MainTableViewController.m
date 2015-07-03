//
//  MainTableViewController.m
//  TestConstraint
//
//  Created by Hao.Zhang on 15/7/3.
//  Copyright (c) 2015年 Nothing. All rights reserved.
//

#import "MainTableViewController.h"
#import "XIBViewController.h"
#import "NewTestMasonryViewController.h"
#import "TestPureLayoutViewController.h"
#import "ConstraintViewController.h"
#import "VitrualFormatViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"identifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"XIB";
            break;
        case 1:
            cell.textLabel.text = @"源生代码";
            break;
        case 2:
            cell.textLabel.text = @"Masonry";
            break;
        case 3:
            cell.textLabel.text = @"PureLayout";
            break;
        case 4:
            cell.textLabel.text = @"Visual Format Language";
            break;
        default:
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:nil animated:YES];
    
    switch (indexPath.row ) {
        case 0:
        {
            XIBViewController *vc = [[XIBViewController alloc]initWithNibName:@"XIBViewController" bundle:nil];
            
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            ConstraintViewController * test = [[ConstraintViewController alloc]init];
            [self.navigationController pushViewController:test animated:YES];
        }
            break;
        case 2:{
            NewTestMasonryViewController * test = [[NewTestMasonryViewController alloc]init];
            [self.navigationController pushViewController:test animated:YES];
        }
            break;
        case 3:{
            TestPureLayoutViewController * test = [[TestPureLayoutViewController alloc]init];
            [self.navigationController pushViewController:test animated:YES];
        }
            break;
        case 4:{
            VitrualFormatViewController * test = [[VitrualFormatViewController alloc]init];
            [self.navigationController pushViewController:test animated:YES];
        }
            break;
        default:
            break;
    }
}

@end
