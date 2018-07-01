//
//  TBIconFont.h
//  TestIconFont
//
//  Created by os on 2018/7/1.
//  Copyright © 2018年 os. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UIImage+TBIconFont.h"
#import "TBIconFont.h"

#define TBIconInfoMake(text, imageSize, imageColor) [TBIconInfo iconInfoWithText:text size:imageSize color:imageColor]

@interface TBIconFont : NSObject

+ (UIFont *)fontWithSize: (CGFloat)size;

+ (void)setFontName:(NSString *)fontName;

@end
