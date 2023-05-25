import matplotlib.pyplot as plt
import os

# region: config

useVersionMarker = True

v0color = "#4477AA"
v0marker = "o"

v1color = "#AA3377"
v1marker = "s"

v2color = "#228833"
v2marker = "d"

agdaColor = v0color
agdaMarker = v0marker

serializationMarker = "+"
serializationLine = "solid"

tcMarker = "o"
tcLine = "dashed"

cacheOffMarker = "+"
cacheOffLine = "solid"

cacheOnMarker = "+"
cacheOnLine = "dashed"

figsize = (5, 3.5)
textsize = 14
legendsize = 11
filesuffix = "test"

# endregion: config

# region: Helpers

def fromMarkdown(inp):
    values = map(lambda x: list(x.split("|")), inp)
    return dict(map(lambda x: (x[0], list(map(lambda t: float(list(t.split())[0]), x[1:]))), values))

def compare(inp, index=0):
    ds = []
    for i in inp:
        with open(i) as f:
            x = f.read()
        files = list(x.split("\n\n\n"))
        d = fromMarkdown(files[index].splitlines()[5:])
        ds.append(d)
        keysets = set.intersection(*map(lambda x: set(x.keys()), ds))
    res = dict(map(lambda k: (k, list(map(lambda i: list(map(lambda h: h[k][i], ds)), range(len(ds[0][k]))))), keysets))
    return res

def plot_agda(folders, xs, xlabel, filename, index=0, yscale="linear"):
    d = compare(folders, index=index)
    serial, = d["Serialization"]
    tc, = d["TypeChecking"]
    plt.rcParams.update({'font.size': textsize})
    plt.figure(figsize=figsize, layout='constrained')
    plt.xticks(xs)
    plt.xlabel(xlabel)
    plt.yscale(yscale)
    plt.ylabel("Time spend in miliseconds (ms)")
    plt.plot(xs, serial, color=agdaColor, marker=agdaMarker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="Agda Serialization")
    plt.plot(xs, tc, color=agdaColor, marker=agdaMarker if useVersionMarker else tcMarker, linestyle=tcLine, label="Agda Type-checking")
    plt.legend(prop={"size" : legendsize})
    if filename is None:
        plt.show()
    else:
        plt.savefig('C:\\Users\\ivard\\Documents\\Uni\\Master\\Thesis\\ThesisReport\\src\\img\\' + filename + filesuffix + ".svg", bbox_inches='tight', format="svg")

def plot_agda_imported(folders, xs, xlabel, filename, index=0):
    folders1 = map(lambda f: f + "/cacheOff/averages.md", folders)
    folders2 = map(lambda f: f + "/cacheOn/averages.md", folders)
    d = compare(folders1,index=index)
    deserial, = d["Deserialization"]
    tc,= d["TypeChecking"]
    serial, = d["Serialization"]
    total, = d["Total"]

    d2 = compare(folders2,index=index)
    deserial2, = d2["Deserialization"]
    tc2,= d2["TypeChecking"]
    serial2, = d2["Serialization"]
    total2, = d2["Total"]

    plt.rcParams.update({'font.size': textsize})
    master = plt.figure(figsize=(12,8), layout="constrained")
    fig = master.add_subplot(2,2,1)
    fig2 = master.add_subplot(2,2,2)
    fig3 = master.add_subplot(2,2,3)
    fig4 = master.add_subplot(2,2,4)

    fig.set_xticks(xs)
    fig.set_xlabel(xlabel)
    fig.set_ylabel("Time spend in miliseconds (ms)")
    fig.set_title("Deserialization comparison")
    
    fig.plot(xs, deserial, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="Agda cache off")
    fig.plot(xs, deserial2, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="Agda cache on")

    fig2.set_xticks(xs)
    fig2.set_xlabel(xlabel)
    fig2.set_title("Type-checking comparison")

    fig2.plot(xs, tc, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="Agda cache off")
    fig2.plot(xs, tc2, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="Agda cache on")
    
    fig3.set_xticks(xs)
    fig3.set_xlabel(xlabel)
    fig3.set_title("Serialization comparison")
    fig3.set_ylabel("Time spend in miliseconds (ms)")

    fig3.plot(xs, serial, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="Agda cache off")
    fig3.plot(xs, serial2, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="Agda cache on")

    fig4.set_xticks(xs)
    fig4.set_xlabel(xlabel)
    fig4.set_title("Total comparison")
    fig4.set_ylabel("Time spend in miliseconds (ms)")

    fig4.plot(xs, total, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="Agda cache off")
    fig4.plot(xs, total2, color=agdaColor, marker=agdaMarker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="Agda cache on")
    plt.legend(prop = {"size": legendsize})

    if filename is None:
        plt.show()
    else:
        plt.savefig('C:\\Users\\ivard\\Documents\\Uni\\Master\\Thesis\\ThesisReport\\src\\img\\' + filename + filesuffix + '.svg', bbox_inches='tight', format="svg")


def plot_folders(folders, xs, xlabel, filename, index=0, yscale="linear"):
    d = compare(folders, index=index)
    serialv0, serialv1, serialv2 = d["Serialization: Write main to file"]
    tcv0, tcv1, tcv2 = d["Total: TypeCheck step"]

    plt.rcParams.update({'font.size': textsize})
    plt.figure(figsize=figsize, layout='constrained')
    plt.xticks(xs)
    plt.xlabel(xlabel)
    plt.yscale(yscale)
    plt.ylabel("Time spend in miliseconds (ms)")
    plt.plot(xs, serialv0, color=v0color, marker=v0marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v0 Serialization")
    plt.plot(xs, serialv1, color=v1color, marker=v1marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v1 Serialization")
    plt.plot(xs, serialv2, color=v2color, marker=v2marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v2 Serialization")
    plt.plot(xs, tcv0, color=v0color, marker=v0marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v0 Type-checking")

    plt.plot(xs, tcv1, color=v1color, marker=v1marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v1 Type-checking")

    plt.plot(xs, tcv2, color=v2color, marker=v2marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v2 Type-checking")
    plt.legend(ncol=2, prop={"size" : legendsize})
    if filename is None:
        plt.show()
    else:
        plt.savefig('C:\\Users\\ivard\\Documents\\Uni\\Master\\Thesis\\ThesisReport\\src\\img\\' + filename + filesuffix + ".svg", bbox_inches='tight', format="svg")

def plotImported(folders, xs, xlabel, filename, index=0):
    folders1 = map(lambda f: f + "/cacheOff/averages.md", folders)
    folders2 = map(lambda f: f + "/cacheOn/averages.md", folders)
    d = compare(folders1,index=index)
    deserialv0, deserialv1, deserialv2 = d["Total: Loading required modules from filesystem"]
    tcv0, tcv1, tcv2 = d["Total: TypeCheck step"]
    serialv0p1, serialv1p1, serialv2p1 = d["Serialization: Write import to file"]
    serialv0p2, serialv1p2, serialv2p2 = d["Serialization: Write main to file"]
    serialv0 = list(map(lambda x: x[0] + x[1], zip(serialv0p1, serialv0p2)))
    serialv1 = list(map(lambda x: x[0] + x[1], zip(serialv1p1, serialv1p2)))
    serialv2 = list(map(lambda x: x[0] + x[1], zip(serialv2p1, serialv2p2)))
    totalv0, totalv1, totalv2 = d["Total"]

    d2 = compare(folders2,index=index)
    deserial2v0, deserial2v1, deserial2v2 = d2["Total: Loading required modules from filesystem"]
    tc2v0, tc2v1, tc2v2 = d2["Total: TypeCheck step"]
    serial2v0, serial2v1, serial2v2 = d["Serialization: Write main to file"]
    total2v0, total2v1, total2v2 = d2["Total"]

    plt.rcParams.update({'font.size': textsize})
    master = plt.figure(figsize=(12,8), layout="constrained")
    fig = master.add_subplot(2,2,1)
    fig2 = master.add_subplot(2,2,2)
    fig3 = master.add_subplot(2,2,3)
    fig4 = master.add_subplot(2,2,4)

    fig.set_xticks(xs)
    fig.set_xlabel(xlabel)
    fig.set_ylabel("Time spend in miliseconds (ms)")
    fig.set_title("Deserialization comparison")
    
    fig.plot(xs, deserialv0, color=v0color, marker=v0marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v0 cache off")
    fig.plot(xs, deserial2v0, color=v0color, marker=v0marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v0 cache on")
    fig.plot(xs, deserialv1, color=v1color, marker=v1marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v1 cache off")
    fig.plot(xs, deserial2v1, color=v1color, marker=v1marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v1 cache on")
    fig.plot(xs, deserialv2, color=v2color, marker=v2marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v2 cache off")
    fig.plot(xs, deserial2v2, color=v2color, marker=v2marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v2 cache on")

    fig2.set_xticks(xs)
    fig2.set_xlabel(xlabel)
    fig2.set_title("Type-checking comparison")

    fig2.plot(xs, tcv0, color=v0color, marker=v0marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v0 cache off")
    fig2.plot(xs, tc2v0, color=v0color, marker=v0marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v0 cache on")
    fig2.plot(xs, tcv1, color=v1color, marker=v1marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v1 cache off")
    fig2.plot(xs, tc2v1, color=v1color, marker=v1marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v1 cache on")
    fig2.plot(xs, tcv2, color=v2color, marker=v2marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v2 cache off")    
    fig2.plot(xs, tc2v2, color=v2color, marker=v2marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v2 cache on")

    fig3.set_xticks(xs)
    fig3.set_xlabel(xlabel)
    fig3.set_ylabel("Time spend in miliseconds (ms)")
    fig3.set_title("Serialization comparison")
    
    fig3.plot(xs, serialv0, color=v0color, marker=v0marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v0 cache off")
    fig3.plot(xs, serial2v0, color=v0color, marker=v0marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v0 cache on")
    fig3.plot(xs, serialv1, color=v1color, marker=v1marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v1 cache off")
    fig3.plot(xs, serial2v1, color=v1color, marker=v1marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v1 cache on")
    fig3.plot(xs, serialv2, color=v2color, marker=v2marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v2 cache off")
    fig3.plot(xs, serial2v2, color=v2color, marker=v2marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v2 cache on")
    
    fig4.set_xticks(xs)
    fig4.set_xlabel(xlabel)
    fig4.set_title("Total comparison")
    fig4.set_ylabel("Time spend in miliseconds (ms)")

    fig4.plot(xs, totalv0, color=v0color, marker=v0marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v0 cache off")
    fig4.plot(xs, totalv1, color=v1color, marker=v1marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v1 cache off")
    fig4.plot(xs, totalv2, color=v2color, marker=v2marker if useVersionMarker else cacheOffMarker, linestyle=cacheOffLine, label="v2 cache off") 
    fig4.plot(xs, total2v0, color=v0color, marker=v0marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v0 cache on")
    fig4.plot(xs, total2v1, color=v1color, marker=v1marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v1 cache on")   
    fig4.plot(xs, total2v2, color=v2color, marker=v2marker if useVersionMarker else cacheOnMarker, linestyle=cacheOnLine, label="v2 cache on")
    plt.legend(ncol=2, prop={"size" : legendsize})

    if filename is None:
        plt.show()
    else:
        plt.savefig('C:\\Users\\ivard\\Documents\\Uni\\Master\\Thesis\\ThesisReport\\src\\img\\' + filename + filesuffix + '.svg', bbox_inches='tight', format="svg")

# endregion: helpers

# region: normal

def plot_modParamSize():
    d = compare(["experiments/modParams/modParamSize/Size5/averages.md", "experiments/modParams/modParamSize/Size10/averages.md", "experiments/modParams/modParamSize/Size20/averages.md"])
    serializationv0, serializationv1, serializationv2 = d["Serialization: Write main to file"]
    tcv0, tcv1, tcv2 = d["Total: TypeCheck step"]
    sizes = [5,10,20]

    plt.rcParams.update({'font.size': textsize})
    f, (fig, fig2) = plt.subplots(1, 2, sharey=True, figsize=(12,4), layout='constrained')
    fig.set_xticks(sizes)
    fig.set_xlabel("Module parameter size")
    fig.set_ylabel("Time spend in miliseconds (ms)")
    fig.plot(sizes, serializationv0, color=v0color, marker=v0marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v0 Serialization")
    fig.plot(sizes, serializationv1, color=v1color, marker=v1marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v1 Serialization")
    fig.plot(sizes, serializationv2, color=v2color, marker=v2marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v2 Serialization")
    fig.plot(sizes, tcv0, color=v0color, marker=v0marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v0 Type-checking")

    fig.plot(sizes, tcv1, color=v1color, marker=v1marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v1 Type-checking")

    fig.plot(sizes, tcv2, color=v2color, marker=v2marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v2 Type-checking")
    fig.legend(ncol=2, loc="upper left", prop={"size": legendsize})

    d2 = compare(["experiments/modParams/numberOfParams/2Params/averages.md", "experiments/modParams/numberOfParams/4Params/averages.md", "experiments/modParams/numberOfParams/8Params/averages.md"])
    nSerialv0, nSerialv1, nSerialv2 = d2["Serialization: Write main to file"]
    nTCv0, nTCv1, nTCv2 = d2["Total: TypeCheck step"]
    numOfArgs = [2,4,8]

    fig2.set_xticks(numOfArgs)
    fig2.set_xlabel("Number of module parameters")
    fig2.plot(numOfArgs, nSerialv0, color=v0color, marker=v0marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v0 Serialization")
    fig2.plot(numOfArgs, nTCv0, color=v0color, marker=v0marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v0 Type-checking")

    fig2.plot(numOfArgs, nSerialv1, color=v1color, marker=v1marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v1 Serialization")
    fig2.plot(numOfArgs, nTCv1, color=v1color, marker=v1marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v1 Type-checking")

    fig2.plot(numOfArgs, nSerialv2, color=v2color, marker=v2marker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="v2 Serialization")
    fig2.plot(numOfArgs, nTCv2, color=v2color, marker=v2marker if useVersionMarker else tcMarker, linestyle=tcLine, label="v2 Type-checking")
    plt.savefig('C:\\Users\\ivard\\Documents\\Uni\\Master\\Thesis\\ThesisReport\\src\\img\\experiment2.svg', bbox_inches='tight', format="svg")

def plot_typeSize():
    plot_folders([
        "experiments/modAlias/TypeSize/Size5/averages.md",
        "experiments/modAlias/TypeSize/Size15/averages.md",
        "experiments/modAlias/TypeSize/Size50/averages.md"
    ], [5,15,50], "Type size", "experiment3")

def plot_moduleArgSize():
    plot_folders([
        "experiments/modAlias/modArgSize/Size1/averages.md",
        "experiments/modAlias/modArgSize/Size10/averages.md",
        "experiments/modAlias/modArgSize/Size50/averages.md",
        "experiments/modAlias/modArgSize/Size200/averages.md"
    ], [1,10,50,200], "Size of module alias arguments", "experiment4")

def plot_moduleAliasSize():
    plot_folders([
        "experiments/modAlias/AliasModuleSize/40Decls/averages.md",
        "experiments/modAlias/AliasModuleSize/120Decls/averages.md",
        "experiments/modAlias/AliasModuleSize/300Decls/averages.md"
    ], [40,120,300], "Alias inserted after x declarations", "experiment5")

def plot_nested():
    plot_folders([
        "experiments/modAlias/AliasDepth/1Deep/averages.md", 
        "experiments/modAlias/AliasDepth/2Deep/averages.md", 
        "experiments/modAlias/AliasDepth/3Deep/averages.md"
    ], [1,2,3], "Number of nested aliases", "experiment6")

def plot_nested2():
    plot_folders([
        "experiments/modAlias/NestedAliases/1Alias/averages.md", 
        "experiments/modAlias/NestedAliases/3Alias/averages.md", 
        "experiments/modAlias/NestedAliases/5Alias/averages.md",
        "experiments/slow/7Alias/averages.md"
    ], [1,3,5,7], "Number of aliasing modules", "experiment6", yscale="log")

# def plot_multipleAlias():
#     plot_folders([
#         "experiments/modAlias/NumberOfAliases/1Alias/averages.md", 
#         "experiments/modAlias/NumberOfAliases/2Alias/averages.md", 
#         "experiments/modAlias/NumberOfAliases/3Alias/averages.md"
#     ], [1,2,3], "Number of aliases", "experiment7")

# def plot_multipleAlias2():
#     plot_folders([
#         "experiments/modAlias/NumberOfAliases2/1Alias/averages.md", 
#         "experiments/modAlias/NumberOfAliases2/3Alias/averages.md", 
#         "experiments/modAlias/NumberOfAliases2/5Alias/averages.md",
#         "experiments/modAlias/NumberOfAliases2/7Alias/averages.md"
#     ], [1,3,5,7], "Number of aliasing modules", None)

def plot_increaseUses():
    plot_folders([
        "experiments/modAlias/IncreaseUses/1Times/averages.md", 
        "experiments/modAlias/IncreaseUses/2Times/averages.md", 
        "experiments/modAlias/IncreaseUses/4Times/averages.md",
        "experiments/modAlias/IncreaseUses/10Times/averages.md"
    ], [1,2,4,10], "Usage multiplier", "experiment7")

def plot_decls():
    plot_folders([
        "experiments/declSanityCheck/50decls/averages.md", 
        "experiments/declSanityCheck/150decls/averages.md", 
        "experiments/declSanityCheck/450decls/averages.md"
    ], [50,150,450], "Number of declarations", "experiment1")

def plot_importSanity():
    plotImported([
        "experiments/imports/sanityCheck/decls50", 
        "experiments/imports/sanityCheck/decls150", 
        "experiments/imports/sanityCheck/decls450"
    ], [50, 150, 450], "Number of declarations", "multi-experiment1", index=1)

def plot_withParams():
    plotImported([
        "experiments/imports/declsWithParams/decls50", 
        "experiments/imports/declsWithParams/decls150", 
        "experiments/imports/declsWithParams/decls450"
    ], [50, 150, 450], "Number of declarations", "multi-experiment2", index=1)

# def plot_importingNested():
#     plotImported([
#         "experiments/imports/aliasDepth/depth1", 
#         "experiments/imports/aliasDepth/depth2", 
#         "experiments/imports/aliasDepth/depth3"
#     ], [1, 2, 3], "Number of nested aliases", "multi-experiment3", index=1)

def plot_importChains():
    plotImported([
        "experiments/imports/importChain/Chain1", 
        "experiments/imports/importChain/Chain2", 
        "experiments/imports/importChain/Chain3"
    ], [1, 2, 3], "Number of transitive imports", "multi-experiment3", index=-1)

def plot_single():
    plot_decls()
    plot_modParamSize()
    plot_typeSize()
    plot_increaseUses()
    plot_nested2()
    plot_moduleArgSize()
    plot_moduleAliasSize()

def plot_imports():
    plot_importChains()
    #plot_importingNested()
    plot_importSanity()
# endregion: normal

# region: agda

def plot_agda_decls():
    plot_agda([
        "agdaFiles/declSanityCheck/50decls/averages.md", 
        "agdaFiles/declSanityCheck/150decls/averages.md", 
        "agdaFiles/declSanityCheck/450decls/averages.md"
    ], [50,150,450], "Number of declarations", "agdaExperiment1")

def plot_modParam_agda():
    d = compare(["agdaFiles/modParams/modParamSize/Size5/averages.md", "agdaFiles/modParams/modParamSize/Size10/averages.md", "agdaFiles/modParams/modParamSize/Size20/averages.md"])
    serialSize, = d["Serialization"]
    tcSize, = d["TypeChecking"]
    sizes = [5,10,20]

    plt.rcParams.update({'font.size': textsize})
    f, (fig, fig2) = plt.subplots(1, 2, sharey=True, figsize=(12,4), layout='constrained')
    fig.set_xticks(sizes)
    fig.set_xlabel("Module parameter size")
    fig.set_ylabel("Time spend in miliseconds (ms)")
    fig.plot(sizes, serialSize, color=agdaColor, marker=agdaMarker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="Agda Serialization")
    fig.plot(sizes, tcSize, color=agdaColor, marker=agdaMarker if useVersionMarker else tcMarker, linestyle=tcLine, label="Agda Type-checking")
    fig.legend(prop = {"size": legendsize})

    d2 = compare(["agdaFiles/modParams/numberOfParams/2Params/averages.md", "agdaFiles/modParams/numberOfParams/4Params/averages.md", "agdaFiles/modParams/numberOfParams/8Params/averages.md"])
    serialNum, = d2["Serialization"]
    tcNum, = d2["TypeChecking"]
    numOfArgs = [2,4,8]

    fig2.set_xticks(numOfArgs)
    fig2.set_xlabel("Number of module parameters")
    fig2.plot(numOfArgs, serialNum, color=agdaColor, marker=agdaMarker if useVersionMarker else serializationMarker, linestyle=serializationLine, label="Agda Serialization")
    fig2.plot(numOfArgs, tcNum, color=agdaColor, marker=agdaMarker if useVersionMarker else tcMarker, linestyle=tcLine, label="Agda Type-checking")
    plt.savefig('C:\\Users\\ivard\\Documents\\Uni\\Master\\Thesis\\ThesisReport\\src\\img\\agdaExperiment2.svg', bbox_inches='tight', format="svg")

def plot_agda_typeSize():
    plot_agda([
        "agdaFiles/modAlias/TypeSize/Size5/averages.md",
        "agdaFiles/modAlias/TypeSize/Size15/averages.md",
        "agdaFiles/modAlias/TypeSize/Size50/averages.md"
    ], [5,15,50], "Type size", "agdaExperiment3")

def plot_agda_moduleArgSize():
    plot_agda([
        "agdaFiles/modAlias/modArgSize/Size1/averages.md",
        "agdaFiles/modAlias/modArgSize/Size10/averages.md",
        "agdaFiles/modAlias/modArgSize/Size50/averages.md",
        "agdaFiles/modAlias/modArgSize/Size200/averages.md"
    ], [1,10,50,200], "Size of module alias arguments", "agdaExperiment4")

def plot_agda_moduleAliasSize():
    plot_agda([
        "agdaFiles/modAlias/AliasModuleSize/40Decls/averages.md",
        "agdaFiles/modAlias/AliasModuleSize/120Decls/averages.md",
        "agdaFiles/modAlias/AliasModuleSize/300Decls/averages.md"
    ], [40,120,300], "Alias inserted after x declarations", "agdaExperiment5")

def plot_agda_nested():
    plot_agda([
        "agdaFiles/modAlias/AliasDepth/1Deep/averages.md", 
        "agdaFiles/modAlias/AliasDepth/2Deep/averages.md", 
        "agdaFiles/modAlias/AliasDepth/3Deep/averages.md"
    ], [1,2,3], "Number of nested aliases", "agdaExperiment6")

def plot_agda_nested2():
    plot_agda([
        "agdaFiles/modAlias/NestedAliases/1Alias/averages.md", 
        "agdaFiles/modAlias/NestedAliases/3Alias/averages.md", 
        "agdaFiles/modAlias/NestedAliases/5Alias/averages.md",
        "agdaFiles/slow/7Alias/averages.md"
    ], [1,3,5,7], "Number of aliasing modules", "agdaExperiment6", yscale="log")

# def plot_agda_multipleAlias():
#     plot_agda([
#         "agdaFiles/modAlias/NumberOfAliases/1Alias/averages.md", 
#         "agdaFiles/modAlias/NumberOfAliases/2Alias/averages.md", 
#         "agdaFiles/modAlias/NumberOfAliases/3Alias/averages.md"
#     ], [1,2,3], "Number of aliases", "agdaExperiment7")

def plot_agda_increaseUses():
    plot_agda([
        "agdaFiles/modAlias/IncreaseUses/1Times/averages.md", 
        "agdaFiles/modAlias/IncreaseUses/2Times/averages.md", 
        "agdaFiles/modAlias/IncreaseUses/4Times/averages.md",
        "agdaFiles/modAlias/IncreaseUses/10Times/averages.md"
    ], [1,2,4,10], "Usage multiplier", "agdaExperiment7")


def plot_agda_importSanity():
    plot_agda_imported([
        "agdaFiles/imports/sanityCheck/decls50", 
        "agdaFiles/imports/sanityCheck/decls150", 
        "agdaFiles/imports/sanityCheck/decls450"
    ], [50, 150, 450], "Number of declarations", "agdaMulti-experiment1", index=1)

def plot_agda_withParams():
    plot_agda_imported([
        "agdaFiles/imports/declsWithParams/decls50", 
        "agdaFiles/imports/declsWithParams/decls150", 
        "agdaFiles/imports/declsWithParams/decls450"
    ], [50, 150, 450], "Number of declarations", "agdaMulti-experiment2", index=1)

def plot_agda_importingNested():
    plot_agda_imported([
        "agdaFiles/imports/aliasDepth/depth1", 
        "agdaFiles/imports/aliasDepth/depth2", 
        "agdaFiles/imports/aliasDepth/depth3"
    ], [1, 2, 3], "Number of nested aliases", "agdaMulti-experiment3", index=1)

def plot_agda_importChains():
    plot_agda_imported([
        "agdaFiles/imports/importChain/Chain1", 
        "agdaFiles/imports/importChain/Chain2", 
        "agdaFiles/imports/importChain/Chain3"
    ], [1, 2, 3], "Number of transitive imports", "agdaMulti-experiment4", index=-1)

def singleAgdaPlots():
    plot_agda_decls()
    plot_agda_increaseUses()
    plot_agda_moduleAliasSize()
    plot_agda_moduleArgSize()
    #plot_agda_multipleAlias()
    plot_agda_nested2()
    plot_agda_typeSize()
    plot_modParam_agda()

def importAgdaPlots():
    plot_agda_importChains()
    plot_agda_importSanity()

# endregion: agda

# region: references

from datetime import date
import subprocess
def generateAgdaIssueReference(number):
    data = subprocess.check_output(f"curl -s -L -H \"Accept: application/vnd.github+json\" -H \"X-GitHub-Api-Version: 2022-11-28\" https://api.github.com/repos/agda/agda/issues/{number} -k | jq \".title, .updated_at, .user.url\"",
        shell=True, text=True)
    title, updated, authorurl = data.splitlines()
    authorText = subprocess.check_output(f"curl -s -L -H \"Accept: application/vnd.github+json\" -H \"X-GitHub-Api-Version: 2022-11-28\" {authorurl} -k | jq .name",
        shell=True, text=True)
    authorText2 = authorText.strip()[1:-1]
    author = f"{{{authorText2}}}" if authorText2 == "Google Code Exporter" else authorText2
    ref = "issue" + str(number)
    url = f"https://github.com/agda/agda/issues/{number}"
    year  = updated[1:5]
    urldate = date.today()
    res = f"""
@online{{{ref},
    author = {{{author}}},
    title = {{{{{title[1:-1]}}}}},
    year = {year},
    url = {{{url}}},
    urldate = {{{urldate}}}
}}"""
    return res

def generateIssues(numbers):
    res = "\n".join(map(generateAgdaIssueReference, sorted(list(set(numbers)))))
    print(res)
    return res

# endregion

if __name__ == "__main__":
    plot_agda_decls()
    plot_decls()
    plot_moduleArgSize()
    plot_agda_moduleArgSize()
    plot_nested2()
    plot_agda_nested2()
    plot_increaseUses()
    plot_agda_increaseUses()