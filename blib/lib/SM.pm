use strict;
use warnings;

package SM;

use Catalyst::Runtime '5.70';


use Catalyst qw/
	-Debug
	ConfigLoader
	Static::Simple
    Unicode

    StackTrace
    Authentication
    Authorization::Roles
    Session
    Session::Store::FastMmap
    Session::State::Cookie

    Cache
    Cache::FastMmap
    PageCache
    
/;
#	Session
#	Session::Store::FastMmap
#	Session::State::Cookie
#	Authentication
#	Authentication::Store::DBIC
#	Authentication::Credential::Password
#	Auth::Utils

our $VERSION = '0.01';

__PACKAGE__->config( 
  name => 'SM' ,
  default_view => 'TT' ,
    disable_component_resolution_regex_fallback => 1,
    ENCODING => 'utf-8',

  );
__PACKAGE__->config->{'Plugin::Cache'}{backend} = { #DEFAULT backend
  store => "FastMmap",
  class => "Cache::FastMmap",
  storage => "/tmp/cache",
  expires => 3600,
  };

__PACKAGE__->config->{'Plugin::Cache'}{backends}{large_things} = {
  class => "Cache::Memcached",
  data  => '127.0.0.1:11211',
  };

__PACKAGE__->config->{'Plugin::Cache'}{profiles}{thumbnails} = {
#  backend => "thumbs",
  class => 'Plugin::PageCache',
  expires => 3600,
  set_http_headers => 1,
  auto_cache => [
#     '/thumb/.*',
#     '/list',
  ],
# debug => 1,
  # Optionally, a cache hook to be called prior to dispatch to
  # determine if the page should be cached.  This is called both
  # before dispatch, and before finalize.
# cache_hook => 'some_method'
  };



# Start the application
__PACKAGE__->setup;

#
# IMPORTANT: Please look into SM::Controller::Root for more
#

=head1 NAME

SM - Catalyst based application

=head1 SYNOPSIS

    script/sm_server.pl

=head1 DESCRIPTION

Catalyst based application.

=head1 SEE ALSO

L<SM::Controller::Root>, L<Catalyst>

=head1 AUTHOR

Catalyst developer

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
