viajeEscuela:- write('Elige una forma de transporte'),nl,
	write('auto,uber,autobus'),nl,
	read(Transporte),
	transporte(Transporte).

%Aqui estan las acciones en caso de elegir auto

transporte(Transporte):- Transporte='auto',!,nl,write('Has elegido ir en Auto!'),nl,write('Busca las llaves!, ya las tienes '),read(Llaves),encontrarLlaves(Llaves).

encontrarLlaves(Llaves):- Llaves='si',!,write('Bien!, Contianua el siguiente paso '),nl,write('Tienes tu licencia '),read(Licencia),licencia(Licencia).
encontrarLlaves(Llaves):- Llaves='no',!,write('Sigue buscando, Ya las encontraste? '), read(Respuesta),encontrarLlaves(Respuesta).

licencia(Licencia):- Licencia='si',!,write('Excelente!, Ahora al siguiente paso '),nl,write('Recuerda usar el Cinturon de Seguridad, Lo tienes? '),read(Paso),dentro(Paso).
licencia(Licencia):- Licencia='no',!,write('Muy mal!, Sigue buscando. Ya la tienes? '),read(Respuesta),licencia(Respuesta).

dentro(Respuesta):- Respuesta='si',!,write('Ahora enciende el auto y ve con precaucion ').
dentro(Respuesta):- Respuesta='no',!,write('Usalo, para prevenir algun daño en caso de accidente, Ya lo tienes? '),read(Cinturon),dentro(Cinturon).

%Aqui acciones en caso de elegir UBER

transporte(Transporte):- Transporte='uber',!,nl,write('Has elegido ir en UBER! '),nl,write('Entra a la aplicacion de UBER, fija tu punto de partida y elige la opcionESTIMACION DE TARIFA e ingresa tu destino. Tienes el dinero suficiente? '),read(Dinero),dinero(Dinero).

dinero(Dinero):- Dinero='si',!,write('Excelente!, regresate y elige la opcion PEDIR UBER '),nl,write('Ya llego tu UBER? '),read(Llego),llego(Llego).
dinero(Dinero):- Dinero='no',!,write('Que mal!, consigue lo suficiente. Ya lo tienes? '),read(Nodinero),dinero(Nodinero).

llego(Llego):- Llego='si',!,write('Sal y dale la ruta mas segura y viable ').
llego(Llego):- Llego='no',!,write('Pon atención al GPS de la aplicacion, para ver si tuvo algun problema, ya llego? '),read(NoLlego),llego(NoLlego).

%Aqui esta las acciones en caso de elegir Autobus

transporte(Transporte):- Transporte='autobus',!,nl,write('Has elegido ir en Autobus! '),nl,write('Tienes credecial de estudiante? '),read(Credencial),credencial(Credencial).
credencial(Credencial):-Credencial='si',!,write('Bien!,asegurate de tener el saldo suficiente, lo tienes? '),read(Saldo),saldo(Saldo).
credencial(Credencial):-Credencial='no',!,write('Entonces, asegurate de tener el dinero suficiente!. Lo tienes? '),read(Dinero),dineroBus(Dinero).

saldo(Saldo):-Saldo='si',!,write('Perfecto!,toma la ruta que te lleve o te deje cerca de tu destino ').
saldo(Saldo):-Saldo='no',!,write('Ve y recarga saldo en una de las Tiendas, ya lo tienes? '),read(SaldoCredencial),saldo(SaldoCredencial).

dineroBus(Dinero):-Dinero='si',write('Perfecto!,toma la ruta que te lleve o te deje cerca de tu destino ').
dineroBus(Dinero):-Dinero='no',write('Consigue el dinero suficiente para el Autobus, lo tienes? '),read(DineroSuficiente),dineroBus(DineroSuficiente).


