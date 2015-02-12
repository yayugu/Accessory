//
//  TodoDataSource.m
//  Accessory
//
//  Created by yayugu on 2015/02/11.
//
//

#import "TodoDataSource.h"

@implementation TodoDataSource

- (instancetype)copyWithZone:(NSZone *)zone
{
    TodoDataSource *clone = [[TodoDataSource alloc] init];
    clone.tasks = [[self tasks] copy];
    return clone;
}

- (NSInteger)numberOfSections
{
    return _tasks.count;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section
{
    return [_tasks[section] count];
}

- (NSUInteger)hashForSection:(NSInteger)section
{
    return [_tasks[section][@"text"] hash];
}

- (NSUInteger)hashAtIndexPath:(NSIndexPath*)indexPath
{
    return [_tasks[indexPath.section][@"rows"][indexPath.row][@"text"] hash];
}

@end
