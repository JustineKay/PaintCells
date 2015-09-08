//
//  CQColorPickerViewControllerDelegate.h
//  PaintCells
//
//  Created by Justine Gartner on 8/12/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CQColorPickerViewController;

@protocol CQColorPickerViewControllerDelegate <NSObject>

- (void)colorPickerViewController:(CQColorPickerViewController *)viewController didPickColor:(UIColor *)color;

@end
