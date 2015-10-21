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
    
    //float result;
    
    Operation currentOperation;
    
    NSArray *operatorStrings;
}

-(id) init{
    
    operand1 = 0;
    operand2 = 0;
    //result = 0;
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

- (void)addDigit : (int) digit{
    
    
    if ( currentOperation == NONE ) {
        
        operand1 = ( operand1 * 10) + digit ;
        
    } else {
        
        operand2 = ( operand2 * 10) + digit ;
    }
    
    if ( [self.inputString isEqualToString:@"0" ] ) {
        
        [ _inputString setString:[ NSString stringWithFormat:@"%d", digit] ];
        
    } else {
        
        [ _inputString appendString:[ NSString stringWithFormat:@"%d", digit] ];
        
    }
}

- (void)addOperator: ( Operation) nextOperation{
    
    
    if  (( (nextOperation == MULTIPLY) || (nextOperation == DIVIDE ) ) && currentOperation != NONE ){
        
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
            
            operand1 =  ( operand2 == 0 && ![ self.outputString isEqualToString:@"0" ] ) ? INFINITY :operand1 / operand2;
            
            break;
            
        default:
            
            break;
            
    }
    
    
    currentOperation = nextOperation;
    nextOperation = NONE;
    operand2 = 0;
    
    [ self.inputString appendString: operatorStrings[currentOperation] ];
    [ self.outputString setString: [ NSString stringWithFormat:@"%.2f",operand1]];
    
}

- (void) clearOperations{
    
    operand1 = 0;
    operand2 = 0;
    currentOperation = NONE;
    [ self.outputString setString:@"0" ];
    [ self.inputString setString:@"0" ];
    
}

@end