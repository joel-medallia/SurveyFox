//
//  NSExceptionCatcher.h
//  QuinoaIOS
//
//  Created by Joe Leung on 1/24/24.
//  Copyright © 2024 sense360. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSExceptionCatcher : NSObject

+ (NSException *)tryCatchWithBlock:(void (^)(void))block;
    
@end
