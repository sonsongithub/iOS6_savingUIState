//
//  FromXibViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/02.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "FromXibViewController.h"

#import "RestorationViewController.h"

@interface FromXibViewController ()

@end

@implementation FromXibViewController

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super decodeRestorableStateWithCoder:coder];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	self.restorationClass = [RestorationViewController class];
	self.restorationIdentifier = @"FromXibViewController";
}

- (IBAction)close:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibNameOrNil];
	return self;
}

@end
