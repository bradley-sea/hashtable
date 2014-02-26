//
//  HashTable.m
//  Hash Table
//
//  Created by Brad on 2/25/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "HashTable.h"
#import "HashBucket.h"

@interface HashTable()





@end

@implementation HashTable

-(id)initWithTableSize:(int)i
{
    self  = [super init];
    if (self)
    {
        self.tableSize = i;
        self.hashArray = [NSMutableArray new];
        
        for (int i = 0;i < self.tableSize; i++)
        {
            HashBucket *bucket = [HashBucket new];
            [self.hashArray addObject:bucket];
        }
    }
    
    return self;
}


-(NSUInteger)hash:(NSString *)key
{
    NSUInteger total= 0;
    for (int i = 0;i <=(key.length -1);i++)
    {
        int asc = [key characterAtIndex:i];
        
        total = total +asc;
    }
    NSUInteger index = total % self.tableSize;
    
    return index;
}
-(id)objectForKey:(NSString *)key
{
    NSUInteger bucketIndex = [self hash:key];
    
    HashBucket *bucket = self.hashArray[bucketIndex];
    
    while (bucket)
    {
        if ([bucket.key isEqualToString:key])
        {
            
            return bucket.obj;
        }
        else bucket = bucket.next;
    }
    return nil;
}

-(void)removeObjectForKey:(NSString *)key
{
    NSUInteger index = [self hash:key];
    HashBucket *previousBucket = nil;
    HashBucket *bucket = self.hashArray[index];
    
    while (bucket)
    {
        if ([bucket.key isEqualToString:key])
        {
            if (previousBucket == nil)
            {
                HashBucket *nextBucket = bucket.next;
                self.hashArray[index] = nextBucket;
            }
            else
            {
                previousBucket.next = bucket.next;
            }
            self.count--;
            
            return;
        }
        previousBucket = bucket;
        bucket = bucket.next;
    }
 
}

-(void)setObject:(id)obj ForKey:(NSString *)key
{
    HashBucket *bucket = [HashBucket new];
    NSUInteger index = [self hash:key];
    bucket.obj = obj;
    bucket.key = key;
    
    [self removeObjectForKey:key];
    
    bucket.next = self.hashArray[index];
    self.hashArray[index] = bucket;
    self.count++;
    
    
}

@end
