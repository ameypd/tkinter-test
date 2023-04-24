from tkinter import *
from tkinter import filedialog
import webbrowser
import os

def browse_file():
    filepath = filedialog.askopenfilename()
    print("Selected file:", filepath)
    run_script(filepath)


def run_script(filepath):
    cmd = "python3 instructions_freq.py " + filepath + " >> test.txt"
    os.system(cmd)

def download_file():
    url = filedialog.askopenfilename()
    if url:
        open_in_browser_link = f"file://{url}"
        webbrowser.open(open_in_browser_link)

def open(file_menu):
    filename = file_menu.get()

    open_in_browser_link = f"file://{os.path.join(folder, filename)}"
    print(open_in_browser_link)

    webbrowser.open(open_in_browser_link)


root = Tk()
root.title("C to MIPS")
root.configure(background="white")
root.minsize(200, 200)
root.maxsize(500, 500)
root.geometry("300x300+50+50")
# root.withdraw()

button = Button(text="Browse", command=browse_file)
button.pack()

# create the download button
download_button = Button(root, text="Download", command=download_file)
download_button.pack()

root.mainloop()