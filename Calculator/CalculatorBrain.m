//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Vivek Sivakumar on 8/7/13.
//  Copyright (c) 2013 Vivek Sivakumar. All rights reserved.
//

#import "CalculatorBrain.h"
/*
@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *programStack;
@end
*/

@implementation CalculatorBrain

@synthesize operand;

- (void)clearBrain {
    //[[self programStack] removeAllObjects];
    waitingOperand = 0;
    operand = 0;
}

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

/*
@synthesize programStack = _programStack;

- (NSMutableArray *)programStack{
    if (_programStack == nil) _programStack = [[NSMutableArray alloc] init];
    return _programStack;
}

- (id)program {
    return [self.programStack copy];
}

+ (NSString *)descriptionOfProgram:(id)program {
   return @"TODO";
}

- (void)pushOperand:(double)operand {
    [self.programStack insertObject:[NSNumber numberWithDouble:operand]
                            atIndex:0];
}

- (double)performOperation:(NSString *)operation {
    [self.programStack insertObject:operation
                            atIndex:0];
    return [[self class] runProgram:self.program];
}

+ (double)popOperandOffProgramStack:(NSMutableArray *)stack {
    double result = 0;
    
    id topOfStack = [stack lastObject];
    if (topOfStack) [stack removeLastObject];
    
    if ([topOfStack isKindOfClass:[NSNumber class]]){
        result = [topOfStack doubleValue];
    }
    else if ([topOfStack isKindOfClass:[NSString class]]) {
        if ([@"+" isEqualToString:topOfStack]){
          result = [self popOperandOffProgramStack:stack] +
            [self popOperandOffProgramStack:stack];
        }
        else if ([@"*" isEqualToString:topOfStack]){
           result = [self popOperandOffProgramStack:stack] *
            [self popOperandOffProgramStack:stack];
        }
        else if ([@"-" isEqualToString:topOfStack]){
            double subtrahend = [self popOperandOffProgramStack:stack];
            result = [self popOperandOffProgramStack:stack] - subtrahend;
        }
        else if ([@"/" isEqualToString:topOfStack]){
            double divisor = [self popOperandOffProgramStack:stack];
            if (divisor) result = [self popOperandOffProgramStack:stack] / divisor;
        }
    } 
    return result;
}

+ (double)runProgram:(id)program {
    NSMutableArray *stack;
    if ([program isKindOfClass:[NSArray class]]){
        stack = [program mutableCopy];
    }
    return [self popOperandOffProgramStack:stack];
}
*/

@end
