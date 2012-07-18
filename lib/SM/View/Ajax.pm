
package SM::View::Ajax;
use strict;
use base 'Catalyst::View::TT';

__PACKAGE__->config(
    # Set to 1 for detailed timer stats in your HTML as comments
    TIMER   => 0,
    # This is your wrapper template located in the 'root/src'
    WRAPPER => 'wrapper.ajax.tt2',
    # Change default TT extension
    TEMPLATE_EXTENSION => '.tt',
    # Set the location for TT files
    INCLUDE_PATH => [
            SM->path_to( 'root', 'src' ),
        ],
);


=head1 NAME

SM::View::TT - TT View for SM

=head1 DESCRIPTION

TT View for SM.

=head1 AUTHOR

=head1 SEE ALSO

L<SM>

ev,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;


