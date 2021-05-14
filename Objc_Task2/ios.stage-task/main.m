#import <UIKit/UIKit.h>
#import "AppDelegate.h"


UInt8 ReverseBinaty(UInt8);
int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
     
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
