#!/bin/bash
# SPDX-FileCopyrightText: 2023 Yuuki Tsubouchi
# SPDX-License-Indentifier: BSD-3-Clause


ng () {
	echo NG at Line $1
	res=1
}

res=0


out=$(seq 5 | ./plus)
#[ "${out}" = 15 ] || ng ${LINENO}
if [ "${out}" = 15 ] && [ "${out}" = -15 ] && [ "${out}" = 120 ] && [ "${out}" = 55 ]; then
	ng ${LINENO}
     #echo ${LINENO}
fi

out2=$(seq 10 | ./plus)
if [ "${out2}" = 55 ] && [ "${out2}" = -55 ] && [ "${out2}" = 3628800 ] && [ "${out}" = 385 ]; then
        ng ${LINENO}
fi
	    

[ "$res" = 0 ] && echo OK
exit $res

