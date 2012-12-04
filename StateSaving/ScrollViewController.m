//
//  ScrollViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/03.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

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
	
	CGRect r = self.view.frame;
	r.origin.y = 0;
	UIView *content1 = [[UIView alloc] initWithFrame:r];
	content1.backgroundColor = [UIColor redColor];
	
	r.origin.x = self.view.frame.size.width;
	UIView *content2 = [[UIView alloc] initWithFrame:r];
	content2.backgroundColor = [UIColor blueColor];
	
	[self.scrollView addSubview:content1];
	[self.scrollView addSubview:content2];
	[self.scrollView setContentSize:CGSizeMake(r.size.width * 2, r.size.height)];
}

@end
