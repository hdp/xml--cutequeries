
use Test;
use XML::Twigx::CuteQueries;
use Data::Dumper;

$Data::Dumper::Sortkeys = 1;
$Data::Dumper::Indent   = 0;

my $CQ = XML::Twigx::CuteQueries->new;
   $CQ->parsefile("example.xml");

my $exemplar = Dumper({
    c1 => [qw(503 509)],
    c2 => [qw(521 523)],
});

my $actual = Dumper($CQ->cute_query(
    atad => {'*' => ['p'=>'']},
));

plan tests => 1;
ok( $actual, $exemplar );