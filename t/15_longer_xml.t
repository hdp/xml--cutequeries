
use strict;
use Test;
use XML::CuteQueries;
use Data::Dumper;

$Data::Dumper::Sortkeys = 1;
$Data::Dumper::Indent   = 0;

my $CQ = XML::CuteQueries->new;
   $CQ->parsefile("example3.xml");

my $exemplar = Dumper([
    { date=>"Sat Jul 25 10:35:32 EDT 2009", 'title'=>'blarg1', text=>'' },
    { date=>"Sat Jul 25 10:35:51 EDT 2009", 'title'=>'blarg2', text=>'' },
]);

my $actual = Dumper([$CQ->cute_query('story' => {
    date     => '',
    '@title' => '',
    text     => '',
})]);

plan tests => 1;
ok( $actual, $exemplar );
