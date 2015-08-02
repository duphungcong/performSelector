//
//  DemoSelector.m
//  ObjCExamples
//
//  Created by du phung cong on 8/2/15.
//  Copyright (c) 2015 duphungcong. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(hideSlider) withObject:nil afterDelay:5];
}
- (IBAction)onCrunchData:(id)sender {
    //[self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:true];
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple":@"táo", @"lemon":@"chanh"} waitUntilDone:true];
}

- (void) doCrunchData {
    [NSThread sleepForTimeInterval:15];
}

- (void) hideSlider {
    self.slider.hidden = true;
}

- (void) processData: (NSDictionary*) data {
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}
@end
