%Aqui estan las acciones en caso de elegir auto

transporte(Transporte):- Transporte='auto',!,nl,write('Has elegido ir en Auto!'),nl,write('Busca las llaves!, ya las tienes '),read(Llaves),encontrarLlaves(Llaves).
encontrarLlaves(Llaves):- Llaves='si',!,write('Bien!, Contianua el siguiente paso '),nl,write('Tienes tu licencia '),read(Licencia),licencia(Licencia).
encontrarLlaves(Llaves):- Llaves='no',!,write('Sigue buscando, Ya las encontraste? '), read(Respuesta),encontrarLlaves(Respuesta).
licencia(Licencia):- Licencia='si',!,write('Excelente!, Ahora al siguiente paso '),nl,write('Recuerda usar el Cinturon de Seguridad, Lo tienes? '),read(Paso),dentro(Paso).
licencia(Licencia):- Licencia='no',!,write('Muy mal!, Sigue buscando. Ya la tienes? '),read(Respuesta),licencia(Respuesta).

dentro(Respuesta):- Respuesta='si',!,write('Ahora enciende el auto y ve con precaucion ').
dentro(Respuesta):- Respuesta='no',!,write('Usalo, para prevenir algun daño en caso de accidente, Ya lo tienes? '),read(Cinturon),dentro(Cinturon).


