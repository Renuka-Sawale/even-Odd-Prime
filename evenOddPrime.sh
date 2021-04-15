#! /bin/bash
declare -a even
declare -a odd
declare -a prime

function even() {
        local n=$1
        for (( i=1; i<=n; i++ ))
        do
                if [ $(( i%2 )) -eq 0 ]
                        then
                        even[$i]=$i
                fi
        done
        echo "even series" ${even[*]}
}

function odd() {
        local n=$1
        for (( i=1; i<=n; i++ ))
        do
                if [ $(( i%2 )) -ne 0 ]
                then
                        odd[$i]=$i
                fi
        done
                echo "odd series" ${odd[*]}
}

function prime() {
        for (( i=1; i<=$n; i++ ))
        do
                c=0
                for (( j=2; j<=$i-1; j++ ))
                do
                        if [ $((i%j)) -eq 0 ]
                        then
                                c=$(( c + 1 ))
                        fi
                done
                if [ $c -eq 0 ]
                then
                        prime[$i]=$i
                fi
        done
        echo "prime series:" ${prime[*]}
}

read -p "enter the number:" n
even="$( even $n )"
odd="$( odd $n )"
prime="$( prime $n )"
