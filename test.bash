#!/bin/bash
# SPDX-FileCopyrightText: 2023 Yuuki Tsubouchi
# SPDX-License-Indentifier: BSD-3-Clause


ng () {
	echo NG at Line $1
	res=1
}

res=0

#found=0

out=$(seq 5 | ./plus)
readarray -t out_array <<< "$out"
for result in "${out_array[@]}"; do
	[ "$result" = 15 ] || [ "$result" = -15 ] || [ "$result" = 120 ] || [ "$result" = 55 ] || [ "$result" = 55 ] || [ "$result" = -55 ] || ng ${LINENO}

    #if [ "$result" != 1 ]; then
#	    found=1
 #   fi 
         #ng ${LINENO}
        
    
done
#if [ "$found" -eq 1 ]; then
 #   ng ${LINENO}
#else
   

#[ "${out}" = 15 ] && [ "${out}" = -15 ] && [ "${out}" = 120 ] && [ "${out}" = 55 ] && [ "${out}" = -55 ] || ng ${LINENO}
#TY=$'\n' read -r -d'' -a outp_lines <<EOF
#15
#-15
#120
#55
#-55 
#EOF

#TY=$'\n' read -r -d'' -a OUT_lines <<< "$out"
#for i in "${!outp_lines[@]}"; do
#    if [[ "${outp_lines[$i]}" != "${OUT_lines[$i]}" ]]; then
#        ng "${LINENO}"
#    fi
#done
#out2="15,-15,120,55,-55"
#["${out}" = 15] ||  ng ${LINENO}
 #[ "${out}" = 15 ] && [ "${out}" = -15 ] && [ "${out}" = 120 ] && [ "${out}" = 55 ] ||  ng ${LINENO}
#["${out}" = "${out2}"] || ng ${LINENO}
#[ "${out}" = "${out2}" ] || ng ${LINENO}   
#[ "${out}" =15 -o "${out}" =-15 -o "${out}" =120 -o "${out}" =55 -o "${out}" =-55 ] || ng ${LINENO} 
#[ "${out}" = 15 ] || ng ${LINENO}
#if [ "${out}" = 15 ] && [ "${out}" = -15 ] && [ "${out}" = 120 ] && [ "${out}" = 55 ]; then
#	ng ${LINENO}
     #echo ${LINENO}
#fi

#out=$(seq 10 | ./plus)
#[ "${out}" = "55,-55,3628800,385,-385" ] || ng ${LINENO}
#if [ "${out}" != "55,-55,3628800,385" ]; then
#    ng ${LINENO}
#fi
#[ "${out}" = 55,-55,3628800,385,-385 ] || ng ${LINENO}
#if [ "${out}" = 55 ] && [ "${out}" = -55 ] && [ "${out}" = 3628800 ] && [ "${out}" = 385 ]; then
#        ng ${LINENO}
#fi	    

[ "$res" = 0 ] && echo OK
exit $res

