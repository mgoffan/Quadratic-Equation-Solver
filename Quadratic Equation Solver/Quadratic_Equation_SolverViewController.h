//
//  Quadratic_Equation_SolverViewController.h
//  Quadratic Equation Solver
//
//  Created by Martin Goffan on 8/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quadratic_Equation_SolverViewController : UIViewController {
    UITextField *aText;
    UITextField *bText;
    UITextField *cText;
    UILabel *l1;
    UILabel *l2;
}

@property (nonatomic, retain) IBOutlet UITextField *aText;
@property (nonatomic, retain) IBOutlet UITextField *bText;
@property (nonatomic, retain) IBOutlet UITextField *cText;
@property (nonatomic, retain) IBOutlet UILabel *l1;
@property (nonatomic, retain) IBOutlet UILabel *l2;

- (IBAction)calc:(id)sender;

@end
