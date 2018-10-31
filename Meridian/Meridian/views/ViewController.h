//
//  ViewController.h
// spongebob
//
//  Created by Ben Sparkes on 22/12/2017.
//  Copyright © 2017 Ben Sparkes. All rights reserved.
//

#import "v0rtex.h"
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (void)writeText:(NSString *)message;
- (void)writeTextPlain:(NSString *)message, ...;

@end

task_t tfp0;
kptr_t kslide;
kptr_t kernel_base;
kptr_t kern_ucred;
kptr_t kernprocaddr;

void log_message(NSString *message);
