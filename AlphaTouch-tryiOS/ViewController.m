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
    self.view.backgroundColor = [UIColor colorWithRed:0.5 green:.7 blue:.4 alpha:.5];
	// Do any additional setup after loading the view, typically from a nib.
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
