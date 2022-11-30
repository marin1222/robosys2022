#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Marin Yasuda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	      echo NG at Line $1
	            res=1
	    }
	    
	    res=0
	    
	    ### I/O TEST ###
	    out=$(seq 5 | ./plus_stdin)
	    [ "${out}" = 15 ] || ng ${LINENO}
	   
	    ### STRANGE INPUT ###
	    out=$(echo あ | ./plus_stdin)
	    [ "$?" = 1 ]      || ng ${LINENO}
	    [ "${out}" = "" ] || ng ${LINENO}

	    out=$(echo | ./plus_stdin) 
	    [ "$?" = 1 ]      || ng ${LINENO}
	    [ "${out}" = "" ] || ng ${LINENO}
		      　 

	    [ "$res" = 0 ] && echo OK
	    exit $res
