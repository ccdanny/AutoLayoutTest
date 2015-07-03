//
//  VitrualFormatViewController.m
//  TestConstraint
//
//  Created by Hao.Zhang on 15/7/3.
//  Copyright (c) 2015年 Nothing. All rights reserved.
//

#import "VitrualFormatViewController.h"

@interface VitrualFormatViewController ()

@end

@implementation VitrualFormatViewController

- (void)loadView{
    [super loadView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor greenColor];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imageView];
    
    UILabel *nameLabel = [[UILabel alloc]init];
    nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.text = @"这个是名字";
    nameLabel.textAlignment = NSTextAlignmentLeft;
    nameLabel.textColor = [UIColor blackColor];
    [self.view addSubview:nameLabel];
    
    UILabel *swiftLabel = [[UILabel alloc]init];
    swiftLabel.translatesAutoresizingMaskIntoConstraints = NO;
    swiftLabel.backgroundColor = [UIColor clearColor];
    swiftLabel.text = @"Swift is a new programming language for iOS, OS X, and watchOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility. Swift adopts safe programming patterns and adds modern features to make programming easier, more flexible, and more fun. Swift’s clean slate, backed by the mature and much-loved Cocoa and Cocoa Touch frameworks, is an opportunity to reimagine how software development works.";
    swiftLabel.textAlignment = NSTextAlignmentLeft;
    swiftLabel.numberOfLines = 0;
    swiftLabel.font = [UIFont systemFontOfSize:11];
    swiftLabel.textColor = [UIColor blackColor];
    [self.view addSubview:swiftLabel];
    
    
    //center 属性不能通过Visual Format设置
   [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.f constant:0.f]];
    
    NSArray *centerConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(>=20)-[view(==100)]-(>=20)-|"
                                                                                   options: NSLayoutFormatAlignAllCenterY
                                                                                       metrics:nil                        views:@{@"view" : imageView}];
    
    NSArray *leftConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[imageView(==100)]-[nameLabel]-|"
                                                                                   options: NSLayoutFormatAlignAllTop
                                                                                   metrics:nil
                                                                                     views:NSDictionaryOfVariableBindings(nameLabel,imageView)];
    
    [self.view addConstraints:centerConstraints];
    [self.view addConstraints:leftConstraints];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:nameLabel
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:imageView
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0]
     ];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:swiftLabel
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:imageView
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0]];
    
    NSArray *nameVirticals = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[nameLabel(==21)]-[swiftLabel]"
                                                                     options: NSLayoutFormatAlignAllLeft
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(nameLabel,swiftLabel)];
    
    [self.view addConstraints:nameVirticals];

    NSArray *swiftHerizons = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[swiftLabel(==nameLabel)]"
                                                                     options: NSLayoutFormatAlignAllTop
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(nameLabel,swiftLabel)];
    [self.view addConstraints:swiftHerizons];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:swiftLabel
                                                             attribute:NSLayoutAttributeLeading
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nameLabel
                                                             attribute:NSLayoutAttributeLeading
                                                            multiplier:1.0
                                                              constant:0]
                                
                                ];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
