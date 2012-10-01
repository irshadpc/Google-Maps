#import "TZAppDelegate.h"
#import "TZMapController.h"

@implementation TZAppDelegate
@synthesize window;

- (BOOL) application: (UIApplication*) application didFinishLaunchingWithOptions :(NSDictionary*) launchOptions
{
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [window setRootViewController:[[TZMapController alloc] init]];
    [window makeKeyAndVisible];
    return YES;
}

@end
