#import "ViewController.h"
#import "UIViewSubclass.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *stackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for (UIColor *color in self.colors) {
        [self.stackView addArrangedSubview:[self viewWithBackgroundColor:color]];
    }

    [[self.stackView.arrangedSubviews.firstObject valueForKey:@"textField"] becomeFirstResponder];
}

#pragma mark - View Helpers
- (__kindof UIView *)viewWithBackgroundColor:(UIColor *)color {
    UIViewSubclass *view = [[UIViewSubclass alloc] initWithColor:color];
    return view;
}

- (NSArray<UIColor *> *)colors {
    return @[
             [UIColor greenColor],
             [UIColor yellowColor],
             [UIColor orangeColor],
             [UIColor redColor],
             [UIColor purpleColor],
             [UIColor blueColor],
             ];
}

@end

NS_ASSUME_NONNULL_END