//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Matt Amerige on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *favoriteThings;

- (instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings;

@end
