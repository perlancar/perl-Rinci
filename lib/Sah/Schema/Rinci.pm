package Sah::Schema::Rinci;

use 5.010001;
use strict;
use warnings;

# VERSION
# DATE

our %SCHEMAS;

my %dh_props = (
    v => {},
    defhash_v => {},
    name => {},
    summary => {},
    description => {},
    tags => {},
    default_lang => {},
    x => {},
);

$SCHEMAS{rinci} = [hash => {
    # tmp
    _prop => {
        %dh_props,

        entity_v => {},
        links => {
            _elem_prop => {
                %dh_props,

                uri => {},
                title => {},
            },
        },
    },
}];

$SCHEMAS{rinci_function} = [hash => {
    # tmp
    _prop => {
        %dh_props,

        # from common rinci metadata
        entity_v => {},
        links => {},

        is_func => {},
        is_meth => {},
        is_class_meth => {},
        args => {
            _value_prop => {
                %dh_props,

                as => {},
                schema => {},
                default => {},
                req => {},
                pos => {},
                greedy => {},
                cmdline_aliases => {
                    _value_prop => {
                        summary => {},
                        description => {},
                        schema => {},
                        code => {},
                    },
                },
                cmdline_on_getopt => {},
                completion => {},
                element_completion => {},
                cmdline_src => {},
            },
        },
        args_as => {}, # OLD 1.1.48-, replaced with args/as, will be removed in the future
        result => {
            _prop => {
                %dh_props,

                is_naked => {},
                schema => {},
                statuses => {
                    _value_prop => {
                        # from defhash
                        summary => {},
                        description => {},

                        schema => {},
                    },
                },
            },
        },
        result_naked => {}, # OLD 1.1.48-, replaced with result/is_naked, will be removed in the future
        examples => {
            _elem_prop => {
                %dh_props,

                args => {},
                argv => {},
                src => {},
                src_plang => {},
                status => {},
                result => {},
                test => {},
            },
        },
        features => {
            _keys => {
                reverse => {},
                tx => {},
                dry_run => {},
                pure => {},
                immutable => {},
                idempotent => {},
            },
        },
        deps => {
            _keys => {
                all => {},
                any => {},
                none => {},
                env => {},
                prog => {},
                pkg => {},
                func => {},
                code => {},
                tmp_dir => {},
                trash_dir => {},
            },
        },
    },
}];

# rinci_package
# rinci_variable
# rinci_result

1;
# ABSTRACT: Sah schemas for Rinci metadata
