#import "Cedar.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(NothingSpec)

describe(@"Nothing", ^{
    it(@"should pass", ^{
        1 should equal(1);
    });

    xit(@"should be pending", ^{
        NSLog(@"================> %@", @"nope");
    });

    xit(@"should fail", ^{
        1 should equal(2);
    });
});

SPEC_END
