l = "- express- axios- concurrently- fetch- r2- socket.io- form-data- dotenv- brain.js- p5- ml5".split("- ")
l = l[1:]
l = sorted(l, key=str.casefold)
for i in l:
    print("-",i)