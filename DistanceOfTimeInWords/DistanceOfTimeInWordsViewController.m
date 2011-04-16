//
//  DistanceOfTimeInWordsViewController.m
//  DistanceOfTimeInWords
//
//  Created by Rob Warner on 4/12/11.
//  Copyright 2011 Grailbox. All rights reserved.
//

#import "DistanceOfTimeInWordsViewController.h"
#import "NSDate+Formatting.h"

@implementation DistanceOfTimeInWordsViewController
@synthesize datePicker;
@synthesize formattedDate;

- (void)dealloc {
  [datePicker release];
  [formattedDate release];
  [super dealloc];
}

- (void)didReceiveMemoryWarning {
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  
  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 }
 */

- (void)viewDidUnload {
  self.datePicker = nil;
  self.formattedDate = nil;
  [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  // Return YES for supported orientations
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)dateChanged {
  NSDate *date = datePicker.date;
  formattedDate.text = [date distanceOfTimeInWords];
}

@end
