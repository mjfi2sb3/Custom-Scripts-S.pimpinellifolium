#!/bin/env perl
# Perl script for filtering SNP depth to identify positions with a depth of at least 8
# Useage:
# perl secondaryDepth08.pl <input vcf> > <output vcf>


$file1=$ARGV[0];

open(FH_1,"<$file1") or die "can't open $file1\n";

foreach $location (<FH_1>)
{
        $string=$location;
        $string=~s/DPR=//;
        @array=split("\t",$string);
        @array2=split(":",$array[9]);
        @array3=split(",",$array2[5]); 
        $sumOfDepth=$array3[0]+$array3[1]+$array3[2]+$array3[3]+$array3[4]+$array3[5];  

        if ($sumOfDepth >0)
        {
                print "$location";
        }

        else
        {
                next;
        }
        
}

close (FH_1);









# Perl script for filtering SNP depth to identify SNPs with an SNP allele frequency of greater than 75%
# Useage:
# cat <input vcf> | perl VCF_AF.75.pl > <output vcf>

 
$AF_threshold=0.75;

foreach $line (<STDIN>){ 

if ($line =~ /^#/)
{

	#dont do anything!!
	print $line;
}

else{

	chomp $line; 
	@array=split("\t",$line); 
	@array2=split(":",$array[9]); 
	@array3=split(",",$array2[4]); 

	$total=$array3[0]+$array3[1]+$array3[2]+$array3[3];

	$ref=$array3[0]+$array3[1]; 
	$alt=$array3[2]+$array3[3]; 
	$AF=$alt/$total; 

	if ($AF<$AF_threshold) { next; }

	$array[7].= ";AF=$AF";

	for $item (@array){
	
		print "$item\t";
	}	
	
	print "\n";
}	
}



