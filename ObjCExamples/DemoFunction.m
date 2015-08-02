//
//  DemoFunction.m
//  ObjCExamples
//
//  Created by du phung cong on 8/2/15.
//  Copyright (c) 2015 duphungcong. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self sayFistName:@"Steve" andLastName:@"Job"];
    float tempDegree = 30.1;
    NSString* result = [NSString stringWithFormat:@"%2.1f degree equal to %3.1f", [self celciusToFahrenheight:tempDegree], tempDegree];
    [self writeln:result];
    [self performSelector:@selector(celciusToFahrenheight)];
    // @(30.1) == [[[[NSNumber alloc] initWithFloat:30.1];
    [self performSelector:@selector(celciusToFahrenheight2: and:) withObject:@(30.1) withObject:@"Fahrenheight"];
}

- (void) sayFistName: (NSString*) firstName andLastName: (NSString*) lastName {
    NSLog(@"%@ %@", firstName, lastName);
}

- (float) celciusToFahrenheight: (float) degree {
    return degree * 1.8 + 32.0;
}

- (void) celciusToFahrenheight {
    NSLog(@"Do nothing");
}

- (float) celciusToFahrenheight2 {
    return 10.1;
}

// [degree floatValue] --> unboxing NSObject to primary data type value
- (void) celciusToFahrenheight2: (NSNumber*) degree and: (NSString*) typeDegree {
    float result = [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f", result);
    NSString* string = [NSString stringWithFormat:@"%2.1f %@", result, typeDegree];
    [self writeln:string];
}
@end
