#!/bin/bash

for i in newsboat tmux vim ; do
	cd $i && ./setup.sh
	cd ..
done
