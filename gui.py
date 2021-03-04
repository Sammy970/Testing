import tkinter as tk
import os
from tkinter import Entry
def cmd():
   comd = entry.get()
   os.system(comd)
   

root = tk.Tk()
entry = tk.Entry()
entry.pack() 
button = tk.Button(root, text="Click Here", command=cmd)
button.pack()
root.mainloop()
