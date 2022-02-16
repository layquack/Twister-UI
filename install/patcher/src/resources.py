import os
import subprocess as sp
from os import path
from tkinter import *
from tkinter import ttk
from PIL import Image, ImageTk

### update stuff
app_version = "Version 0.1.0\n"
def get_app_version():
	return app_version

img_path = os.path.dirname('logo.png')
webversion = sp.getoutput('wget -q https://twisteros.com/Patches/latestui.txt && head -n 1 latestui.txt && rm latestui.txt')
twistver = sp.getoutput('twistver')
