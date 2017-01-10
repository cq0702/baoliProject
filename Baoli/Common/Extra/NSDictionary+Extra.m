//
//  NSDictionary+Extra.m
//  DDFlower_iOS
//
//  Created by user on 16/11/17.
//  Copyright © 2016年 user. All rights reserved.
//

#import "NSDictionary+Extra.h"

@implementation NSDictionary (Extra)

- (NSDictionary *)params
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc]init];
    [params setObject:[self deviceNo] forKey:@"machineId"];
    NSMutableDictionary *newParams = [self mutableCopy];
    [newParams addEntriesFromDictionary:params];
    return newParams;
}

- (NSString *)deviceNo
{
    return [[[UIDevice currentDevice] identifierForVendor] UUIDString];
}

@end
