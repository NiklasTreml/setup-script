l = "- python-dotenv- matplotlib- numpy- pandas- requests- scikit-learn- seaborn- tensorflow 2- jupyter".split("- ")
l = l[1:]
l = sorted(l, key=str.casefold)
for i in l:
    print("-",i)