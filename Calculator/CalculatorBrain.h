//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Vivek Sivakumar on 8/7/13.
//  Copyright (c) 2013 Vivek Sivakumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

- (void)setOperand:(double)anOperand;
- (double)performOperation:(NSString *)operation;

@end
