#! /usr/bin/env python
#
# GUI module generated by PAGE version 4.3
# In conjunction with Tcl version 8.6
#    Sep 11, 2014 05:06:22 PM
import sys

try:
    from Tkinter import *
except ImportError:
    from tkinter import *

try:
    import ttk
    py3 = 0
except ImportError:
    import tkinter.ttk as ttk
    py3 = 1

import Installer_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = Tk()
    root.title('New_Toplevel_1')
    root.geometry('800x579+439+65')
    w = New_Toplevel_1 (root)
    Installer_support.init(root, w)
    root.mainloop()

w = None
def create_New_Toplevel_1 (root, param=None):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    rt = root
    w = Toplevel (root)
    w.title('New_Toplevel_1')
    w.geometry('800x579+439+65')
    w_win = New_Toplevel_1 (w)
    Installer_support.init(w, w_win, param)
    return w_win

def destroy_New_Toplevel_1 ():
    global w
    w.destroy()
    w = None


class New_Toplevel_1:
    def __init__(self, master=None):
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85' 
        _ana2color = '#d9d9d9' # X11 color: 'gray85' 
        self.style = ttk.Style()
        if sys.platform == "win32":
            self.style.theme_use('winnative')
        self.style.configure('.',background=_bgcolor)
        self.style.configure('.',foreground=_fgcolor)
        self.style.configure('.',font="TkDefaultFont")
        self.style.map('.',background=
            [('selected', _compcolor), ('active',_ana2color)])
        master.configure(background=_bgcolor)
        master.configure(highlightbackground="#d9d9d9")
        master.configure(highlightcolor="black")


        self.menubar = Menu(master,bg=_bgcolor,fg=_fgcolor)
        master.configure(menu = self.menubar)

        self.file = Menu(master,tearoff=0)
        self.menubar.add_cascade(menu=self.file,
                activebackground="#d9d9d9",
                activeforeground="#111111",
                background="#d9d9d9",
                foreground="#000000",
                label="File")
        self.import_profile = Menu(master,tearoff=0)
        self.file.add_cascade(menu=self.import_profile,
                activebackground="#d9d9d9",
                activeforeground="#111111",
                accelerator="ctrl+i",
                background="#d9d9d9",
                foreground="#000000",
                label="Import profile")
        self.export_profile = Menu(master,tearoff=0)
        self.file.add_cascade(menu=self.export_profile,
                activebackground="#d9d9d9",
                activeforeground="#111111",
                accelerator="ctrl+e",
                background="#d9d9d9",
                foreground="#000000",
                label="Export profile")
        self.file.add_command(
                activebackground="#d9d9d9",
                activeforeground="#000000",
                accelerator="ctrl+c",
                background="#d9d9d9",
                command=Installer_support.exit(),
                foreground="#000000",
                label="Exit")
        self.help = Menu(master,tearoff=0)
        self.menubar.add_cascade(menu=self.help,
                activebackground="#d9d9d9",
                activeforeground="#111111",
                background="#d9d9d9",
                foreground="#000000",
                label="Help")
        self.about = Menu(master,tearoff=0)
        self.help.add_cascade(menu=self.about,
                activebackground="#d9d9d9",
                activeforeground="#111111",
                background="#d9d9d9",
                foreground="#000000",
                label="About")


        self.TButton1 = ttk.Button (master)
        self.TButton1.place(relx=0.81,rely=0.9,height=35,width=126)
        self.TButton1.configure(takefocus="")
        self.TButton1.configure(text='''Go!''')
        self.TButton1.configure(width=126)





if __name__ == '__main__':
    vp_start_gui()


