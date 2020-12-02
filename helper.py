l = " - build-essential - snap - git - wget - curl - vim - screen - python3.8 - python3 pip - bashtop - neofetch - asbru-cm - aqemu - NodeJS - GoLang - dotnet SDK - Postman - VS Code - Spotify - Discord".split(" - ")
l = l[1:]
l = sorted(l, key=str.casefold)
for i in l:
    print("-",i)