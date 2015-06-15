#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *stackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for (UIColor *color in self.colors) {
        [self.stackView addArrangedSubview:[self viewWithBackgroundColor:color]];
    }
}

#pragma mark - View Helpers
- (UIView *)viewWithBackgroundColor:(UIColor *)color {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = color;
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
