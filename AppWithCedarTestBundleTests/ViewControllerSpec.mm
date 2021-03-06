#import "Cedar.h"
#import "ViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(ViewControllerSpec)

describe(@"ViewController", ^{
    __block ViewController *subject;

    beforeEach(^{
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        subject = (id)[storyboard instantiateInitialViewController];
    });

    describe(@"when the view loads", ^{
        __block UIWindow *window;
        beforeEach(^{
            window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 250, 700)];
            [window addSubview:subject.view];
            subject.view should_not be_nil;
        });

        fit(@"should have a textfield become first responder", ^{
            UITextField *textField = [subject.stackView.arrangedSubviews.firstObject valueForKey:@"textField"];
            textField should_not be_nil;
            textField.isFirstResponder should be_truthy;
        });
    });
});

SPEC_END
