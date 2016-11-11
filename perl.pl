=for comment
use v5.10.0;
use warnings;
use strict;

#say "Hello World!";

my $str='String 1GIANT FISHString 2.;ljhihuiiubbiuniom;l.;.nbbbiuString 1GIANT FISHString 2';

=for comment 
#(my $wanted)= $str =~ /String 1(.*)String 2/;
(my $wanted)=regmatches($str, gregexpr('(?<=strt).*?(?=stp)', $str));
#say "my $str";
say $wanted;


$_=~m/String 1 ([^\]]*) Strin 2/g;
my $info=$1;
say $myinfo"



 
my $filename = 'data.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
	or die "Could not open file '$filename' $!";
     
while (my $row = <$fh>) {
   chomp $row;
   print "$row\n";
}
=cut

use strict;
use warnings FATAL => 'all';
use autodie qw(:all);

my $a = 5;
my $b = 3;
my $c = 10;

#### WRITE ####
{
    open my $fh, '>', 'output.txt';
    print {$fh} $a . "\n";
    print {$fh} $b . "\n";
    print {$fh} $c . "\n";
    close $fh;
}
