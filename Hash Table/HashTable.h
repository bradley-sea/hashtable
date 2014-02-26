//
//  HashTable.h
//  Hash Table
//
//  Created by Brad on 2/25/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashTable : NSObject

-(id)initWithTableSize:(int)i;
-(id)objectForKey:(NSString *)key;
-(void)setObject:(id)obj ForKey:(NSString *)key;
-(void)removeObjectForkey:(NSString *)key;

@property (nonatomic) NSUInteger count;
@property (nonatomic) int tableSize;
@property (strong,nonatomic) NSMutableArray *hashArray;





@end
