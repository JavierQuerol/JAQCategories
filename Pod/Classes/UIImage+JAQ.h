//
//  UIImage+JAQ.h
//  Pods
//
//  Created by Javier Querol on 22/12/14.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (JAQ)

- (UIImage *)jaq_adjustImageToWidth:(CGFloat)width;
- (UIImage *)jaq_makeThumbnailOfSize:(CGSize)size;

- (UIImage *)applyLightEffect;
- (UIImage *)applyExtraLightEffect;
- (UIImage *)applyDarkEffect;
- (UIImage *)applyTintEffectWithColor:(UIColor *)tintColor;

- (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;

@end
