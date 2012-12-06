//
//  RestorationViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/02.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "RestorationViewController.h"

#import "FromCodeViewController.h"
#import "FromXibViewController.h"

@interface RestorationViewController ()

@end

@implementation RestorationViewController

+ (UIViewController*)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents
														   coder:(NSCoder *)coder {
	if ([[identifierComponents lastObject] isEqualToString:@"FromXibViewController"])
		return [[FromXibViewController alloc] initWithNibName:@"FromXibViewController" bundle:nil];
	return nil;
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
	[super decodeRestorableStateWithCoder:coder];
}

- (IBAction)createModalFromCode:(id)sender {
	FromCodeViewController *con = [[FromCodeViewController alloc] init];
	[self presentViewController:con animated:YES completion:nil];
}

- (IBAction)createModalFromXib:(id)sender {
	FromXibViewController *con = [[FromXibViewController alloc] initWithNibName:@"FromXibViewController" bundle:nil];
	[self presentViewController:con animated:YES completion:nil];
}

@end
