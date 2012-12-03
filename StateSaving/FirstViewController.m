//
//  FirstViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/02.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "FirstViewController.h"

#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

#pragma mark - State saving and restoration

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
//	[coder encodeCGPoint:self.tableView.contentOffset forKey:@"FirstViewControllerContentOffset"];
	[super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
//	CGPoint contentOffset = [coder decodeCGPointForKey:@"FirstViewControllerContentOffset"];
//	self.tableView.contentOffset = contentOffset;
	[super decodeRestorableStateWithCoder:coder];
}

#pragma mark - UIViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"pushSecondViewController"]) {
		SecondViewController *con = (SecondViewController*)segue.destinationViewController;
		con.selectedAtFirstViewController = [self.tableView indexPathForSelectedRow].row;
	}
}

#pragma mark - Table view data source for restore and saving

- (NSString*)modelIdentifierForElementAtIndexPath:(NSIndexPath *)idx inView:(UIView *)view {
	DNSLogMethod
	if (self.tableView == view) {
		return @"Default";
	}
	return nil;
}

- (NSIndexPath*)indexPathForElementWithModelIdentifier:(NSString *)identifier inView:(UIView *)view {
	DNSLogMethod
	if (self.tableView == view) {
		
	}
	return nil;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
	cell.textLabel.text = [NSString stringWithFormat:@"%d", indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
