//
//  ViewController.m
//  SingleSelectionView
//
//  Created by Hunter on 3/14/13.
//  Copyright (c) 2013 Js.Luo. All rights reserved.
//

#import "ViewController.h"
#import "SingleSelectionView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    SingleSelectionView *view = [[SingleSelectionView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:view];
    [view release];
    
    [view addTarget:self action:@selector(singleSelectionClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)singleSelectionClicked:(UIButton *)button
{
    if (button.selected) {
        NSLog(@"Yes");
    }else{
        NSLog(@"No");
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
