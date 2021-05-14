#import "AppDelegate.h"
#import "ReverseBinary.h"
#import "TwoDimensionalArraySorter.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    self.window.rootViewController = [[UIViewController alloc] init];;

    [self.window makeKeyAndVisible];
    
//    TwoDimensionalArraySorter* tdas = [TwoDimensionalArraySorter new];
//  
//    
//    NSArray *inputArray = @[@[@"Ivan",@"Ben",@"Dmitrii"], @[@"Billy",@"Cris"], @[@"Valentin",@"Van"], @[@"Alex",@"Kony"]];
//    NSArray *restultArray = @[@"Alex",@"Ben",@"Billy",@"Cris",@"Dmitrii",@"Ivan",@"Kony",@"Valentin",@"Van"];
//    NSArray* fook = [tdas twoDimensionalSort:inputArray];
//    NSLog(@"%@",fook);
//    NSLog(@"%@", restultArray);
    
    return YES;
}

#pragma mark - UIApplicationDelegate

- (void)applicationWillResignActive:(UIApplication *)application {}
- (void)applicationDidEnterBackground:(UIApplication *)application {}
- (void)applicationWillEnterForeground:(UIApplication *)application {}
- (void)applicationDidBecomeActive:(UIApplication *)application {}
- (void)applicationWillTerminate:(UIApplication *)application {}


@end
