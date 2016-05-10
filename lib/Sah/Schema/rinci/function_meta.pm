package Sah::Schema::rinci::function_meta;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Data::Sah::Normalize ();
use Sah::Schema::rinci::meta ();

our $schema = [hash => {
    summary => 'Rinci function metadata',

    # tmp
    _ver => 1.1,
    _prop => {
        %Sah::Schema::rinci::meta::_dh_props,

        # from common rinci metadata
        entity_v => {},
        entity_date => {},
        links => {},

        is_func => {},
        is_meth => {},
        is_class_meth => {},
        args => {
            _value_prop => {
                %Sah::Schema::rinci::meta::_dh_props,

                # common rinci metadata
                links => {},

                schema => {},
                filters => {},
                default => {},
                req => {},
                pos => {},
                greedy => {},
                partial => {},
                stream => {},
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
                deps => {
                    _keys => {
                        arg => {},
                        all => {},
                        any => {},
                        none => {},
                    },
                },
            },
        },
        args_as => {},
        args_rels => {},
        result => {
            _prop => {
                %Sah::Schema::rinci::meta::_dh_props,

                schema => {},
                statuses => {
                    _value_prop => {
                        # from defhash
                        summary => {},
                        description => {},
                        schema => {},
                    },
                },
                partial => {},
                stream => {},
            },
        },
        result_naked => {},
        examples => {
            _elem_prop => {
                %Sah::Schema::rinci::meta::_dh_props,

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
}, {}];

$schema->[1]{_prop}{args}{_value_prop}{meta} = $schema->[1];
$schema->[1]{_prop}{args}{_value_prop}{element_meta} = $schema->[1];

# just so the dzil plugin won't complain about schema not being normalized.
# because this is a circular structure and normalizing creates a shallow copy.

$schema = Data::Sah::Normalize::normalize_schema($schema);

1;
# ABSTRACT:
