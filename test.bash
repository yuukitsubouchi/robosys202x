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
[ "${out}" = "15,-15,120,55,-55,0.2616000758745118,4.99162680528163,0.26219908917244095,8.382332347441762" ] || ng $LINENO

#readarray -t out_array <<< "$out"
#for result in "${out_array[@]}"; do
	#[ "${out_array[0]}" = 15 ] || [ "${out_array[1]}" = -15 ] || [ "${out_array[2]}" = 120 ] || [ "${out_array[3]}" = 55 ] || [ "${out_array[4]}" = 55 ] || [ "${out_array[5]}" = -55 ] || ng ${LINENO}

 #   if [ "$result" != 15 ]; then
#	    found=1
#	ng ${LINENO}
#	  break
 #   fi 
         #ng ${LINENO}
        
   
#done
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

out=$(seq 10 | ./plus)
[ "${out}" = "55,-55,3628800,385,-385,0.9572536262145394,9.94145901464014,0.9653401410764146,22.4682781862041" ] || ng ${LINENO}
#if [ "${out}" != "55,-55,3628800,385" ]; then
#    ng ${LINENO}
#fi
#[ "${out}" = 55,-55,3628800,385,-385 ] || ng ${LINENO}
#if [ "${out}" = 55 ] && [ "${out}" = -55 ] && [ "${out}" = 3628800 ] && [ "${out}" = 385 ]; then
#        ng ${LINENO}
#fi
out=$(seq 15 | ./plus)
[ "${out}" = "120,-120,1307674368000,1240,-1240,2.0816663074548973,14.811825416171908,2.120422398284022,40.46919660014261" ] || ng ${LINENO}




[ "$res" = 0 ] && echo OK

exit $res

