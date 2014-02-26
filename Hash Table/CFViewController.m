//
//  CFViewController.m
//  Hash Table
//
//  Created by Brad on 2/25/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "CFViewController.h"
#import "HashTable.h"
#import "DynamicHashTable.h"

@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    HashTable *myHashTable = [[HashTable alloc] initWithTableSize:100];
//    
////    [myHashTable setObject:@"cat" ForKey:@"Brad"];
////    [myHashTable setObject:@"dog" ForKey:@"Smith"];
//    
//    NSString *test = [myHashTable objectForKey:@"Brad"];
//    
//    NSLog(@"test = %@",test);
//    
    DynamicHashTable *myDHT = [[DynamicHashTable alloc]initWithTableSize:100];
    
    for (int i = 0; i <300;i++)
    {
        NSString *key = [NSString stringWithFormat:@"%d",i];
        [myDHT setObject:@"Hello" ForKey:key];
    }
    
    
	
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
