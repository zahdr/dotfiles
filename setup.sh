#!/bin/bash

for i in tmux vim newsboat; do
	cd $i && ./setup.sh
	cd ..
done
