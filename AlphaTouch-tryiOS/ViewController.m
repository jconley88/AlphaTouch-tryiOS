//
//  AlphaTouch-tryiOS
//  ViewController.m
//
//  Created by Jonathan Conley on 4/11/13.
//  Copyright (c) 2013 Jonathan Conley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *greenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    greenButton.frame = CGRectMake(120, 200, 100, 44);
    [greenButton setTitle:@"Make green!" forState:UIControlStateNormal];
    [greenButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:greenButton];
    
    UIButton *blueButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    blueButton.frame = CGRectMake(120, 100, 100, 44);
    [blueButton setTitle:@"Make blue!" forState:UIControlStateNormal];
    [blueButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueButton];
}

- (void) changeBackgroundColor:(UIButton *) sender
{
    if ([sender.titleLabel.text isEqualToString:@"Make green!"]){
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (void) loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
