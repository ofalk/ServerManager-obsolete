package SM::Controller::Root;

use strict;
use warnings;
use base 'Catalyst::Controller';

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

=head1 NAME

SM::Controller::Root - Root Controller for this Catalyst based application

=head1 SYNOPSIS

See L<SM>.

=head1 DESCRIPTION

Root Controller for this Catalyst based application.

=head1 METHODS

=cut

=head2 default

By default all the pages return 404

=cut

sub default : Private {
    my ( $self, $c ) = @_;

    $c->response->status(404);
    $c->response->body("404 Not Found");
};

=head2 index

=cut

sub index : Private{
    my ( $self, $c ) = @_;
    my @additional_paths = ( $c->config->{root} );
    $c->stash->{additional_template_paths} = \@additional_paths;
    $c->stash->{template} = 'home.tt';
}



=head2 restricted
Action available only for logged in users.  Checks if user is logged in, if not, forwards to login page.
=cut

# sub restricted : Local : ActionClass('Auth::Check') {
#     my ( $self, $c ) = @_;
# }


=head2 login

Login logic

=cut

# sub login : Local : ActionClass('Auth::Login') {}

=head2 logout

Logout logic

=cut

# sub logout : Local : ActionClass('Auth::Logout') {}


=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {
    my ( $self, $c ) = @_;
}

sub auto : Private {
    my ( $self, $c ) = @_;
    $c->config->{InstantCRUDStylish}{maxrows} = $c->req->query_parameters->{page_size} || 10;
}


=head1 AUTHOR

Catalyst developer

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
