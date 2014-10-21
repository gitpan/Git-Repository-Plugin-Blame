#!perl -T

use strict;
use warnings;

use Git::Repository::Plugin::Blame::Line;
use Test::Deep;
use Test::Exception;
use Test::More tests => 3;


my $code = 'Test code';
my $blame_line;
lives_ok(
	sub
	{
		$blame_line = Git::Repository::Plugin::Blame::Line->new(
			line_number       => 10,
			line              => $code,
			commit_attributes => {},
			commit_id         => '7df7d2b1a4a0603b4ab51ccd44323c77d2551a7d',
		);
	},
	'Create a Git::Repository::Plugin::Blame::Line object.',
);

can_ok(
	$blame_line,
	'get_line',
);

is(
	$blame_line->get_line(),
	$code,
	'The retrieved line matches what was set with new().'
);
