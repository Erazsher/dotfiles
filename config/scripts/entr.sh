#!/bin/sh

ls ~/.newsboat/urls  | entr -pn newsboat -r &&  herbe "Syncthing updated" && pkill -SIGUSR1 herbe




