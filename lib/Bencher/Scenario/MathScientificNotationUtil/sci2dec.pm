package Bencher::Scenario::MathScientificNotationUtil::sci2dec;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark sci2dec()',
    participants => [
        {
            fcall_template => 'Math::ScientificNotation::Util::sci2dec(<num>)',
        },
        {
            name => 'sprintf("%.f")',
            summary => 'As a baseline',
            code_template => 'sprintf("%.f", <num>)',
        },
        {
            name => 'sprintf("%.g")',
            summary => 'As a baseline',
            code_template => 'sprintf("%.g", <num>)',
        },
    ],
    datasets => [
        {
            args => { 'num@' => ["1.23e20", "1.23e3", "1.23e0", "1.23e-20"] },
        },
    ],
};

1;
# ABSTRACT:
