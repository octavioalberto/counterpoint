# El siguiente código devuelve 1 si el paso inter1 = [c1 d1], inter2 = [c2 d2]
# es válido según las reglas de Fux condensadas por Martini: sólo no es válido
# el movimiento directo a una consonancia perfecta, y el intervalo entre los
# cantus firmi no puede ser de tritono; y 0 en caso contrario.

function res = verifica(inter1,inter2)
 cantus1 = inter1(1);
 cantus2 = inter2(1);
 discantus1 = mod(cantus1+inter1(2),12);
 discantus2 = mod(cantus2+inter2(2),12);
 mov1 = cantus2-cantus1;
 mov2 = discantus2-discantus1;
 res = !(((mov1*mov2>=0)&&((inter2(2)==0)||inter2(2)==7))||(mod(cantus2-cantus1,12)==6));
end

