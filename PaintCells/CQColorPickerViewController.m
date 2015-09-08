//
//  CQColorPickerViewController.m
//  PaintCells
//
//  Created by Justine Gartner on 8/12/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "CQColorPickerViewController.h"

@interface CQColorPickerViewController ()

@end

@implementation CQColorPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cyanButtonTapped:(UIButton *)sender {
    
    [self didSelectColor: [UIColor cyanColor]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)yellowButtonTapped:(UIButton *)sender {
    
    [self didSelectColor: [UIColor yellowColor]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)magentaButtonTapped:(UIButton *)sender {
    
    [self didSelectColor: [UIColor magentaColor]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)greenButtonTapped:(UIButton *)sender {
    
    [self didSelectColor: [UIColor greenColor]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)purpleButtonTapped:(UIButton *)sender {
    
    [self didSelectColor: [UIColor purpleColor]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)orangeButtonTapped:(UIButton *)sender {
    
    [self didSelectColor: [UIColor orangeColor]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)lightGrayButtonTapped:(UIButton *)sender {
    
    [self didSelectColor: [UIColor lightGrayColor]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didSelectColor: (UIColor *)color{
    
    [self.delegate colorPickerViewController:self didPickColor:color];
    
}



@end
