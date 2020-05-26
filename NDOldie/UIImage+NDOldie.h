//
//  UIImage+NDOldie.h
//  NDOldie
//
//  Created by Nguyen Duc Hiep on 5/25/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (NDOldie)

- (UIImage*)nd_imageWithTintColor:(UIColor*)color
    NS_SWIFT_NAME(nd_withTintColor(_:))
        API_DEPRECATED("Use imageWithTintColor: instead",
                       ios(1.0, 13.0),
                       tvos(1.0, 13.0),
                       watchos(1.0, 6.0));

- (UIImage*)nd_imageWithTintColor:(UIColor*)color
                    renderingMode:(UIImageRenderingMode)renderingMode
    NS_SWIFT_NAME(nd_withTintColor(_:renderingMode:))
        API_DEPRECATED("Use imageWithTintColor: instead",
                       ios(1.0, 13.0),
                       tvos(1.0, 13.0),
                       watchos(1.0, 6.0));

@end

NS_ASSUME_NONNULL_END
