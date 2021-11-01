#!/usr/bin/perl
# dnastats.pl by ___
use strict; use warnings;

die "usage: dnastats.pl <dna sequence>\n" unless @ARGV == 1;
my ($seq) = @ARGV;
my $number_of_arguments = @ARGV;
if($number_of_arguments != 1){
	die "usage: dnastats.pl <dna sequence>\n";
}
#!/usr/bin/perl
# list.pl
use strict; use warnings;

my ($x, $y, $z) = (1, 2, 3);
print "x=$x y=$y z=$z\n";
($x, $y) = ($y, $x);
print "x=$x y=$y\n";
#!/usr/bin/perl
# undefined.pl
use strict;
my ($x, $y, $z) = (1, 2, 3, 4, 5);
print "x=$x y=$y z=$z\n";

my ($a, $b, $c) = (1, 2);
print "c=$c\n";
print length($c), "\n";
print $a + $c, "\n";
#!/usr/bin/perl
# array.pl
use strict; use warnings;

my @animals = ('cat', 'dog', 'pig');
print "1st animal in array is: $animals[0]\n";
print "2nd animal in array is: $animals[1]\n";
print "Entire animals array contains: @animals\n";
print "@animals[0]\n"; # bad
push @animals, "fox"; # the array is now longer
my $length = @animals;
print "The array now contains $length elements\n";
my ($first, $second) = @animals;
print "First two animals: $first $second\n";
my @animals2 = @animals; # make a copy of @animals
@animals = (); # assign @animals an empty list -> destroys contents
print "Animals array now contains: @animals\n";
print "Animals2 array still contains @animals2\n";
@animals = ('cat', 'dog', 'pig'); # needed because @animals was emptied
print "Animal at array position 1.2 is $animals[1.2]\n";
print "Animal at array position 1.7 is $animals[1.7]\n";
print "Animal at array position -1 is $animals[-1]\n";
print "array length = ", scalar(@animals), "\n";
print "Animal at array position 'foobar' is ", $animals["foobar"], "\n";
#!/usr/bin/perl
# stringarray.pl
use strict; use warnings;

my @gene_names = qw(unc-10 cyc-1 act-1 let-7 dyf-2);
my $joined_string = join(", ", @gene_names);
print "$joined_string\n";
my $dna = "aaaaGAATTCttttttGAATTCggggggg";
my $EcoRI = "GAATTC";
my @digest = split($EcoRI, $dna);
print "@digest\n";
my @dna = split("", $dna);
print "@dna\n";
