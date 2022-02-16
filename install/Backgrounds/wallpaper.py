#!/usr/bin/python3
# TODO:
# 1. move /Backgrounds into /usr/share/backgrounds
# 2. !DONE use user variable ${HOME} to get path and rewrite all paths
# 3. !DONE configure cron to run script on specify hours
# 4. !DONE MAKE GUI!
# 5. finish logical layer of this app
# 5a. add/remove stuff from /etc/rc.local
# 6. some config in future? configparser could be usefull


# COMMANDS
#sudo -H -u pi bash -c 'python3 wallpaper.py'
#xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /home/pi/Backgrounds/main/xwallpaper.jpg


import os
import datetime
import configparser
import tkinter as tk
import subprocess as sp
from tkinter import *
from tkinter import ttk
from PIL import Image, ImageTk
from os.path import expanduser
from tkinter import messagebox as msb


dynamic_wallpaper_path = " ${HOME}/Backgrounds/main/xwallpaper.jpg"
default_path = " /usr/share/backgrounds/raspbian-x-nighthawk.png"
### List of all xfce desktop enviroments
commands = ["xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s",
"xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s"]
user_path = expanduser("~")

print(user_path)
sys_date = datetime.datetime.now().time()
#print(sys_date.hour)

### List of all images as arrays
BigSur = ["BigSur2.jpg", "BigSur3.jpg", "BigSur4.jpg", "BigSur5.jpg", "BigSur6.jpg", "BigSur7.jpg", "BigSur8.jpg", "BigSur1.jpg"]
Catalina = ["Catalina2.jpg", "Catalina3.jpg", "Catalina4.jpg", "Catalina5.jpg", "Catalina6.jpg", "Catalina7.jpg", "Catalina8.jpg", "Catalina1.jpg"]
Mojave = ["Mojave2.jpg", "Mojave3.jpg", "Mojave4.jpg", "Mojave5.jpg", "Mojave6.jpg", "Mojave7.jpg", "Mojave8.jpg", "Mojave1.jpg"]

### TwisterOS wallpapers

twist_themes = [".iraspbian.twid", ".iraspbian-dark.twid", ".raspbian7.twid", ".nighthawk.twid", ".raspbianx.twid", ".raspbianxp.twid", ".twisteros.twid", ".raspbian95.twid", ".twisteros-dark.twid", ".iraspbiansur.twid", ".iraspbiansur-dark.twid"]
twist_wp = ["CatalinaRecreation.jpg", "CatalinaRecreation.jpg", "Raspbian7.png", "Twister10.png", "Twister10.png", "RaspbianXP.jpg", "TwisterOS.png", "Clouds.png", "TwisterOS.png", "BigSurRecreation.jpg", "BigSurRecreation.jpg"]

def set_twist_wp():
	for theme in twist_themes:
		if os.path.exists(str(user_path)+"/"+theme):
			print("works")
			theme_index = twist_themes.index(theme)
			print("Setting up as "+twist_wp[theme_index])
			for xcommand in commands:
				os.system(xcommand+" /usr/share/backgrounds/"+twist_wp[theme_index])
	
		

config = configparser.ConfigParser()
if os.path.exists('Backgrounds/bg.config'):
	config.read('Backgrounds/bg.config')
	print("Exist and read")
else:
	print("Creating config...")
	config['DEFAULT'] = {'wallpaper': '0','state': 'disable'}
	with open(user_path+'/Backgrounds/bg.config', 'w+') as configfile:
		config.write(configfile)


def set_enable(xvar):
	cronsetup=False
	crontext = sp.getoutput('crontab -l')

	if "change_theme" in crontext:
		cronsetup=True
		print("I found change_theme.py!")
		
	print(cronsetup)

	
	if cronsetup==True and xvar.get()==1:
		print("Dont change crontable bc it's already enabled")
	if cronsetup==False and xvar.get()==1:
		os.system('crontab -l | { cat; echo "0 * * * * sudo -H -u $USER bash -c \'python3 Backgrounds/change_theme.py\'"; } | crontab -')
		os.system('sudo service cron restart')
		for xcommand in commands:
			os.system(xcommand+dynamic_wallpaper_path)
		print("Setup crontab...")
	if cronsetup==True and xvar.get()==0:
		print("Removing")
		os.system('crontab -l | grep -v \'change_theme\' | crontab -')
		os.system('sudo service cron restart')
		set_twist_wp()
		#for xcommand in commands:
		#	os.system(xcommand+default_path)
		print("Removing from crontab...")
	if cronsetup==False and xvar.get()==0:
		print("Nothing changed bc it's already disable")


def push(xvar, zvar):
	print(xvar.get())
	print(zvar.get())
	set_enable(xvar)
	if xvar.get() == 0:
		config.set('DEFAULT', 'state', 'disable')
	if xvar.get() == 1:
		config.set('DEFAULT', 'state', 'enable')
	config.set('DEFAULT', 'wallpaper', str(zvar.get()))
	with open('Backgrounds/bg.config', 'w') as configfile:
		config.write(configfile)
	if xvar.get() == 1:
		os.system('python3 Backgrounds/change_theme.py')
	sys.exit(0)
	
class Window:

	def __init__(master):
		

		master = tk.Tk()
		
		var = IntVar()
		var2= IntVar()
		p1=False
		p2=False
		master.geometry("800x450")
		master.title("Wallpaper")
		icon = PhotoImage(file = user_path+"/Backgrounds/icon.png")
		master.iconphoto(True, icon)
		mainframe = Frame(master)
		mainframe.pack(padx=10, pady=10)	
		
		titleframe = Frame(mainframe)
		titleframe.pack(fill=X)
		
		title_label = tk.Label(titleframe, text="Dynamic Wallpaper", font=("TkDefaultFont", 11, "bold"))
		title_label.pack(side=LEFT)
		
		radioframe = Frame(mainframe)
		radioframe.pack(fill=X, pady=15)
		
		option_enable = Radiobutton(radioframe, text="Enable", variable=var, value=1, command=lambda:setstate(), cursor="hand2")
		option_enable.pack(side=LEFT)
		
		option_disable = Radiobutton(radioframe, text="Disable", variable=var, value=0, command=lambda:setstate(), cursor="hand2")
		option_disable.pack(side=LEFT)

		wallpaperframe=Frame(mainframe, bg="White", highlightthickness=1, highlightbackground="gray")
		wallpaperframe.pack(fill=X)
		
		

		
		BigSurLabel = tk.Label(wallpaperframe, text="BigSur", font=("TkDefaultFont", 11, "bold"), bg="White")
		BigSurLabel.grid(row=0, column=0, pady=10)
		
		loadimg = Image.open(user_path+"/Backgrounds/preview/BigSurPreview.png")
		img = ImageTk.PhotoImage(image=loadimg)       
		img_label = tk.Label ( wallpaperframe, image=img, bg="White")
		
		img_label.image = img
		img_label.grid(row=1, column=0, padx=15)
		
		option_BigSur = Radiobutton(wallpaperframe, variable=var2, value=1,  bg="White", cursor="hand2")
		option_BigSur.grid(row=2, column=0, pady=10)

		
		CatalinaLabel = tk.Label(wallpaperframe, text="Catalina", font=("TkDefaultFont", 11, "bold"), bg="White")
		CatalinaLabel.grid(row=0, column=1, pady=10)
		
		loadimg2 = Image.open(user_path+"/Backgrounds/preview/CatalinaPreview.png")
		img2 = ImageTk.PhotoImage(image=loadimg2)       
		img_label2 = tk.Label ( wallpaperframe, image=img2, bg="White")
		
		img_label2.image = img2
		img_label2.grid(row=1, column=1, padx=15)
		
		option_Catalina = Radiobutton(wallpaperframe, variable=var2, value=2, bg="White", cursor="hand2")
		option_Catalina.grid(row=2, column=1, pady=10)
		
		
		
		MojaveLabel = tk.Label(wallpaperframe, text="Mojave", font=("TkDefaultFont", 11, "bold"), bg="White")
		MojaveLabel.grid(row=0, column=2, pady=10)
		
		loadimg3 = Image.open(user_path+"/Backgrounds/preview/MojavePreview.png")
		img3 = ImageTk.PhotoImage(image=loadimg3)       
		img_label3 = tk.Label ( wallpaperframe, image=img3, bg="White")
		
		img_label3.image = img3
		img_label3.grid(row=1, column=2, padx=15)
		
		option_Mojave = Radiobutton(wallpaperframe, variable=var2, value=3, bg="White", cursor="hand2")
		option_Mojave.grid(row=2, column=2, pady=10)
		
		x = config['DEFAULT']['wallpaper']
		if int(x) == 1:
			option_BigSur.select()
		elif int(x) == 2:
			option_Catalina.select()
		elif int(x) == 3:
			option_Mojave.select()
			
		z = config['DEFAULT']['state']
		if z == 'disable':
			option_disable.select()
			option_BigSur.config(state=DISABLED)
			option_Catalina.config(state=DISABLED)
			option_Mojave.config(state=DISABLED)
		else:
			option_enable.select()
		
		def setstate():
			if var.get() == 0:
				option_BigSur.config(state=DISABLED)
				option_Catalina.config(state=DISABLED)
				option_Mojave.config(state=DISABLED)
			else:
				option_BigSur.config(state=NORMAL)
				option_Catalina.config(state=NORMAL)
				option_Mojave.config(state=NORMAL)
		
		wButton = Button(mainframe, text="Save and Close", bg="#2866F8", fg="White", font=("TkDefaultFont", 11, "bold"), cursor="hand2", activebackground="Blue", activeforeground="White", command=lambda:push(var, var2))
		wButton.pack(anchor='e', pady=30)
		master.mainloop()	
		
		
def main():
	start = Window()
	
	
if __name__ == '__main__':
    main()