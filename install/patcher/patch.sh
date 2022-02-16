#!/bin/bash
cd ${HOME}/patcher/src/
rm -f ${HOME}/patcher/src/latestui.txt
python3 ${HOME}/patcher/src/main.py ${HOME} 1 0 > log.txt
