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
- (double)performOperation:(NSString *)operation;
- (void)clearBrain;

@end
