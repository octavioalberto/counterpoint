# El siguiente código construye una matriz de todos los posibles pasos de contrapunto
# codificados como filas [k1 t1 c2 k2] de modo que (0,k1,t1) es una 2-consonancia,
# (c2,k2) es una consonancia y el discanto k1,t1,c2+k2 es tal que t1 es una disonancia
# que ocurre por disminución.

posibles = [];
for k = [0 3 4 7 8 9]
 for c = 0:11
  for d1 = 1:2
   for d2 = 1:2
    if(sum(mod(k+d1,12)==[1 2 5 6 10 11])&&sum(mod(k+d1+d2-c,12)==[0 3 4 7 8 9]))
     posibles = union(posibles,[k mod(k+d1,12) c mod(k+d1+d2-c,12)], "rows");
    end
   end
  end
  for d1 = -2:-1
   for d2 = -2:-1
    if(sum(mod(k+d1,12)==[1 2 5 6 10 11])&&sum(mod(k+d1+d2-c,12)==[0 3 4 7 8 9]))
     posibles = union(posibles,[k mod(k+d1,12) c mod(k+d1+d2-c,12)], "rows");
    end
   end
  end
 end
end

# El siguiente código construye una matriz de todos los posibles pasos de contrapunto
# codificados como filas [k1 t1 c2 k2] de modo que (0,k1,t1) es una 2-consonancia,
# (c2,k2) es una consonancia y el discanto k1,t1,c2+k2 es tal que t1 es una disonancia
# que ocurre por disminución.

posibles2 = [];
for k = [0 3 4 7 8 9]
 for c = 0:11
  for d1 = [0 3 4 7 8 9]
   for d2 = [0 3 4 7 8 9]
    posibles2 = [posibles2; k d1 c d2];
   end
  end
 end
end
