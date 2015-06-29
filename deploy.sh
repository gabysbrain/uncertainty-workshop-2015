#!/bin/sh

rsync -avz -e "ssh" build/ torsnet6cs@vda.univie.ac.at:/var/www/uncertainty2015/

