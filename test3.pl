#!/usr/bin/perl -w
use Digest::SHA qw (sha256_hex);
open(FILE,"<Dictionary");   	## open filename
while($ln=<FILE>){          	## on each line if word is found do
  chomp $ln;					## remove whitespace etc
  $ws=sha256_hex($ln);			## take sha256 of word
  @m=split(//,$ws);				## split chars of sha
  $z=0;while($z<=63){			## step through chars 1x1
    if($z==0){              	## if 1st char
      $p="$m[$z]/";         	## set root pathname to 1st char
      `mkdir -vp $p`;			## make directory if not exist
      print "$p\n";}			## show path
    else{						## otherwise
      $p=$p."$m[$z]/";      	## add to path [n] char
      `mkdir -vp $p`;       	## make directory if not exist
      print "$p\n";}			## show path
    $z=$z+1;}					## increment counter
  $p="$p"."data";				## add data to path
  open($fh,">$p");				## open data at end of path
  print $fh "$ln";				## write the word to data
  close $fh;					## close file
  print "$p\n";					## show path
  print "$ws : data == $ln\n";	## show sha - word mapping
  } 							## END FILE LINE READ
close FILE;						## failsafe file close
1;								## routine exit
