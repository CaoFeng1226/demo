import understand.pyd
 
# Open Database
db = understand.open("cppcheck-master.udb")
 
for ent in sorted(db.ents(),key= lambda ent: ent.name()):
  print (ent.name(),"  [",ent.kindname(),"]",sep="",end="\n")