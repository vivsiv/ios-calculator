//
//  ViewController.h
//  Calculator
//
//  Created by Vivek Sivakumar on 8/7/13.
//  Copyright (c) 2013 Vivek Sivakumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {
    IBOutlet UILabel *display;
    IBOutlet UILabel *allDisplay;
    CalculatorBrain *brain;
    BOOL userIsInTheMiddleOfTypingANumber;
    BOOL decimalPressed;
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)decimalPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;
- (IBAction)clearPressed:(UIButton *)sender;

@end
