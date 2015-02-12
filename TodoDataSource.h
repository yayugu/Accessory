//
//  TodoDataSource.h
//  Accessory
//
//  Created by yayugu on 2015/02/11.
//
//

#import <Foundation/Foundation.h>
#import "ATProtocols.h"

@interface TodoDataSource : NSObject<NSCopying, ATDataSource>

@property (nonatomic, strong) NSArray *tasks;

@end
