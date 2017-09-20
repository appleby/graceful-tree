# The options for the glpsol commands below were determined by
# brute-force search through a subset of the mip-related options to
# find the combination that resulted in the fastest runtime. The
# program that did the search only ran the solver once with each set
# of options, and made no attempt to figure out whether timing
# differences were statistically significant. Which is to say, there
# may be other options which result in better runtimes. The point was
# only to find a set of options that were "good enough". With the
# below options, glpsol is able to find a solution in < 1s for all the
# t* targets on my ~7 year-old-laptop.

t1 :
	glpsol -m graceful.mod -d $@.dat --noscale --first --bestb --nointopt --cover

t2 :
	glpsol -m graceful.mod -d $@.dat --noscale --last --dfs --intopt --clique

t3 :
	glpsol -m graceful.mod -d $@.dat --scale --drtom --bestp --nointopt --cover

t4 :
	glpsol -m graceful.mod -d $@.dat --scale --first --bestp --nointopt --mir

t5 :
	glpsol -m graceful.mod -d $@.dat --noscale --mostf --dfs --nointopt --cover

t6 :
	glpsol -m graceful.mod -d $@.dat --noscale --last --dfs --nointopt --mir

t7 :
	glpsol -m graceful.mod -d $@.dat --noscale --last --dfs --nointopt --gomory
