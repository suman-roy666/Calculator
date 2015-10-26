//
//  ViewController.h
//  Calculator
//
//  Created by Suman Roy on 20/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *outputDisplayLabel;
@property (weak, nonatomic) IBOutlet UILabel *inputDisplayLabel;


- (IBAction)numberButtonOneHandler:(id)sender;
- (IBAction)numberButtonTwoHandler:(id)sender;
- (IBAction)numberButtonThreeHandler:(id)sender;
- (IBAction)numberButtonFourHandler:(id)sender;
- (IBAction)numberButtonFiveHandler:(id)sender;
- (IBAction)numberButtonSixHandler:(id)sender;
- (IBAction)numberButtonSevenHandler:(id)sender;
- (IBAction)numberButtonEightHandler:(id)sender;
- (IBAction)numberButtonNineHandler:(id)sender;
- (IBAction)numberButtonZeroHandler:(id)sender;

- (IBAction)functonButtonAddHandler:(id)sender;
- (IBAction)functonButtonSubtractHandler:(id)sender;
- (IBAction)functonButtonDivideHandler:(id)sender;
- (IBAction)functonButtonMultiplyHandler:(id)sender;

- (IBAction)functionButtonResultHandler:(id)sender;
- (IBAction)functionButtonClearHandler:(id)sender;
- (IBAction)functionButtonBackspaceHandler:(id)sender;

- (IBAction)functionButtonDecimalEnable:(id)sender;

@end

