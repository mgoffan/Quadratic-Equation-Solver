//
//  Quadratic_Equation_SolverViewController.m
//  Quadratic Equation Solver
//
//  Created by Martin Goffan on 8/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Quadratic_Equation_SolverViewController.h"

@implementation Quadratic_Equation_SolverViewController

@synthesize aText;
@synthesize bText;
@synthesize cText;
@synthesize l1;
@synthesize l2;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setAText:nil];
    [self setBText:nil];
    [self setCText:nil];
    [self setL1:nil];
    [self setL2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)calc:(id)sender {
    double a, b, c;
    a = [aText.text doubleValue];
    b = [bText.text doubleValue];
    c = [cText.text doubleValue];
    
    double mb = b * -1;
    double bsq = b * b;
    double ac4 = 4 * a * c;
    double a2 = 2 * a;
    
    double f = sqrt(bsq - ac4);
    
    l1.text = [NSString stringWithFormat:@"%d", (mb + f) / a2 ];
    l2.text = [NSString stringWithFormat:@"%d", (mb - f) / a2 ];
}
@end
