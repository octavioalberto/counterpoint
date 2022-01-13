# El siguiente código calcula las proyecciones de contrapunto para el modelo
# de contrapunto de la segunda especie.

intervalos = [];
# Aqui construimos construimos todos los 2-intervalos consonantes de contrapunto.
for x = [0:11]
 for y = [0 3 4 7 8 9]
  for z = [0:11]
   intervalos = [intervalos [x y z]'];
  endfor
 endfor
endfor

nosucesores = {};

fid = fopen("salida_segunda_especie.txt","a");
for k = [0 3 4 7 8 9]
 for z = [0:11]
  intcontr = [0 k z]';
  printf("Intervalo: 0 %d %d\n",k,z);
  dlmwrite(fid,intcontr,"-append");
  lista = [];
  maximo = 0;
  sucesores = [];
  for s = [1 5 7 11]
   for w1 = [0:11]
    for w2 = [0:11]
     for t0 = [0:11]
      for t1 = [0:11]
        # Ensaya una por una las posibles candidatas a simetria de contrapunto,
        # para ver si cumplen condiciones analogas a las de la primera especie.
        glin = [s 0 0; s*w1 s s*w2];
        ii = find(z == intervalos(3,:));
        gaf = [t0 t1]'*ones(1,length(ii));
        intervalosdeformados = mod(glin*intervalos(:,ii)+gaf,12);
        essimetriacandidata = 1;
        if(mod(t1+s*2*(1+w2),12)!=mod(2+5*t1,12))
         essimetriacandidata = 0;
        endif
        if(essimetriacandidata&&(sum(prod(intcontr([1 2])==intervalosdeformados))))
         essimetriacandidata = 0;
        endif
        if(essimetriacandidata)
         sucesorest = intersect(intervalos([1 2],1:12:end)',intervalosdeformados',"rows");
         u = rows(sucesorest);
         if(u>maximo)
          lista = [s mod(s*w1,12) mod(s*w2,12) t0 t1];
          sucesores = sucesorest;
		  maximo = u;
         elseif(u==maximo)
          lista = [lista; s mod(s*w1,12) mod(s*w2,12) t0 t1];
          sucesores = union(sucesores,sucesorest,"rows");
         endif
        endif
      endfor
     endfor
    endfor
   endfor
  endfor
  dlmwrite(fid,lista,"-append");
  dlmwrite(fid,setdiff(intervalos(1:2,1:12:end)',sucesores,"rows"),"-append");
  # Se almacena un arreglo de los intervalos que no son sucesores admisibles, pues son muchos menos.
  nosucesores{z+1+12*(find(k==[0 3 4 7 8 9])-1)} = setdiff(intervalos(1:2,1:12:end)',sucesores,"rows");
 endfor
endfor
fclose(fid)
