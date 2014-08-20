#!/bin/bash

results="index.html"
tmp=".restmp"
out="out"

# <TR><TD><A HREF="http://moss.stanford.edu/results/92903586/match249.html">ges82/assignment9.html (70%)</A>
#    <TD><A HREF="http://moss.stanford.edu/results/92903586/match249.html">nrv22/assignment9.html (65%)</A>
#		<TD ALIGN=right>43

if [ -f ${out} ]; then
	/bin/rm -f "${out}"
fi

/bin/grep -A 2 -E -e '^<TR><TD><A' "$results" > "$tmp"

while read line; do
	url=`/bin/echo $line | /usr/bin/cut -d '"' -f 2 | /usr/bin/cut -d '"' -f 1 | /usr/bin/cut -d '/' -f 5-`
	
	# Student 1 and his/her percent
	a=`/bin/echo $line | /usr/bin/cut -d '>' -f 4 | /usr/bin/cut -d '/' -f 1`
	ap=`/bin/echo $line | /usr/bin/cut -d '(' -f 2 | /usr/bin/cut -d '%' -f 1`
	read line
	# Student 2 and his/her percent
	b=`/bin/echo $line | /usr/bin/cut -d '>' -f 3 | /usr/bin/cut -d '/' -f 1`
	bp=`/bin/echo $line | /usr/bin/cut -d '(' -f 2 | /usr/bin/cut -d '%' -f 1`

	read line
	# Number of lines identical
	lines=`/bin/echo $line | /usr/bin/cut -d '>' -f 2`
	/bin/echo -e "${url}\t${a}\t${ap}\t${b}\t${bp}\t${lines}" >> ${out}
done < "$tmp"
/bin/rm -f "$tmp"


