//
//  ConstraintViewController.m
//  TestConstraint
//
//  Created by Hao.Zhang on 15/7/3.
//  Copyright (c) 2015年 Nothing. All rights reserved.
//

#import "ConstraintViewController.h"

@interface ConstraintViewController ()

@end

@implementation ConstraintViewController

- (void)loadView{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor greenColor];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imageView];
    
    NSLayoutConstraint *centerConstraint = [NSLayoutConstraint constraintWithItem:imageView
                                                                        attribute:NSLayoutAttributeCenterY
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeCenterY
                                                                       multiplier:1.0
                                                                         constant:0];
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:imageView
                                                                        attribute:NSLayoutAttributeLeading
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeLeadingMargin
                                                                       multiplier:1.0
                                                                         constant:0];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:imageView
                                                       attribute:NSLayoutAttributeHeight
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:nil
                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                      multiplier:1.0
                                                        constant:100.0];
    
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:imageView
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:nil
                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                      multiplier:1.0
                                                        constant:100.0];
    
    [self.view addConstraints:@[centerConstraint,leftConstraint,heightConstraint,widthConstraint]];
    
    UILabel *nameLabel = [[UILabel alloc]init];
    nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.text = @"这个是名字";
    nameLabel.textAlignment = NSTextAlignmentLeft;
    nameLabel.textColor = [UIColor blackColor];
    [self.view addSubview:nameLabel];
    
    [self.view addConstraints:@[
            [NSLayoutConstraint constraintWithItem:nameLabel
                                         attribute:NSLayoutAttributeLeading
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:imageView
                                         attribute:NSLayoutAttributeTrailing
                                        multiplier:1.0
                                          constant:8],
            [NSLayoutConstraint constraintWithItem:nameLabel
                                         attribute:NSLayoutAttributeTrailing
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:self.view
                                         attribute:NSLayoutAttributeTrailingMargin
                                        multiplier:1.0
                                          constant:0],
            [NSLayoutConstraint constraintWithItem:nameLabel
                                         attribute:NSLayoutAttributeHeight
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:nil
                                         attribute:NSLayoutAttributeNotAnAttribute
                                        multiplier:1.0
                                          constant:21],
            [NSLayoutConstraint constraintWithItem:nameLabel
                                         attribute:NSLayoutAttributeTop
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:imageView
                                         attribute:NSLayoutAttributeTop
                                        multiplier:1.0
                                          constant:0]
                                ]];
    
    UILabel *swiftLabel = [[UILabel alloc]init];
    swiftLabel.translatesAutoresizingMaskIntoConstraints = NO;
    swiftLabel.backgroundColor = [UIColor clearColor];
    swiftLabel.text = @"Swift is a new programming language for iOS, OS X, and watchOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility. Swift adopts safe programming patterns and adds modern features to make programming easier, more flexible, and more fun. Swift’s clean slate, backed by the mature and much-loved Cocoa and Cocoa Touch frameworks, is an opportunity to reimagine how software development works.";
    swiftLabel.textAlignment = NSTextAlignmentLeft;
    swiftLabel.numberOfLines = 0;
    swiftLabel.font = [UIFont systemFontOfSize:11];
    swiftLabel.textColor = [UIColor blackColor];
    [self.view addSubview:swiftLabel];
    
    [self.view addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:swiftLabel
                                                             attribute:NSLayoutAttributeLeading
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nameLabel
                                                             attribute:NSLayoutAttributeLeading
                                                            multiplier:1.0
                                                              constant:0],
                                [NSLayoutConstraint constraintWithItem:swiftLabel
                                                             attribute:NSLayoutAttributeTrailing
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nameLabel
                                                             attribute:NSLayoutAttributeTrailing
                                                            multiplier:1.0
                                                              constant:0],
                                [NSLayoutConstraint constraintWithItem:swiftLabel
                                                             attribute:NSLayoutAttributeBottom
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:imageView
                                                             attribute:NSLayoutAttributeBottom
                                                            multiplier:1.0
                                                              constant:0],
                                [NSLayoutConstraint constraintWithItem:swiftLabel
                                                             attribute:NSLayoutAttributeTop
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nameLabel
                                                             attribute:NSLayoutAttributeBottom
                                                            multiplier:1.0
                                                              constant:0]
                                ]];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
