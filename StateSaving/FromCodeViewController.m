//
//  FromCodeViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/02.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "FromCodeViewController.h"

@interface FromCodeViewController ()

@end

@implementation FromCodeViewController

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super decodeRestorableStateWithCoder:coder];
}

+ (UIViewController*)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder {
	FromCodeViewController *con = [[FromCodeViewController alloc] init];
	return con;
}

- (IBAction)didPushCloseButton:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	self.restorationClass = [self class];
	self.restorationIdentifier = @"FromCodeViewController";
	
	// setup view controller
	UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
	[button setTitle:@"Close" forState:UIControlStateNormal];
	[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[self.view addSubview:button];
	[button addTarget:self action:@selector(didPushCloseButton:) forControlEvents:UIControlEventTouchUpInside];
	self.view.backgroundColor = [UIColor whiteColor];
}

@end
