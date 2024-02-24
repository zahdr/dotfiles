#!/bin/bash

for i in fish newsboat tmux vim ; do
	cd $i && ./setup.sh
	cd ..
done
