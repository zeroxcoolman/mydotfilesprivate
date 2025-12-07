import sys
import tkinter as tk

x, y, w, h = map(int, sys.argv[1:5])

root = tk.Tk()
root.overrideredirect(True)
root.attributes('-topmost', True)
root.attributes('-alpha', 0.3)  # semi-transparent

root.geometry(f"{w}x{h}+{x}+{y}")

canvas = tk.Canvas(root, width=w, height=h, bg='white', highlightthickness=0)
canvas.create_rectangle(0, 0, w, h, outline="red", width=5)
canvas.pack()

root.mainloop()
