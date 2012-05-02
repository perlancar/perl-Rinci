package Rinci::Schema;

use 5.010;
use strict;
use warnings;

# VERSION

# only validates metadata v1.1

# Rinci::metadata
our $base = ['hash' => {
    # XXX handle: ignore keys prefixed with _
    # XXX handle: handle .alt.lang.* suffix
    req_keys => ['v'],
    keys => {
        v => ['float*' => {
            in => [1.1],
        }],

        default_lang => ['str' => {
            # XXX regex
            default => 'en_US',
        }],

        name => ['str*' => {
            # XXX regex
        }],

        summary => ['str*' => {
            # XXX warn if contains newline
        }],

        tags => ['array*' => {
            of => 'str*',
        }],

        links => ['array*' => {
            # XXX: schema for each link
            of => 'hash*',
        }],

        description => ['str*' => {
        }],

        text_markup => ['str' => {
            in => [qw/markdown org none/],
            default => 'none',
        }],

    },
}];

our $function = ['Rinci::metadata' => {
    '[merge+]keys' => {
        is_func => ['bool' => {
            default => 1,
        }],

        is_meth => ['bool' => {
            default => 0,
        }],

        is_class_meth => ['bool' => {
            default => 0,
        }],

        args => ['hash*' => {
            # XXX: regex for arg
            # XXX: schema for each arg
        }],

        args_as => ['str*' => {
        }],

        result => ['hash*' => {
            keys => {
                schema => 'schema*',
            },
        }],

        result_naked => ['bool' => {
            default => 0,
        }],

        examples => ['hash*' => {
            # XXX: schema for each example
        }],

        features => ['hash' => {
            default => {},
            keys => {
                reverse => 'bool',
                undo => 'bool',
                dry_run => 'bool',
                pure => 'bool',
                immutable => 'bool',
            },
        }],

        # XXX define this as 'Rinci::function::deps'
        deps => ['hash' => {
            default => {},
            keys => {
                env  => 'str*',
                exec => 'str*',
                code => 'str*',
                any  => ['array*' => {of=>'Rinci::function::deps*'}],
                all  => ['array*' => {of=>'Rinci::function::deps*'}],
                none => ['array*' => {of=>'Rinci::function::deps*'}],
            },
        }],

    },
}];

our $package = ['Rinci::metadata' => {
    '[merge+]keys' => {
    },
}];

our $variable = ['Rinci::metadata' => {
    '[merge+]keys' => {
    },
}];

1;
# ABSTRACT: Schemas for Rinci metadata

