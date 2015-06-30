#!/bin/sh

rsync -avz -e "ssh" --chmod=go=rX --chmod=u=rwX --delete build/ torsnet6cs@vda.univie.ac.at:/var/www/uncertainty2015/

