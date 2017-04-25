//
//  ViewController.m
//  TestAlertInput
//
//  Created by tomfriwel on 25/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (IBAction)test:(id)sender {
    
//    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//        textField.placeholder = @"Summary";
////        textField.autocapitalizationType = UITextAutocapitalizationTypeSentences;
////        textField.text = @"123";//_summaryLabel.text;
//                NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:textField attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant: 110.0];
//                [textField addConstraint:constraint];
//                [textField layoutIfNeeded];
////        textField.canBecomeFirstResponder = NO;
//        UITextView *view = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//        view.editable = YES;
//        view.text = @"123";
//        view.backgroundColor = [UIColor grayColor];
//        [textField addSubview:view];
//        [textField bringSubviewToFront:view];
//        [view becomeFirstResponder];
//    }];
//    UIViewController *vc = [[UIViewController alloc] init];
//    vc.view.backgroundColor = [UIColor redColor];
//    [alert addChildViewController:vc];
//    
//    //    [alert addAction:[UIAlertAction actionWithTitle:@"123" style:<#(UIAlertActionStyle)#> handler:<#^(UIAlertAction * _Nonnull action)handler#>]]
//    [alert addAction: [UIAlertAction actionWithTitle:@"定"style:UIAlertActionStyleDestructive handler:^(UIAlertAction*action) {  NSLog(@"点击了确定按钮"); }]];
//    
//    [alert addAction:[UIAlertAction actionWithTitle:@"消"style:UIAlertActionStyleCancel handler:^(UIAlertAction*action) {  NSLog(@"点击了取消按钮");  }]];
//    

    //
    
//    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
//                                                        message:@"Enter your summary"
//                                                       delegate:self
//                                              cancelButtonTitle:@"Cancel"
//                                              otherButtonTitles:@"Done", nil];
//    
//    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectZero];
//    [alert setValue:textView forKey:@"accessoryView"];
//    [alert show];
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Enter your summary" message:@"\n\n\n\n\n\n\n\n" preferredStyle:UIAlertControllerStyleAlert];
    alert.view.autoresizesSubviews = YES;
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectZero];
    textView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *leadConstraint = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:textView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:-8.0];
    NSLayoutConstraint *trailConstraint = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:textView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:8.0];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:textView attribute:NSLayoutAttributeTop multiplier:1.0 constant:-64.0];
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:textView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:64.0];
    [alert.view addSubview:textView];
    [NSLayoutConstraint activateConstraints:@[leadConstraint, trailConstraint, topConstraint, bottomConstraint]];
    
    [alert addAction: [UIAlertAction actionWithTitle:@"Cancel"style:UIAlertActionStyleDefault handler:^(UIAlertAction*action) {
        NSLog(@"%@", textView.text);
    }]];
    [alert addAction: [UIAlertAction actionWithTitle:@"Done"style:UIAlertActionStyleDefault handler:^(UIAlertAction*action) {
        NSLog(@"%@", textView.text);
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
