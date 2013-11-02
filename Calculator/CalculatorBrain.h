//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Vivek Sivakumar on 8/7/13.
//  Copyright (c) 2013 Vivek Sivakumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
@private
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

@property double operand;
/*
@property (nonatomic, readonly) id program;
+ (double)runProgram:(id)program;
+ (double)runProgram:(id)program
 usingVariableValues:(NSDictionary *)variableValues; //use 0 for val if no val
+ (NSSet *)variablesUsedInProgram:(id)program; //nil if no variables
+ (NSString *)descriptionsOfProgram:(id)program;
- (void)pushOperand:(double)operand;
*/
- (double)performOperation:(NSString *)operation;
- (void)clearBrain;

@end
