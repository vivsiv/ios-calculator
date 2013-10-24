//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Vivek Sivakumar on 8/7/13.
//  Copyright (c) 2013 Vivek Sivakumar. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

@synthesize operand;

/*
Implementing getter and setter manually
- (double)operand {
    return operand;
}

- (void)setOperand:(double)anOperand {
    operand = anOperand;
}
*/

- (void)performWaitingOperation {
    if ([@"+" isEqual:waitingOperation]){
        operand += waitingOperand;
    }
    else if ([@"-" isEqual:waitingOperation]){
        operand = waitingOperand - operand;
    }
    else if ([@"*" isEqual:waitingOperation]){
        operand *= waitingOperand;
    }
    else if ([@"/" isEqual:waitingOperation]) {
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
    
}

- (double)performOperation:(NSString *)operation {
    if([operation isEqual:@"sqrt"]){
        operand = sqrt(operand);
    }
    else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}

@end
