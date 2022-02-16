#!/usr/bin/python
import sys
import os
from os.path import expanduser
user = sys.argv[1]
home_path = expanduser("~%s" % user)
dir_path = os.path.dirname(os.path.realpath(__file__))

print(dir_path)
f_content = "[Desktop Entry]\nName=Twister UI Patcher\nComment=Updates Twister UI\nExec="+dir_path+"/src/start.sh\nIcon="+dir_path+"/src/icon.png\nCategories=System;\nVersion=1.0.0\nType=Application\nTerminal=false\nStartupNotify=true"
print(f_content)

app_dir = home_path+"/.local/share/applications"
x_dir = app_dir+"/patcher.desktop"

if not os.path.isdir(app_dir):
    os.mkdir(app_dir)

print("Saved menu shortcut to %s" % x_dir)
f2 = open(x_dir, "w+")
f2.write(f_content)
f2.close
