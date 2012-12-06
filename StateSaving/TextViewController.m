//
//  TextViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/03.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	
	[coder encodeObject:self.textView.text forKey:@"text"];
	
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	
	
	self.textView.text = [coder decodeObjectForKey:@"text"];
	
	[super decodeRestorableStateWithCoder:coder];
}

- (void)viewDidAppear:(BOOL)animated {
	DNSLogMethod
	[super viewDidAppear:animated];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	DNSLogMethod
	self = [super initWithCoder:aDecoder];
	return self;
}

@end
