//
//  Quadratic_Equation_SolverAppDelegate.h
//  Quadratic Equation Solver
//
//  Created by Martin Goffan on 8/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Quadratic_Equation_SolverViewController;

@interface Quadratic_Equation_SolverAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Quadratic_Equation_SolverViewController *viewController;

@end
