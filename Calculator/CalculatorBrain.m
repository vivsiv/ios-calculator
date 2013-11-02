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
    if([operation isEqual:@"clear"]){
        operand = 0;
        waitingOperand = 0;
    }
    if([operation isEqual:@"sqrt"]){
        operand = sqrt(operand);
        waitingOperand = 0;
    }
    else if ([operation isEqual:@"sin"]){
        operand = sin(operand);
        waitingOperand = 0;
    }
    else if ([operation isEqual:@"cos"]){
        operand = cos(operand);
        waitingOperand = 0;
    }
    else if ([operation isEqual:@"pi"]){
        operand = M_PI * operand;
        waitingOperand = 0;
    }
    else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}

@end
