//
//  ViewController2.m
//  ViewControllerModel
//
//  Created by Kingson on 7/8/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController.h"

@interface ViewController2()
- (void)touch:(id)sender;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *fromViewButton = [UIButton buttonWithType:UIButtonTypeCustom];
    fromViewButton.frame = CGRectMake(self.view.bounds.size.width / 2 - 100 , self.view.bounds.size.height / 2 - 50, 200, 100);
    [fromViewButton setTitle:@"From" forState:UIControlStateNormal];
    [fromViewButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:fromViewButton];
    [fromViewButton addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touch:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"presentedViewController:%@", [self presentedViewController]);
    NSLog(@"presentingViewController:%@", [self presentingViewController]);
}

@end
