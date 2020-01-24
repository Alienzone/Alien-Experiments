#!/usr/bin/perl -w
use Digest::SHA qw (sha256_hex);
open(FILE,"<Dictionary");
while($ln=<FILE>){
  chomp $ln;
  @m=split(//,$ln);
  $z=0;while($m[$z]){
    if($z==0){
      $p="$m[$z]/";
      `mkdir -vp $p`;}
    else{
      $p=$p."$m[$z]/";
      `mkdir -vp $p`;}
    $z=$z+1;}
  $d=$p;$d=~s/\///g;
  open($fh,">$p"."sha256");
  $s=sha256_hex($d);
  print $fh "$s";
  close $fh;
  print "$d == $s\n";
  } # END FILE LINE READ
close FILE;
1;
