Factores Primos 4

Instructions

Esta vez trabajamos con Ruby y Sinatra. Como es de esperar deben tener tests.

# Cuando se invoca por GET devuelve en orden descendente
GET /primos?x=360
5,3,3,2,2,2

# Cuando se invoca por POST devuelve en orden ascendente
POST /primos
(en el body) x=360
2,2,2,3,3,5

# En ambos casos cuando x no se una valor numérico debe devolverse un 400 que representa BadRequest
