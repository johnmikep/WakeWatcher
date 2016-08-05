//
//  main.m
//  WakeWatcher
//
//  Created by Eric Kobrin on 7/23/16.
//  Released under CC0 1.0 (Public Domain)
//    https://creativecommons.org/publicdomain/zero/1.0/
//

#import <Foundation/Foundation.h>
#import "WakeWatcher.h"

int main(int argc, const char * argv[]) {
    // TODO: run under launchd
    @autoreleasepool {
        NSLog(@"Starting Wake Watcher!");
        @try {
            id watcher = [[WakeWatcher alloc] init];
            NSLog(@"Watcher %@", watcher);
            [watcher registerNotifications];
            [[NSRunLoop currentRunLoop] run];
        }
        @catch (NSException *exception) {
            NSLog(@"Watcher failed: %@", exception);
        }
        NSLog(@"Exiting Wake Watcher!");
    }
    return EXIT_SUCCESS;
}
