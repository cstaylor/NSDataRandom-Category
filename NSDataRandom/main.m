//
//  main.m
//  NSDataRandom
//
//  Created by Christopher Taylor on 6/29/13.
//  Copyright (c) 2013 Christopher Taylor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+NSData_Random.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSData * random_bytes = [NSData random:4096*1024];
    }
    return 0;
}

