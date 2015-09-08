//
//  CQColorTableViewController.m
//  PaintCells
//
//  Created by Justine Gartner on 8/12/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "CQColorTableViewController.h"
#import "CQColorPickerViewController.h"
#import "CQColorPickerViewControllerDelegate.h"

@interface CQColorTableViewController ()

@property (nonatomic) NSMutableArray *colors;

@end

@implementation CQColorTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colors = @[
                    ].mutableCopy;
    
   }

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.colors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"paintColorCellIdentifier" forIndexPath:indexPath];
    
    UIColor *selectedColor = self.colors[indexPath.row];
    cell.contentView.backgroundColor = selectedColor;
    
    return cell;
}

-(void)colorPickerViewController:(id)viewController didPickColor:(UIColor *)color{
    
    [self.colors addObject:color];
    
    [self.tableView reloadData];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    CQColorPickerViewController *c = segue.destinationViewController;
    
    c.delegate = self;
    
    
}

@end
