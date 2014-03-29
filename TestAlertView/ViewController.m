//
//  ViewController.m
//  TestAlertView
//
//  Created by Yu Sugawara on 2014/03/29.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIAlertView *alertView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(applicationDidEnterBackgroundNotification:)
                                                 name:UIApplicationDidEnterBackgroundNotification
                                               object:nil];
}

- (void)applicationDidEnterBackgroundNotification:(NSNotification*)notification
{
    NSLog(@"%s", __func__);
    [self.alertView dismissWithClickedButtonIndex:0 animated:NO];
}

- (IBAction)buttonDidPush:(id)sender
{
    self.alertView = [[UIAlertView alloc] initWithTitle:@"title" message:@"msg" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [self.alertView show];
}

@end
