//
//  ViewController.m
//  navigateNextTextField
//
//  Created by United TCS Mini on 17/01/17.
//  Copyright © 2017 United TCS Mini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>


@end

@implementation ViewController
#define MAX_LENGTH 20

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *phoneName = [[UIDevice currentDevice] name];
    
    NSString *phoneUniqueIdentifier = [[[UIDevice currentDevice] identifierForVendor]UUIDString];

      NSLog(@"Languagae %@",phoneUniqueIdentifier);
    self.textField.tag=1;
      self.textField2.tag=2;
      self.textField3.tag=3;
}

- (IBAction)textField2EditingChanged:(id)sender {
    
    NSLog(@"Editing changed");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    if (textField.text.length >= MAX_LENGTH && range.length == 0)
    {
        return NO; // return NO to not change text
    }
    else
    {return YES;}
}
        
        -(BOOL)textFieldShouldReturn:(UITextField*)textField
    {
        NSInteger nextTag = textField.tag + 1;
        // Try to find next responder
        UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
        if (nextResponder) {
            // Found next responder, so set it.
            [nextResponder becomeFirstResponder];
        } else {
            // Not found, so remove keyboard.
            [textField resignFirstResponder];
        }
        return NO; // We do not want UITextField to insert line-breaks.
    }

@end
