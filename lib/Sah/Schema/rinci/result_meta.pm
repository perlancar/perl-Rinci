package Sah::Schema::rinci::result_meta;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Sah::Schema::rinci::meta;

our $schema = [hash => {
    summary => 'Rinci envelope result metadata',

    # tmp
    _ver => 1.1,
    _prop => {
        %Sah::Schema::rinci::meta::_dh_props,

        perm_err => {},
        func => {}, # XXX func.*
        cmdline => {}, # XXX cmdline.*
        logs => {},
        prev => {},
        results => {},
        part_start => {},
        part_len => {},
        len => {},
        stream => {},
    },
}, {}];

1;
# ABSTRACT:
