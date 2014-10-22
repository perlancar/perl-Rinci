package Rinci::resmeta; # just to make PodWeaver happy

# DATE
# VERSION

1;
# ABSTRACT: Function/method result metadata

=head1 SPECIFICATION VERSION

 1.1


=head1 INTRODUCTION

This document describes metadata for function/method result. This specification
is part of L<Rinci>. Please do a read up on it first, if you have not already
done so.


=head1 SPECIFICATION

There are currently several properties being used:


=head2 Property: undo_data => ANY

(DEPRECATED) Explained in C<undo> feature section in L<Rinci::function>.


=head2 Property: perm_err => bool

Indicate that error is permanent (instead of temporary/transient). This is to
provide a feature like that found in SMTP/POP protocol, where 4xx codes indicate
transient errors and 5xx permanent ones.

=head2 Properties: func.* => ANY

These properties allow function to return extra stuffs. Usually done to avoid
breaking format of existing result (to maintain API compatibility). The
attributes after C<func.> is up to the respective function. An example is the
C<get_args_from_argv()> function in the L<Perinci::Sub::GetArgs::Argv> Perl
module. The function returns C<$args> but from v0.26 it also wants to give hints
about whether or not there are missing arguments. It can do this via
C<func.missing_arg> result metadata.

=head2 Properties: cmdline.*

Interpreted by L<Perinci::CmdLine>. See its documentation for more detail.


=head2 Property: logs => ARRAY OF HASH

Store log of events happening to this result, stored chronologically (older
first). Each log should be a hash which should have at least the following keys:
C<time> (Unix timestamp), C<type> (string).

Normally, the first element of the log will contain information about who
produced the result and where/when. It has the C<type> key with the value of
C<create>. It should be a hash with the following keys:

=over

=item * package => STR

Package (namespace) where this result is produced.

=item * file => STR

File name where the result is created. Might be a relative or absolute path.

=item * line => INT

Line number where the result is created.

=item * func => STR

Function name where this result is produced.

=item * stack_trace => ARRAY

Optional, a stack trace. In Perl this can be produced by using << [caller(1),
caller(2), ...] >>.

=back

=head2 Property: prev => ARRAY

Store "previous result". Result MUST be enveloped. Usually useful when tracing
errors, especially in conjunction with C<logs>: when reporting error that
results from a call to another function, the original result can be set here, to
preserve information. See L<Perinci::Sub::Util>'s C<err()> for a convenience
function for this, and L<Perinci::CmdLine>'s way of displaying it.

Example:

 sub f1 {
     ...
     if (error) { return [500, "Can't f1: blah"] }
     ...
 }

 sub f2 {
     ...
     my $res = f1(...);
     if ($res is error) { return [500, "Can't f2", undef, {prev=>$res}] }
     ...
 }

 sub f3 {
     ...
     my $res = f1(...);
     if ($res is error) { return [500, "Can't f3", undef, {prev=>$res}] }
 }


=head2 Property: encoding => str

Specify encoding for result. Currently the only recommended value is C<base64>.
This applies to actual result (third element in enveloped result) as well as all
values of C<func.*> properties. Result as well as all C<func.*> properties must
be strings. This can be used for example when enveloped result is represented in
a serialization format that is not binary-safe, e.g. JSON:

 [200, "OK", "AAAA", {"encoding":"base64", "func.extra":"dWphbmc="}]

In the above example, actual result is 3 zero bytes ("\0\0\0") encoded in
base64, while C<func.extra> contains the string "ujang".


=head1 FAQ


=head1 SEE ALSO

L<Rinci>

=cut
