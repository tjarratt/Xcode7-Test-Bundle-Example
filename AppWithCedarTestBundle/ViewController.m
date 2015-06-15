#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *stackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.stackView addArrangedSubview:[self viewWithBackgroundColor:[UIColor greenColor]]];
    [self.stackView addArrangedSubview:[self viewWithBackgroundColor:[UIColor yellowColor]]];
    [self.stackView addArrangedSubview:[self viewWithBackgroundColor:[UIColor orangeColor]]];
    [self.stackView addArrangedSubview:[self viewWithBackgroundColor:[UIColor redColor]]];
    [self.stackView addArrangedSubview:[self viewWithBackgroundColor:[UIColor purpleColor]]];
    [self.stackView addArrangedSubview:[self viewWithBackgroundColor:[UIColor blueColor]]];
}

#pragma mark - View Helpers
- (UIView *)viewWithBackgroundColor:(UIColor *)color {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = color;
    return view;
}

@end
