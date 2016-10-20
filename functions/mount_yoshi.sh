#!/bin/bash

mkdir -p ~/yoshi/scratch
mkdir -p ~/yoshi/home

sshfs yoshi:/scratch/fbc23 ~/yoshi/scratch
sshfs yoshi:/home/zelda/fbc23 ~/yoshi/home
