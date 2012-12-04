//
//  PresentingViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/02.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "PresentingViewController.h"

@interface PresentingViewController ()

@end

@implementation PresentingViewController

- (IBAction)open:(id)sender {
	id vc = [self.storyboard instantiateViewControllerWithIdentifier:@"PresentedViewController"];
	[self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)dismissModal:(UIStoryboardSegue*)segue {
	DNSLogMethod
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super decodeRestorableStateWithCoder:coder];
}

- (void)awakeFromNib {
	DNSLogMethod
	[super awakeFromNib];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	DNSLogMethod
	self = [super initWithCoder:aDecoder];
	return self;
}

- (void)viewDidLoad {
	DNSLogMethod
	[super viewDidLoad];
}

@end
