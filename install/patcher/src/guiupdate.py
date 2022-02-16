import subprocess as sp
import resources as rs
import sys
import os
import wget
from tkinter import messagebox as msb
import urllib.request
versions = []
verbuff = ""
home_path = sys.argv[1]

def other():
	msb.showinfo(title="TwistPatch", message='The patcher will begin updating your system\npress OK to continue')
	os.system('chmod +x patch.run')
	os.system('xfce4-terminal -e ./patch.run')

def update():
			my_ver = rs.twistver[19:]
			my_ver = my_ver+" "

			print(my_ver)

			xverbuff = ""
			xver = [] #every element is a number from x.x.x sketch 3 - size
			for c in my_ver:
				print(xverbuff)
				if c.isnumeric():
					print('it is a number')
					xverbuff = xverbuff+c
				else:
					print(c)
					xver.append(xverbuff)
					xverbuff = ""
			version_link = ""
			for x in xver:
				print(x)

			versions = []
			url = "https://twisteros.com/Patches/latestui.txt"
			with urllib.request.urlopen(url) as f:
				xcontent = f.read().decode('utf-8')
				xcontent = xcontent.splitlines()
				xversion = ""
				for line in xcontent:
					if "Twister UI version" in line:
						versions.append(line)

			versions_reverse = versions[::-1]
			for d in versions_reverse:
				print(d)
			for ver in versions_reverse:
				print(ver)
				nmy_ver = ver[19:]
				nmy_ver = nmy_ver+" "
				print("It works")
				print(nmy_ver)

				xnverbuff = ""
				xnver = [] #every element is a number from x.x.x sketch 3 - size
				for c in nmy_ver:
					print(xnverbuff)
					if c.isnumeric():
						print('it is a number')
						xnverbuff = xnverbuff+c
					else:
						print(c)
						xnver.append(xnverbuff)
						xnverbuff = ""
				if (xver[2] == None) or (xnver[1]!=xver[1]) or (xnver[0]!=xver[0]):
					version_link = 'https://twisteros.com/Patches/TwisterUIv'+xnver[0]+'-'+xnver[1]+'Patch.run'
					if (((xnver[0]>=xver[0]) and (xnver[1]>xver[1]))):
						#msb.showinfo(title="TwistPatch", message='Downloading '+xnver[0]+'.'+xnver[1]+' Patch in the background...\nPress OK to begin downloading.')
						os.system('rm -f patch.run')
						wget.download('https://twisteros.com/Patches/TwisterUIv'+xnver[0]+'-'+xnver[1]+'Patch.run', out=home_path+'/patcher/src/patch.run')
						other()
						break
				elif (xnver[2] != xver[2]) or (xnver[1]!=xver[1]) or (xnver[0]!=xver[0]):
					version_link = 'https://twisteros.com/Patches/TwisterUIv'+xnver[0]+'-'+xnver[1]+'-'+xnver[2]+'Patch.run'
					if (((xnver[0]>=xver[0]) and (xnver[1]>=xver[1]) and (xnver[2]>xver[2]))):
						#msb.showinfo(title="TwistPatch", message='Downloading '+xnver[0]+'.'+xnver[1]+'.'+xnver[2]+' Patch in the background...\nPress OK to begin downloading.')
						os.system('rm -f patch.run')
						wget.download('https://twisteros.com/Patches/TwisterUIv'+xnver[0]+'-'+xnver[1]+'-'+xnver[2]+'Patch.run', out=home_path+'/patcher/src/patch.run')
						other()
						break
			msb.showinfo(title="TwistPatch", message='You already have the latest version of Twister UI: version '+str(xver[0])+'.'+str(xver[1])+'.'+str(xver[2]))
