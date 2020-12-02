l = "- ZSH- Oh my ZSH- Docker- Creates and adds a user to the group `docker`- git config --global credential.helper stor".split("- ")
l = l[1:]
l = sorted(l, key=str.casefold)
for i in l:
    print("-",i)