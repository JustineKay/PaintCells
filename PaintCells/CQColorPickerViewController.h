//
//  CQColorPickerViewController.h
//  PaintCells
//
//  Created by Justine Gartner on 8/12/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQColorPickerViewControllerDelegate.h"

@interface CQColorPickerViewController : UIViewController

@property (nonatomic, weak) id <CQColorPickerViewControllerDelegate>delegate;

@end
