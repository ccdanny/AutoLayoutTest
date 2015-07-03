//
//  TestPureLayoutViewController.m
//  TestConstraint
//
//  Created by Hao.Zhang on 15/7/3.
//  Copyright (c) 2015年 Nothing. All rights reserved.
//

#import "TestPureLayoutViewController.h"
#import "PureLayout.h"

@interface TestPureLayoutViewController ()

@end

@implementation TestPureLayoutViewController


- (void)loadView{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initForAutoLayout];
    imageView.backgroundColor = [UIColor greenColor];
//    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imageView];
    
    [imageView autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.view];
    [imageView autoPinEdgeToSuperviewMargin:ALEdgeLeading];
    [imageView autoSetDimensionsToSize:CGSizeMake(100, 100)];
    
    UILabel *nameLabel = [[UILabel alloc]initForAutoLayout];
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.text = @"这个是名字";
    nameLabel.textAlignment = NSTextAlignmentLeft;
    nameLabel.textColor = [UIColor blackColor];
    [self.view addSubview:nameLabel];
    
    [nameLabel autoPinEdge:ALEdgeLeading toEdge:ALEdgeTrailing ofView:imageView withOffset:8];
    [nameLabel autoPinEdgeToSuperviewMargin:ALEdgeTrailing];
    [nameLabel autoSetDimension:ALDimensionHeight toSize:21];
    [nameLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:imageView];

    UILabel *swiftLabel = [[UILabel alloc]initForAutoLayout];
    swiftLabel.translatesAutoresizingMaskIntoConstraints = NO;
    swiftLabel.backgroundColor = [UIColor clearColor];
    swiftLabel.text = @"Swift is a new programming language for iOS, OS X, and watchOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility. Swift adopts safe programming patterns and adds modern features to make programming easier, more flexible, and more fun. Swift’s clean slate, backed by the mature and much-loved Cocoa and Cocoa Touch frameworks, is an opportunity to reimagine how software development works.";
    swiftLabel.textAlignment = NSTextAlignmentLeft;
    swiftLabel.numberOfLines = 0;
    swiftLabel.font = [UIFont systemFontOfSize:11];
    swiftLabel.textColor = [UIColor blackColor];
    [self.view addSubview:swiftLabel];
    
    [swiftLabel autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:nameLabel];
    [swiftLabel autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:nameLabel];
    [swiftLabel autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:imageView];
    [swiftLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:nameLabel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
