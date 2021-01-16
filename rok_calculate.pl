#! /usr/bin/perl -w
use strict;
use Getopt::Long;
my $one=0;
my $five=0;
my $ten=0;
my $fifteen=0;
my $thirty=0;
my $sixty=0;
my $threehour=0;
my $eighthour=0;
my $fifhour=0;
my $twenty4hour=0;
my $threeday=0;
my $sevenday=0;
my $thirtyday=0;
GetOptions(
        "one=i" =>\$one,
        "five=i" =>\$five,
        "ten=i" =>\$ten,
        "fifteen=i" =>\$fifteen,
        "thirty=i" =>\$thirty,
        "sixty=i" =>\$sixty,
        "threehour=i" =>\$threehour,
        "eighthour=i" =>\$eighthour,
        "fifhour=i" =>\$fifhour,
        "twenty4hour=i" =>\$twenty4hour,
        "sevenday=i" =>\$sevenday,
        "thirtyday=i" =>\$thirtyday
        );
        my $result=$thirtyday*30+$sevenday*7+$threeday*3+$twenty4hour*1+$fifhour*(15/24)+$eighthour*(1/3)+$threehour*(1/8)+$sixty*(1/24)+$thirty*(1/48)+$fifteen*(1/96)+$ten*(1/144)+$five*(1/288)+$one*(1/1440);
        my ($day) = $result=~/(\d+)/;
        my $hour_dot = ($result-$day)*24;
        my ($hour) = $hour_dot=~/(\d+)/;
        my $min = ($hour_dot-$hour)*60;
        print "$day days "."$hour hours ";
        printf "%.0f", $min;
        print" mins";
