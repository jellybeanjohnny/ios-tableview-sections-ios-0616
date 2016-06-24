//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Matt Amerige on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

- (instancetype)init
{
    return [self initWithName:@"" favoriteThings:nil];
}

- (instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings
{
    if (!(self = [super init])) {
        return nil;
    }
    
    _name = name;
    _favoriteThings = favoriteThings;
    
    return self;
}

@end
