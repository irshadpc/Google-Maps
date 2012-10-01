#import "TZMapController.h"

@interface TZMapController ()
@property(strong) UIWebView *mapView;
@end

@implementation TZMapController
@synthesize mapView;

- (void) loadView
{
    CGRect appFrame = [[UIScreen mainScreen] applicationFrame];
    [self setMapView:[[UIWebView alloc] initWithFrame:appFrame]];
    [mapView setBackgroundColor:[UIColor blackColor]];
    [self setView:mapView];
}

- (void) viewDidAppear: (BOOL) animated
{
    [super viewDidAppear:animated];
    [mapView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://maps.google.com/"]]];
}

@end
