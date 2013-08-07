//
//  ViewController.m
//  Calculator
//
//  Created by Vivek Sivakumar on 8/7/13.
//  Copyright (c) 2013 Vivek Sivakumar. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (CalculatorBrain *)brain{
    if (!brain){
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}
- (IBAction)digitPressed:(UIButton *)sender{
    NSString *digit = [[sender titleLabel] text];
    if (userIsInTheMiddleOfTypingANumber) {
        [display setText:[[display text] stringByAppendingString:digit]];
    }
    else {
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
}

- (IBAction)operationPressed:(UIButton *)sender{
    if ([[[sender titleLabel] text] isEqual:@"clear"]){
        [[self brain] setOperand:0];
        [display setText:[NSString stringWithFormat:@"%i", 0]];
    }
    else {
        if (userIsInTheMiddleOfTypingANumber) {
            [[self brain] setOperand:[[display text] doubleValue]];
            userIsInTheMiddleOfTypingANumber = NO;
        }
        NSString *operation = [[sender titleLabel] text];
        double result = [[self brain] performOperation:operation];
        [display setText:[NSString stringWithFormat:@"%g", result]];
    }
}
@end
