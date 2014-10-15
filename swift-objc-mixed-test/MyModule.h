//
//  MyModule.h
//  swift-objc-mixed-test
//
//  Created by Li Ge on 10/14/14.
//  Copyright (c) 2014 Li Ge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocol.h"

@interface MyModule : NSObject {
    @private
    id mDelegate;    
}

- (id) initWithDelegate:(id<MyProtocol>) delegate;
- (void) sayHello;

@end
