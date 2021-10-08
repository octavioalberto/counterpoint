function R = analisis(M, K, simetrias)

% Calcula el número de simetrías de contrapunto que median entre las transiciones de
% firmus, mientras que la fila 2 a los intervalos con el discanto.
% intervalos de contrapunto que aparecen en M; la fila 1 debe corresponder al cantus
% Si se proporcionan los parámetros K y simetrias, usa a K como las consonancias,
% y en el arreglo simetrias deben aparecer las simetrias de contrapunto de cada
% intervalo, cada una como una fila de la forma [a b c], que corresponde a e^(0,c).(a,b).

if(nargin()==1)

 K = [0 3 4 7 8 9];

 simetrias = {
  [1,6,6; 7,6,6;11 -4 11; 11 4 11; 11 0 11],
  [5 -4 8; 5 4 8],
  [1 6 6; 7 6 6],
  [7 0 0],
  [7 0 3; 1 6 6; 7 6 6; 7 4 3; 7 -4 3],
  [5 8 8; 5 4 8]
 };
 
endif

ntonos = 2*length(K);

R = zeros(1,columns(M)-1);

% Construye las consonancias.

Ke = [];
for s = K;
  Ke = [[[0:ntonos-1];ones(1,ntonos)*s] Ke];
endfor

D = setdiff([0:ntonos-1],K);

for u=[0:ntonos-1]
 for v=[1:2:ntonos-1]
  if(sort(mod(K*v+u,ntonos))==D)
   plineal = v;
   pafin = u;
  endif
 endfor
endfor

for w = [1:columns(M)-1]

% Encuentra el conjunto de simetrías de contrapunto.
 if(ismember(M(2,w),K))
  cual = find(K==M(2,w));
  esconsonancia = 1;
 else
  cual = find(K==mod(M(2,w)*plineal+pafin,ntonos));
  esconsonancia = 0;
 endif
 
 for l = [1:rows(simetrias{cual})]
 
% Extrae la simetría en forma de la matriz L y el vector t.
 
  Q = [simetrias{cual}(l,1) 0; simetrias{cual}(l,2) simetrias{cual}(l,1)];
  t = [M(1,w); simetrias{cual}(l,3)];
  
% Calcula las consonancias deformadas.
  if(esconsonancia)
   deformados = mod(Q*Ke+t*ones(1,length(Ke)),ntonos);
  else
   deformados = mod(plineal*Q*Ke+(t+pafin)*ones(1,length(Ke)),ntonos);   
  endif

% Verifica si el sucesor es una consonancia deformada. Si lo es, añade uno al contador.
  
  if(ismember(M(:,w+1)',deformados',"rows"))
   R(w) = R(w)+1;
  endif  
 endfor
endfor
endfunction