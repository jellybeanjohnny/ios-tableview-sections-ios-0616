//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self _generateStudents];
}

- (void)_generateStudents
{
    FISStudent *claire = [[FISStudent alloc] initWithName:@"Claire" favoriteThings:@[@"Folk Music",
                                                                                     @"sunshine",
                                                                                     @"good book glass of wine",
                                                                                     @"pbs news hour",
                                                                                     @"NPR podcasts radiolab"]];
    
    FISStudent *pacman = [[FISStudent alloc] initWithName:@"Pacman" favoriteThings:@[@"berries", @"running away from ghosts", @"small yellow dots"]];
    
    FISStudent *dogStudent = [[FISStudent alloc] initWithName:@"Dog" favoriteThings:@[@"smells", @"quickly moving small animals", @"all food"]];
    
    self.students = @[claire, pacman, dogStudent];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return (NSInteger)self.students.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    FISStudent *student = self.students[(NSUInteger)section];
    
    return (NSInteger)student.favoriteThings.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    FISStudent *student = self.students[(NSUInteger)section];
    
    return student.name;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell"];
    
    FISStudent *student = self.students[(NSUInteger)indexPath.section];
    
    cell.textLabel.text = student.favoriteThings[(NSUInteger)indexPath.row];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 10;
}

@end
