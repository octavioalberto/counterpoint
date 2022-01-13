# Dado una matriz de posibles paso de contrapunto con cantus firmus 0 en la 2-consonancia,
# y el arreglo nosucesores obtenido en secondspecies02a.m, el siguiente código almacena
# en carac los que son válidos según las reglas de Fux y en carac2 los que son válidos
# en el modelo de contrapunto.

carac = [];
for u = posibles' if(verifica([0 u(1)],[u(3) u(4)])) carac = [carac; u']; end end

carac2 = [];
for u = posibles'
 if((!sum(prod([u(3) u(4)]' == nosucesores{12*(find(u(1)==[0 3 4 7 8 9])-1)+u(2)+1}'))))
  carac2 = [carac2; u']
 end
end
