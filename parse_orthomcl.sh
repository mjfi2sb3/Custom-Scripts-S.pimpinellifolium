!#/bin/bash
##Code utilized to analyze OrthoMCL outputs for visualization with InteractiVenn (Heberle et al., 2015).

##To identify species-specific singletons:
grep "Spi" singletons.txt >> singletons.Spi.txt
grep "Sly" singletons.txt >> singletons.Sly.txt
grep "Spe" singletons.txt >> singletons.Spe.txt
grep "Stu" singletons.txt >> singletons.Stu.txt

##To isolate ortholog groups that countain at least one sequence from each species:
grep "Spi" groups.txt > Spi.group
grep "Sly" groups.txt > Sly.group
grep "Spe" groups.txt > Spe.group
grep "Stu" groups.txt > Stu.group

##To identify the ortholog groups that countain at least one sequence from each species
## for visualization with InteractiVenn (Heberle et al., 2015. BMC Bioinformatics, 16, 169.):
for i in `cat Spi.group` ; do echo "$i" | grep "OrthoMCL" >> Spi.group_edit ; done
for i in `cat Sly.group` ; do echo "$i" | grep "OrthoMCL" >> Sly.group_edit ; done
for i in `cat Spe.group` ; do echo "$i" | grep "OrthoMCL" >> Spe.group_edit ; done
for i in `cat Stu.group` ; do echo "$i" | grep "OrthoMCL" >> Stu.group_edit ; done
