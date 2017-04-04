#!/bin/bash

if [ -z "$1" ]; then 
  echo "no destination folder given"; 
	exit 1
fi

if [ -d "$1" ]; then
  echo "directory already excists"
  read -p "Overwrite?" yn
    case $yn in
        [Yy]* ) rm -r $1;;
        [Nn]* ) exit 1;;
        * ) echo "Please answer yes or no.";;
    esac
fi

n=0

if [ -z "$2" ]; then
	echo "Number of itterations not specified: using 4"
	n=4
else
	n=$2
fi


mkdir -m 777 $1

for i in $(seq 0 $n)
do
	echo "Starting simulation $i."
  make TARGET=cooja nogui=Simulation multicast-sim-50-percent_tosim_noIntRange.csc
	cp summary_results.csv $1/summary_results$i.csv
	cp raw_results.csv $1/raw_results$i.csv
	cp duplicates_results.csv $1/duplicates_results$i.csv
	cp duplicates_raw_results.csv $1/duplicates_raw_results$i.csv
	cp delay_results.csv $1/delay_results$i.csv
done

chmod 666 $1/*.csv

python calculateInterval.py $1 $n
