//
//  NSData+NSData_Random.m
//  NSDataRandom
//
//  Created by Christopher Taylor on 6/29/13.
//  Copyright (c) 2013 Christopher Taylor. All rights reserved.
//

#import "NSData+NSData_Random.h"
#import <Security/Security.h>
#import <Security/SecRandom.h>

@implementation NSData (NSData_Random)

+(NSData*)random:(NSUInteger)size
{
    NSData * ret_val = nil;
    if ( size == 0 ) errno = EINVAL;
    else {
        NSUInteger byte_length = size * sizeof(uint8_t);
        uint8_t * data = malloc( byte_length );
        memset ( (void*)data, 0x0, size );
        OSStatus err = SecRandomCopyBytes ( kSecRandomDefault, byte_length, data );
        if ( !err ) ret_val = [NSData dataWithBytes:data length:byte_length];
        free ( data );
    }
    return ret_val;
}

@end
