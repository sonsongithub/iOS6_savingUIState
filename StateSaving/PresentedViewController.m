//
//  PresentedViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/02.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "PresentedViewController.h"

@interface PresentedViewController ()

@end

@implementation PresentedViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
	DNSLogMethod
	self = [super initWithCoder:aDecoder];
	return self;
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[coder encodeBool:self.crashFlagSwitch.on forKey:@"switch"];
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	if ([coder decodeBoolForKey:@"switch"]) {
		// crash code
		NSMutableArray *array = [NSMutableArray array];
		[array addObject:nil];
	}
	[super decodeRestorableStateWithCoder:coder];
}

- (void)viewDidLoad {
	[super viewDidLoad];
}

@end
