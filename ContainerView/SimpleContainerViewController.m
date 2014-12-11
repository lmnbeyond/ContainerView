//
//  SimpleContainerViewController.m
//  ContainerView
//
//  Created by zoe on 14/12/11.
//  Copyright (c) 2014年 Polyvi Inc. All rights reserved.
//

#import "SimpleContainerViewController.h"
#import "ViewController.h"

@interface SimpleContainerViewController ()

@end

@implementation SimpleContainerViewController

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

- (IBAction)backButtonClickAction:(id)sender
{
    if ([[self.parentViewController class] isSubclassOfClass:[ViewController class]]) {
        UIAlertView *alertView =  [[UIAlertView alloc] initWithTitle:@"You're already at home" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    } else {
        [self performSegueWithIdentifier:@"unwindToHome" sender:self];
    }
}

@end
