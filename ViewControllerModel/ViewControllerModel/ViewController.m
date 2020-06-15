//
//  ViewController.m
//  ViewControllerModel
//
//  Created by Kingson on 7/8/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()
- (void)touch:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blueColor];
    UIButton *toViewButton = [UIButton buttonWithType:UIButtonTypeCustom];
    toViewButton.frame = CGRectMake(self.view.bounds.size.width / 2 - 100 , self.view.bounds.size.height / 2 - 50, 200, 100);
    [toViewButton setTitle:@"GO" forState:UIControlStateNormal];
    [toViewButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:toViewButton];
    [toViewButton addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touch:(id)sender {
    
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    
    
    [self presentViewController:vc2 animated:YES completion:nil];
    NSLog(@"presentedViewController:%@", [self presentedViewController]);
    NSLog(@"presentingViewController:%@", [self presentingViewController]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
