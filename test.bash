#!/bin/bash
# SPDX-FileCopyrightText: 2022 Marin Yasuda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus_stdin)

[ "${out}" = 15 ]

[ "$res" = 0 ] && echo OK
exit $res
