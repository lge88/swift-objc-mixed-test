//
//  MyModule.m
//  swift-objc-mixed-test
//
//  Created by Li Ge on 10/14/14.
//  Copyright (c) 2014 Li Ge. All rights reserved.
//

#import "MyModule.h"
#import "MyCppLib.h"

@implementation MyModule

- (id) initWithDelegate:(id<MyProtocol>)delegate {
    mDelegate = delegate;
    return self;
}

- (void) sayHello {
    printf("hello\n");
    const char* name = [[mDelegate getMyName] UTF8String];
    printf("my name is %s\n", name);
    helloFromMyCpp();
}

@end
