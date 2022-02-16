#!/usr/bin/python3
import os
import datetime
import wallpaper as wp
from os.path import expanduser

xwallpaper=wp.config['DEFAULT']['wallpaper']
user_path = expanduser("~")
sys_date = datetime.datetime.now().time()

### List of all images as arrays
BigSur = ["BigSur2.jpg", "BigSur3.jpg", "BigSur4.jpg", "BigSur5.jpg", "BigSur6.jpg", "BigSur7.jpg", "BigSur8.jpg", "BigSur1.jpg"]
Catalina = ["Catalina2.jpg", "Catalina3.jpg", "Catalina4.jpg", "Catalina5.jpg", "Catalina6.jpg", "Catalina7.jpg", "Catalina8.jpg", "Catalina1.jpg"]
Mojave = ["Mojave2.jpg", "Mojave3.jpg", "Mojave4.jpg", "Mojave5.jpg", "Mojave6.jpg", "Mojave7.jpg", "Mojave8.jpg", "Mojave1.jpg"]

def set_theme(theme):

	xdir = theme[:-5]
	print(xdir)
	print("Setting up theme as "+str(theme))
	os.system('rm '+user_path+'/Backgrounds/main/xwallpaper.jpg')
	os.system('cp '+user_path+'/Backgrounds/'+xdir+'/'+theme+' '+user_path+'/Backgrounds/main/xwallpaper.jpg')
	os.system('export DISPLAY=:0.0')
	os.system('xfdesktop -reload')

	
### x - hour, images - array with wallpapers
def f(x, images):
	print(str(x)+'<-- its x')
	if x >= 6 and x < 8:
		set_theme(images[0])
		print(file[0])
	if x >= 8 and x < 10:
		set_theme(images[1])
	if x >= 10 and x < 16:
		set_theme(images[2])
	if x >= 16 and x < 18:
		set_theme(images[3])
	if x>= 18  and x < 19:
		set_theme(images[4])
	if x>=19 and x < 20:
		set_theme(images[5])
	if x>=20 and x < 21:
		set_theme(images[6])
	if x >= 21 or x<6:
		set_theme(images[7])

if int(xwallpaper)==1:
	f(int(sys_date.hour), BigSur)
if int(xwallpaper)==2:
	f(int(sys_date.hour), Catalina)
if int(xwallpaper)==3:
	f(int(sys_date.hour), Mojave)