//
//  ViewController.m
//  AnimationDemo
//
//  Created by Kingson on 6/13/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - 100, self.view.bounds.size.height / 2 - 100, 200, 200)];
    view1.backgroundColor = [UIColor darkGrayColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(self.view.bounds.size.width / 2 - 40, 20, 80, 20);
    [button setTitle:@"Update" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showViewAnimate:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    [self.view addSubview:view1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showViewAnimate:(id)sender
{
//    [UIView ani]
}

@end
