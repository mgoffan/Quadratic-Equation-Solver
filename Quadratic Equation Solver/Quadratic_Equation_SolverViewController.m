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
    long double a, b, c;
    a = aText.text.doubleValue;
    b = bText.text.doubleValue;
    c = cText.text.doubleValue;
    
    NSLog(@"1 %Lf %Lf %Lf",a,b,c);
    
    long double mb = b * -1;
    long double b2 = b * b;
    long double ac4 = 4 * a * c;
    long double a2 = 2 * a;
    
    NSLog(@"2 %Lf %Lf %Lf %Lf",mb, b2, ac4, a2);
    
    if (b2 == ac4) {l1.text = [NSString stringWithFormat:@"%Lf", mb / a2]; l2.text = l1.text;}
    else if (b2 < ac4) l2.text = l1.text = @"NO SOLUTION";
    else {
        long double f = sqrt(b2 - ac4);
        
        NSLog(@"3 %Lf",f);
        
        long double mbf = mb + f;
        long double mbf2 = mb -f;
        
        NSLog(@"4 %Lf %Lf",mbf, mbf2);
        
        l1.text = [NSString stringWithFormat:@"%Lf", mbf / a2 ];
        l2.text = [NSString stringWithFormat:@"%Lf", mbf2 / a2 ];
    }
}
@end
