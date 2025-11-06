bruxo(h).                    
bruxo(X) :- professor(X).  

estudante(h).                
pertence(h, grifinoria).     

professor(db).               

entregou(h, dy, me).         
entregou(db, dy, carta).     

trouxa(trouxa1).             

fiel(dy, From) :- entregou(From, dy, me).
fiel(X, db) :- entregou(db, X, _).

nao_fiel_a_voldemort(X) :- fiel(X, db), \+ fiel(X, vol).
possui(X, var) :- bruxo(X).
nao_estudante(X) :- trouxa(X).
inconsistencia(X) :- bruxo(X), trouxa(X).