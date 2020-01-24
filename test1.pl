#!/usr/bin/perl
use Digest::SHA qw (sha256_hex);

### TRIGGERWORD
$tword1='abcdef';

# OPEN LOG FILE
open(FILE,">>testlog1");

# STARTING TIMESTAMP
$t1=time; # Time at start
print FILE "\n\n$t1 ##### Started Session\n";
print "\n\n$t1 ##### Started Session\n";

# STARTING SEED DATA - MUST BE RANDOM GENERATED TO AVOID DETERMINISM AND REPEATABLE OUTPUT
@ch=('0'..'9','A'..'Z','a'..'z');
$seed='';foreach (1..64){ $seed.=$ch[rand @ch]; }
print FILE "Starting Seed Data: $seed\n"; 
print "Starting Seed Data: $seed\n"; 

# TAKE 1st SHA256 OF SEED
$sha1=sha256_hex($seed);
print FILE "Starting SHA Hash: $sha1\n"; 
print "Starting SHA Hash: $sha1\n"; 

# TRIGGER WORD - WHERE TO STOP
print FILE "Trigger Word: $tword1\n"; 
print "Trigger Word: $tword1\n"; 

# DOES SHA CONTAIN TRIGGER WORD? IF NOT ROTATE SHA1 BY HASHING SHA1 WITH SHA1
$run=1;$t2=0;$t3=0;
while($run){$n=1;
  while($n){
  if($sha1 =~ m/$tword1/){
    $time=time; $t2=($time - $t1);
    $t3=$t3+$t2;
    print FILE "Trigger Word: $tword1\nTrigger word found!\nTime Taken: $t2 Seconds\nSteps Taken: $n\n";
    print "Trigger Word: $tword1\nTrigger word found!\nTime Taken: $t2 Seconds\nSteps Taken: $n\n";
    print FILE "Last Seed Data: $seed\n"; 
    print "Last Seed Data: $seed\n";
    print FILE "Last SHA Hash: $sha1\n"; 
    print "Last SHA Hash: $sha1\n";
    print FILE "Runtime Iterations: $run\n"; 
    print "Runtime Iterations: $run\n"; 
    print FILE "Total runtime: $t3 Seconds\n";
    print "Total runtime: $t3 Seconds\n";
    print FILE "-------------------------------------------------------\n";
    print "-------------------------------------------------------\n";
    if($n==1){
#      $time=time;
#      $t3=($time - $t1);
#      print FILE "Trigger word found!\nTime Taken:$t2 Seconds\nSteps Taken: $n\n";
#      print FILE "Last Seed Data: $seed\n"; 
#      print "Last Seed Data: $seed\n";
#      print FILE "Last SHA Hash: $sha1\n"; 
#      print "Last SHA Hash: $sha1\n";
#      print FILE "Runtime Iterations: $run\n"; 
#      print "Runtime Iterations: $run\n"; 
#      print FILE "Total runtime: $t3 Seconds\n";
#      print "Total runtime: $t3 Seconds\n";
      print FILE "Program Exit\n"; 
      print "Program Exit\n"; 
      close FILE;exit 1;}
    @ch=('0'..'9','A'..'Z','a'..'z');
    $seed='';foreach (1..64){ $seed.=$ch[rand @ch]; }
    print "New Seed Data: $seed\n"; 
    $sha1=sha256_hex($seed);
    print "New SHA Hash: $sha1\n"; 
    $t1=time;
    $n=0;}
  else{
    $sha1=sha256_hex($sha1);
#    print "Current SHA Hash: $sha1\n";
#    print "Current Iteration: $run\n";
#    print "Current Time: $t3\n";
    $n=$n+1;}}
  $run=$run+1;}

# CLOSE LOG FILE
close FILE;

# EXIT
1;
