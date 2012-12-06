//
//  MyView.m
//  StateSaving
//
//  Created by sonson on 2012/12/05.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super decodeRestorableStateWithCoder:coder];
}

@end
