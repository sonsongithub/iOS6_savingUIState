//
//  RootTabBarController.m
//  StateSaving
//
//  Created by sonson on 2012/12/02.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "RootTabBarController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (id)initWithCoder:(NSCoder *)aDecoder {
	DNSLogMethod
	self = [super initWithCoder:aDecoder];
	return self;
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super decodeRestorableStateWithCoder:coder];
}

@end
