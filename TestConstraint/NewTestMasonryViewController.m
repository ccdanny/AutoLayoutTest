//
//  NewTestMasonryViewController.m
//  TestConstraint
//
//  Created by Hao.Zhang on 15/7/2.
//  Copyright (c) 2015年 Nothing. All rights reserved.
//

#import "NewTestMasonryViewController.h"
#import "Masonry.h"

@interface NewTestMasonryViewController ()

@end

@implementation NewTestMasonryViewController


- (void)loadView{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor greenColor];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imageView];
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.mas_centerY);
        make.leading.equalTo(self.view.mas_leadingMargin);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    
    UILabel *nameLabel = [[UILabel alloc]init];
    nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.text = @"这个是名字";
    nameLabel.textAlignment = NSTextAlignmentLeft;
    nameLabel.textColor = [UIColor blackColor];
    [self.view addSubview:nameLabel];
    
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageView.mas_right).with.offset(8);
        make.trailing.equalTo(self.view.mas_trailingMargin);
        make.height.equalTo(@21);
        make.top.equalTo(imageView.mas_top);
    }];
    
    UILabel *swiftLabel = [[UILabel alloc]init];
    swiftLabel.translatesAutoresizingMaskIntoConstraints = NO;
    swiftLabel.backgroundColor = [UIColor clearColor];
    swiftLabel.text = @"Swift is a new programming language for iOS, OS X, and watchOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility. Swift adopts safe programming patterns and adds modern features to make programming easier, more flexible, and more fun. Swift’s clean slate, backed by the mature and much-loved Cocoa and Cocoa Touch frameworks, is an opportunity to reimagine how software development works.";
    swiftLabel.textAlignment = NSTextAlignmentLeft;
    swiftLabel.numberOfLines = 0;
    swiftLabel.font = [UIFont systemFontOfSize:11];
    swiftLabel.textColor = [UIColor blackColor];
    [self.view addSubview:swiftLabel];
    
    [swiftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(nameLabel.mas_leading);
        make.trailing.equalTo(nameLabel.mas_trailing);
        make.bottom.equalTo(imageView.mas_bottom);
        make.top.equalTo(nameLabel.mas_bottomMargin);
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     [self.view updateConstraints];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
