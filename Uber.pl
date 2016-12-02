
%Aqui acciones en caso de elegir UBER
transporte(Transporte):- Transporte='uber',!,nl,write('Has elegido ir en UBER! '),nl,write('Entra a la aplicacion de UBER, fija tu punto de partida y elige la opcionESTIMACION DE TARIFA e ingresa tu destino. Tienes el dinero suficiente? '),read(Dinero),dinero(Dinero).
dinero(Dinero):- Dinero='si',!,write('Excelente!, regresate y elige la opcion PEDIR UBER '),nl,write('Ya llego tu UBER? '),read(Llego),llego(Llego).
dinero(Dinero):- Dinero='no',!,write('Que mal!, consigue lo suficiente. Ya lo tienes? '),read(Nodinero),dinero(Nodinero).
llego(Llego):- Llego='si',!,write('Sal y dale la ruta mas segura y viable ').
llego(Llego):- Llego='no',!,write('Pon atención al GPS de la aplicacion, para ver si tuvo algun problema, ya llego? '),read(NoLlego),llego(NoLlego).
