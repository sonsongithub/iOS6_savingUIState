//
//  DetailViewController.m
//  StateSaving
//
//  Created by sonson on 2012/12/03.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "DetailViewController.h"

#import "AppDelegate.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - 

-(void)encodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
    [coder encodeObject:self.detailItem.objectID.URIRepresentation forKey:@"URIKey"];
    [super encodeRestorableStateWithCoder:coder];
}

-(void)decodeRestorableStateWithCoder:(NSCoder *)coder {
	DNSLogMethod
    NSURL *itemObjectURL = [coder decodeObjectForKey:@"URIKey"];
    NSManagedObjectID *itemObjectID = [((AppDelegate*)[UIApplication sharedApplication].delegate).persistentStoreCoordinator managedObjectIDForURIRepresentation:itemObjectURL];
    
	if (itemObjectID)
		self.detailItem = [((AppDelegate*)[UIApplication sharedApplication].delegate).managedObjectContext objectWithID:itemObjectID];
	
    [super decodeRestorableStateWithCoder:coder];
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
	if (self.detailItem) {
	    self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
	}
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self configureView];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	DNSLogMethod
	self = [super initWithCoder:aDecoder];
	return self;
}

@end
