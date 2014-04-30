package Sah::Schema::Rinci;

use 5.010001;
use strict;
use warnings;

# VERSION
# DATE

our %SCHEMAS;

$SCHEMAS{rinci} = [hash => {
    # tmp
    _prop => {
        # from defhash
        v => {},
        defhash_v => {},
        name => {},
        summary => {},
        description => {},
        tags => {},
        default_lang => {},
        x => {},

        entity_v => {},
        links => {
            _elem_prop => {
                # from defhash
                v => {},
                defhash_v => {},
                name => {},
                summary => {},
                description => {},
                tags => {},
                default_lang => {},
                x => {},

                uri => {},
                title => {},
            },
        },
    },
}];

$SCHEMAS{rinci_function} = [hash => {
    # tmp
    _prop => {
        # from defhash
        v => {},
        defhash_v => {},
        name => {},
        summary => {},
        description => {},
        tags => {},
        default_lang => {},
        x => {},

        # from common rinci metadata
        entity_v => {},
        links => {},

        is_func => {},
        is_meth => {},
        is_class_meth => {},
        args => {
            _value_prop => {
                # from defhash
                summary => {},
                description => {},
                tags => {},

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
        args_as => {},
        result => {
            _prop => {
                # from defhash
                summary => {},
                description => {},

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
        result_naked => {},
        examples => {
            _elem_prop => {
                # from defhash
                summary => {},
                description => {},
                tags => {},

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
