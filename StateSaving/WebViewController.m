//
//  WebViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/03.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super decodeRestorableStateWithCoder:coder];
	
	DNSLog(@"%@", self.webView.request);
	if (self.webView.canGoBack) {
		NSLog(@"can go back");
	}
}


- (void)viewDidLoad {
	DNSLogMethod
	[super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	DNSLog(@"%@", self.webView.request);
	if (self.webView.canGoBack) {
		NSLog(@"can go back");
	}
}

@end
