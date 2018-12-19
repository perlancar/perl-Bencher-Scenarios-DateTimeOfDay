package Bencher::Scenario::DateTimeOfDay::format;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => "Benchmark timeofday formatting",
    participants => [
        {name=>"hms", module=>"Date::TimeOfDay", code_template=>'state $tod = Date::TimeOfDay->from_float(float=>86399); $tod->hms'},
        {name=>"stringify", module=>"Date::TimeOfDay", code_template=>'state $tod = Date::TimeOfDay->from_float(float=>86399); $tod->stringify'},
    ],
};

1;
# ABSTRACT:
