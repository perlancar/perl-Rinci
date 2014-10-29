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
    caption => {},
    summary => {},
    description => {},
    tags => {},
    default_lang => {},
    x => {},
);

$SCHEMAS{rinci} = [hash => {
    # tmp
    _ver => 1.1, # this has the effect of version checking
    _prop => {
        %dh_props,

        entity_v => {},
        entity_date => {},
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
    _ver => 1.1,
    _prop => {
        %dh_props,

        # from common rinci metadata
        entity_v => {},
        entity_date => {},
        links => {},

        is_func => {},
        is_meth => {},
        is_class_meth => {},
        args => {
            _value_prop => {
                %dh_props,

                schema => {},
                default => {},
                req => {},
                pos => {},
                greedy => {},
                partial => {},
                is_password => {},
                cmdline_aliases => {
                    _value_prop => {
                        summary => {},
                        description => {},
                        schema => {},
                        code => {},
                        is_flag => {},
                    },
                },
                cmdline_on_getopt => {},
                cmdline_prompt => {},
                completion => {},
                element_completion => {},
                cmdline_src => {},
                meta => 'fix',
                element_meta => 'fix',
            },
        },
        args_as => {},
        result => {
            _prop => {
                %dh_props,

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
                check_arg => {},
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
$SCHEMAS{rinci_function}[1]{_prop}{args}{_value_prop}{meta} =
    $SCHEMAS{rinci_function}[1];
$SCHEMAS{rinci_function}[1]{_prop}{args}{_value_prop}{element_meta} =
    $SCHEMAS{rinci_function}[1];

# rinci_package
# rinci_variable
# rinci_result

# list of known special arguments: -dry_run, -action, -tx_action,
# -res_part_start, -res_part_len, -arg_part_start/*, -arg_part_len/*

1;
# ABSTRACT: Sah schemas for Rinci metadata
