#import "UIViewSubclass.h"

@interface UIViewSubclass ()
@property (nonatomic) UITextField *textField;
@end

@implementation UIViewSubclass

- (instancetype)initWithColor:(UIColor *)color {
    if (self = [super init]) {
        self.backgroundColor = color;
        self.translatesAutoresizingMaskIntoConstraints = NO;

        self.textField = [[UITextField alloc] init];
        [self.textField setBackgroundColor:[UIColor whiteColor]];
        self.textField.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:self.textField];

        UIEdgeInsets padding = UIEdgeInsetsMake(40, 100, 40, 100);

        [self addConstraints:@[
                               [NSLayoutConstraint constraintWithItem:self.textField
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1.0
                                                             constant:padding.top],

                               [NSLayoutConstraint constraintWithItem:self.textField
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1.0
                                                             constant:padding.left],

                               [NSLayoutConstraint constraintWithItem:self.textField
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0
                                                             constant:-padding.bottom],

                               [NSLayoutConstraint constraintWithItem:self.textField
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:-padding.right],
                               ]];
        
        
    }
    
    return self;
}

- (UITextField *)textField {
    return _textField;
}

@end
