//
//  CalculatorOperation.h
//  Calculator
//
//  Created by Suman Roy on 20/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    
    NONE,
    ADD,
    SUBTRACT,
    MULTIPLY,
    DIVIDE
    
}Operation;

@interface CalculatorOperation : NSObject

@property (readonly) NSMutableString *inputString;
@property (readonly) NSMutableString *outputString;

-(void)addDigit : (int) digit;
-(void)addOperator: (Operation) operator;
-(void) clearOperations;

@end
