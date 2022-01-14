# Dado una matriz posibles de posibles paso de contrapunto con cantus firmus 0 en la 2-consonancia,
# con una disonancia en la segunda componente, y el arreglo nosucesores obtenido en secondspecies02a.m,
# el siguiente código almacena en carac los que son válidos según las reglas de Fux y en carac2 los
# que son válidos en el modelo de contrapunto.

nosucesores = {
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0]
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0],
[0   0
     6   0],
[0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[0   3
     0   9
     3   3
     3   9
     6   3
     6   9
     9   3
     9   9],
[ 0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[ 0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[0   3
     0   9
     3   3
     3   9
     6   3
     6   9
     9   3
     9   9],
[ 0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[ 0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[0   3
     0   9
     3   3
     3   9
     6   3
     6   9
     9   3
     9   9],
[ 0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[ 0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[0   3
     0   9
     3   3
     3   9
     6   3
     6   9
     9   3
     9   9],
[ 0    3
      1    3
      2    3
      3    3
      4    3
      5    3
      6    3
      7    3
      8    3
      9    3
     10    3
     11    3],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[0   4
     6   4],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[ 0    7
      1    7
      2    7
      3    7
      4    7
      5    7
      6    7
      7    7
      8    7
      9    7
     10    7
     11    7],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[0   8
     6   8],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9],
[0   9
     3   9
     6   9
     9   9],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9],
[0   9
     3   9
     6   9
     9   9],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9],
[0   9
     3   9
     6   9
     9   9],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9],
[0   9
     3   9
     6   9
     9   9],
[ 0    9
      1    9
      2    9
      3    9
      4    9
      5    9
      6    9
      7    9
      8    9
      9    9
     10    9
     11    9]
};

carac = [];
for u = posibles' if(verifica([0 u(1)],[u(3) u(4)])) carac = [carac; u']; end end

carac2 = [];
for u = posibles'
 if((!sum(prod([u(3) u(4)]' == nosucesores{12*(find(u(1)==[0 3 4 7 8 9])-1)+u(2)+1}'))))
  carac2 = [carac2; u'];
 end
end

# Dado una matriz posibles2 de posibles paso de contrapunto con cantus firmus 0 en la 2-consonancia,
# con una consonancia en la segunda componente, y el arreglo nosucesores obtenido en secondspecies02a.m,
# el siguiente código almacena en caracc los que son válidos según las reglas de Fux y en caracc2 los
# que son válidos en el modelo de contrapunto.

caracc = [];
for u = posibles2' if(verifica([0 u(1)],[u(3) u(4)])*verifica([0 u(1)],[0 u(2)])) caracc = [caracc; u']; end end

caracc2 = [];
for u = posibles2'
 if((!sum(prod([u(3) u(4)]' == nosucesores{12*(find(u(1)==[0 3 4 7 8 9])-1)+u(2)+1}'))))
  caracc2 = [caracc2; u'];
 end
end
