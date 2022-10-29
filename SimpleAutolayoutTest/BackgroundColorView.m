#import "BackgroundColorView.h"

@implementation BackgroundColorView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    NSBezierPath *bp = [NSBezierPath bezierPathWithRect: [self bounds]];
     [[NSColor yellowColor] set];
     [bp fill];
    // Drawing code here.
}

@end
