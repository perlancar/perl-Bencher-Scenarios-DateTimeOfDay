package Bencher::Scenario::DateTimeOfDay::create;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => "Benchmark timeofday creation",
    participants => [
        {fcall_template=>'Date::TimeOfDay->new(hour=>23, minute=>59, second=>59)'},
        {fcall_template=>'Date::TimeOfDay->from_hms(hms=>"23:59:59")'},
        {fcall_template=>'Date::TimeOfDay->from_float(float=>86399)'},
    ],
};

1;
# ABSTRACT:
