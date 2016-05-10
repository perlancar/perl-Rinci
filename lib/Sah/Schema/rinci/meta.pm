package Sah::Schema::rinci::meta;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %_dh_props = (
    v => {},
    defhash_v => {},
    name => {},
    caption => {},
    summary => {},
    description => {},
    tags => {},
    default_lang => {},
    x => {},
);

our $schema = [hash => {
    summary => 'Rinci metadata',
    # tmp
    _ver => 1.1, # this has the effect of version checking
    _prop => {
        %_dh_props,

        entity_v => {},
        entity_date => {},
        links => {
            _elem_prop => {
                %_dh_props,

                url => {},
            },
        },
    },
}, {}];

1;
# ABSTRACT:
