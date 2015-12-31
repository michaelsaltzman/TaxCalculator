//
//  ViewController.m
//  TaxCalculator
//
//  Created by Michael Saltzman on 12/30/15.
//  Copyright © 2015 Michael Saltzman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *retrievedText = self.priceTextField.text;
    int enteredPrice = retrievedText.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double caResult = enteredPrice * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", caResult];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double chiResult = enteredPrice * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", chiResult];
    }
    else
    {
        double nyResult = enteredPrice * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", nyResult];
    }
    
}

@end
