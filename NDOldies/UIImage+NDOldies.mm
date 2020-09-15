//
//  UIImage+NDOldies.m
//  NDOldies
//
//  Created by Nguyen Duc Hiep on 5/25/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import "UIImage+NDOldies.h"

@implementation UIImage (NDOldies)

- (UIImage*)nd_imageWithTintColor:(UIColor*)color {
  if (@available(iOS 13.0, tvos 13.0, watchos 6.0, *)) {
    return [self imageWithTintColor:color];
  }

  UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
  [color setFill];
  auto context = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(context, 0, self.size.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextSetBlendMode(context, kCGBlendModeDestinationIn);
  auto rect = CGRectMake(0, 0, self.size.width, self.size.height);
  CGContextClipToMask(context, rect, self.CGImage);
  CGContextFillRect(context, rect);

  auto newImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return newImage;
}

- (UIImage*)nd_imageWithTintColor:(UIColor*)color
                    renderingMode:(UIImageRenderingMode)renderingMode {
  if (@available(iOS 13.0, tvos 13.0, watchos 6.0, *)) {
    return [self imageWithTintColor:color renderingMode:renderingMode];
  }

  return [(self.renderingMode == renderingMode
               ? self
               : [self imageWithRenderingMode:renderingMode])
      nd_imageWithTintColor:color];
}

@end
