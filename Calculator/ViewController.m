//
//  ViewController.m
//  Calculator
//
//  Created by Suman Roy on 20/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorOperation.h"

@interface ViewController ()
@end

@implementation ViewController{
    
    CalculatorOperation *operationHandler;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    operationHandler = [[ CalculatorOperation alloc] init ];
    
    [ self.outputDisplayLabel setText: operationHandler.outputString ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Number Button Handlers

- (IBAction)numberButtonOneHandler:(id)sender {
    
    [ operationHandler addDigit:1 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonTwoHandler:(id)sender{
    
    [ operationHandler addDigit:2 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonThreeHandler:(id)sender {
    
    [ operationHandler addDigit:3 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonFourHandler:(id)sender{
    [ operationHandler addDigit:4 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonFiveHandler:(id)sender{
    
    [ operationHandler addDigit:5 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonSixHandler:(id)sender{
    
    [ operationHandler addDigit:6 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonSevenHandler:(id)sender{
    
    [ operationHandler addDigit:7 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonEightHandler:(id)sender{
    
    [ operationHandler addDigit:8 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonNineHandler:(id)sender{
    
    [ operationHandler addDigit:9 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
}

- (IBAction)numberButtonZeroHandler:(id)sender{
    
    [ operationHandler addDigit:0 ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    
}

#pragma mark - Function Button Handlers

- (IBAction)functonButtonAddHandler:(id)sender{
    
    [ operationHandler addOperator:ADD ];
    
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    
    [ self.outputDisplayLabel setText: operationHandler.outputString ];
    
}

- (IBAction)functonButtonSubtractHandler:(id)sender{
    
    [ operationHandler addOperator:SUBTRACT ];
    
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    
    [ self.outputDisplayLabel setText: operationHandler.outputString ];
    
}

- (IBAction)functonButtonDivideHandler:(id)sender{
    
    [ operationHandler addOperator:DIVIDE ];
    
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    
    [ self.outputDisplayLabel setText: operationHandler.outputString ];
    
}

- (IBAction)functonButtonMultiplyHandler:(id)sender{
    
    [ operationHandler addOperator:MULTIPLY ];
    
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    
    [ self.outputDisplayLabel setText: operationHandler.outputString ];
    
}

- (IBAction)functionButtonResultHandler:(id)sender {
    
    [ operationHandler addOperator:NONE ];
    
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    
    [ self.outputDisplayLabel setText: operationHandler.outputString ];
    
}

- (IBAction)functionButtonClearHandler:(id)sender {
    
    [ operationHandler clearOperations ];
    [ self.inputDisplayLabel setText: operationHandler.inputString ];
    [ self.outputDisplayLabel setText: operationHandler.outputString ];
    
}

- (IBAction)functionButtonBackspaceHandler:(id)sender {
    
    
    
}

- (IBAction)functionButtonDecimalEnable:(id)sender {
}

@end
