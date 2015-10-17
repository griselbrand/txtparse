#!/usr/bin/env perl

use utf8;			#파일 자체를 utf-8로 저장해야 함..
use strict;
use warnings;
use Encode;


open my $fh_in, "<:encoding(CP949)", "sample.txt";

my @list = <$fh_in>;		#take input from STDIN or @ARGV


foreach my $string ( @list ) {
	
	chomp $string;

}

my $result = join (" ", @list);


 if ( $result =~ /\*병리번호: (?<path_num>S15.*?)\s.*?\*등록번호: (?<pt_id>\d+?)\s.*?\*대표검체: (?<sp_name_rp>\w+?)\s.*?\*세부검체: (?<sp_name_sp>\w+),\s?(?<orient>\w+)?\s/) {

	$+{path_num}, $+{pt_id}, $+{sp_name_rp}, $+{sp_name_sp}, $+{orient}
}

