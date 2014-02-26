//
//  HashBucket.h
//  Hash Table
//
//  Created by Brad on 2/25/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashBucket : NSObject

@property (nonatomic,copy) id key;
@property (nonatomic,strong) id obj;
@property (nonatomic,strong) HashBucket *next;


@end
