//
//  TBIconInfo.m
//  TestIconFont
//
//  Created by os on 2018/7/1.
//  Copyright © 2018年 os. All rights reserved.
//

#import "TBIconInfo.h"

@implementation TBIconInfo

- (instancetype)initWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color {
    if (self = [super init]) {
        self.text = text;
        self.size = size;
        self.color = color;
    }
    return self;
}

+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color {
    return [[TBIconInfo alloc] initWithText:text size:size color:color];
}


@end
