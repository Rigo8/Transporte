%Aqui esta las acciones en caso de elegir Autobus
transporte(Transporte):- Transporte='autobus',!,nl,write('Has elegido ir en Autobus! '),nl,write('Tienes credecial de estudiante? '),read(Credencial),credencial(Credencial).


credencial(Credencial):-Credencial='si',!,write('Bien!,asegurate de tener el saldo suficiente, lo tienes? '),read(Saldo),saldo(Saldo).

credencial(Credencial):-Credencial='no',!,write('Entonces, asegurate de tener el dinero suficiente!. Lo tienes? '),read(Dinero),dineroBus(Dinero).

saldo(Saldo):-Saldo='si',!,write('Perfecto!,toma la ruta que te lleve o te deje cerca de tu destino ').

saldo(Saldo):-Saldo='no',!,write('Ve y recarga saldo en una de las Tiendas, ya lo tienes? '),read(SaldoCredencial),saldo(SaldoCredencial).

dineroBus(Dinero):-Dinero='si',write('Perfecto!,toma la ruta que te lleve o te deje cerca de tu destino ').

dineroBus(Dinero):-Dinero='no',write('Consigue el dinero suficiente para el Autobus, lo tienes? '),read(DineroSuficiente),dineroBus(DineroSuficiente).
