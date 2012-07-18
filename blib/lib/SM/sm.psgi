use strict;
use warnings;

use SM;

my $app = SM->apply_default_middlewares(SM->psgi_app);
$app;

