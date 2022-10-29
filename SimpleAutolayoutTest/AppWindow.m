#import "AppWindow.h"

@implementation AppWindow

- (void)mouseDown:(NSEvent *)event {
    NSLog(@"Mouse down");
    NSLog(@"%@", [self.contentView constraints]);
}
@end
