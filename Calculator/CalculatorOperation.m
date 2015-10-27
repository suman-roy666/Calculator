//
//  CalculatorOperation.m
//  Calculator
//
//  Created by Suman Roy on 20/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "CalculatorOperation.h"

@implementation CalculatorOperation{
    
    float operand1,
    operand2;
    
    Operation currentOperation;
    
    NSArray *operatorStrings;
    
}

static int multiplier = 10;

-(id) init{
    
    operand1 = 0.0f;
    operand2 = 0.0f;
    _outputString =  [ NSMutableString stringWithString: @"0" ];
    _inputString =  [ NSMutableString stringWithString: @"0" ];
    
    operatorStrings = @[@"",
                        @" + ",
                        @" - ",
                        @"*",
                        @"/"];
    
    currentOperation = NONE;
    
    return self;
}

- (void)addDigit : (int)digit asDecimal: (BOOL)isDecimal {
    
    
    if ( currentOperation == NONE ) {
        
        operand1 = ( operand1 * multiplier ) + digit;
        
        operand1 = ( isDecimal )? ( operand1/multiplier )
                                : operand1;
        
    } else {
        
        operand2 = ( operand2 * multiplier ) + digit;
        
        operand2 = ( isDecimal )? ( operand2/multiplier )
                                : operand2;
    }
    
    
    if ( isDecimal) {
        
        if ( multiplier == 10 ) {
            
            [ _inputString appendString:@"." ];
        }
        
        [ _inputString appendString:[ NSString stringWithFormat:@"%d", digit ] ];
        
        
        multiplier = multiplier * 10;
        
    } else {
        
        if ( [self.inputString isEqualToString:@"0" ] ) {
            
            [ _inputString setString:[ NSString stringWithFormat:@"%d", digit] ];
            
        } else {
            
            [ _inputString appendString:[ NSString stringWithFormat:@"%d", digit] ];
            
        }
    }
}

- (void)addOperator: ( Operation) nextOperation{
    
    
    if  (( (nextOperation == MULTIPLY) || (nextOperation == DIVIDE ) ) && ![ self.outputString isEqualToString:@"0" ] ){
        
        [ self.inputString setString: [ NSString stringWithFormat:@"( %@ )", self.inputString ] ];
        
    }
    
    switch (currentOperation) {
            
        case ADD:
            
            operand1 = operand1 + operand2;
            
            break;
            
        case SUBTRACT:
            
            operand1 = operand1 - operand2;
            
            break;
            
        case MULTIPLY:
            
            operand1 = operand1 * operand2;
            
            break;
            
        case DIVIDE:
            
            operand1 =  ( operand2 == 0 && ![ self.inputString isEqualToString:@"0" ] ) ? INFINITY
                                                                                        : (operand1 / operand2);
            
            break;
            
        default:
            break;
            
    }
    
    
    currentOperation = nextOperation;
    nextOperation = NONE;
    operand2 = 0;
    multiplier = 10;
    
    [ self.inputString appendString: operatorStrings[currentOperation] ];
    [ self.outputString setString: [ NSString stringWithFormat:@"%f",operand1]];
    
}

- (void) clearOperations{
    
    operand1 = 0;
    operand2 = 0;
    multiplier = 10;
    currentOperation = NONE;
    [ self.outputString setString:@"0" ];
    [ self.inputString setString:@"0" ];
    
}

@end