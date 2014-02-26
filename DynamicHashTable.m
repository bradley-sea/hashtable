//
//  DynamicHashTable.m
//  Hash Table
//
//  Created by Brad on 2/25/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "DynamicHashTable.h"
#import "HashBucket.h"

@implementation DynamicHashTable

-(void)setObject:(id)obj ForKey:(NSString *)key
{
    [super setObject:obj ForKey:key];
    
    if ((self.count / self.tableSize) > .7)
    {
        NSMutableArray *temp = [NSMutableArray new];
        
        for (int i = 0;i < self.tableSize * 2; i++)
        {
            HashBucket *bucket = [HashBucket new];
            [temp addObject:bucket];
        }
        NSMutableArray *copiedOriginal = [self.hashArray copy];
        self.hashArray = temp;
        self.tableSize = self.tableSize *2;
        
        for (HashBucket *bucket in copiedOriginal)
        {
            if (bucket.key)
            {
                [self setObject:bucket.obj ForKey:bucket.key];
            }
        }
        
        NSLog(@"Hello");
    }
}

@end
