#import <Cordova/CDV.h>

@interface DisableStatusbar : CDVPlugin

@end

@implementation DisableStatusbar

- (void)pluginInitialize
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 110000
    if (@available(iOS 11.0, *)) {
        [self.webView.scrollView setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    }
#endif
}

@end