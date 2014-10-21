#!perl -T

use strict;
use warnings;

use Test::FailWarnings -allow_deps => 1;
use Test::More tests => 1;


BEGIN
{
	use_ok( 'Git::Repository::Plugin::Blame::Cache' );
}

diag( "Testing Git::Repository::Plugin::Blame::Cache $Git::Repository::Plugin::Blame::Cache::VERSION, Perl $], $^X" );
