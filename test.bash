#!/bin/bash
# SPDX-FileCopyrightText: 2023 Yuuki Tsubouchi
# SPDX-License-Indentifier: BSD-3-Clause


ng () {
	echo NG at Line $1
	res=1
}

res=0


out=$(seq 5 | ./plus)
#out2="15\n -15\n 120\n"
#if ["${out}" = "${out2}"]; then
#	[ "$res" = 0 ] && echo OK
 #       exit $res
#else
	#ng ${LINENO}
#fi
#[ "${out}" = 15 ] || ng ${LINENO}
if [ "${out}" = 15 ] && [ "${out}" = -15 ] && [ "${out}" = 120 ]; then
	echo ${LINENO}
     #ng ${LINENO}
fi

	     

[ "$res" = 0 ] && echo OK
exit $res

#-15 ||120 || 8.333333333333332  || ng ${LINENO}
