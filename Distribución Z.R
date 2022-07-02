#______________ DISTRIBUCIÓN Z ______________

#--------------------------------
#       Ejemplo 1
#--------------------------------

# Las calificaciones de ingreso a la BENV 
# se ajustan a una distribución Normal, 
# donde la media de la prueba es 72 y 
# la desviacion estándar es 15.2. 
# ¿Cual es el porcentaje de estudiantes 
# con un puntaje mayor a 84 en el examen?

x<-pnorm(84, mean=72, sd=15.2, lower.tail = FALSE)
x
x*100

#---------------------------------
#    Ejemplo 2
#---------------------------------

# 1.- Generar las calificaciones de Ciencias
# 27: número de alumnas/os
x<-sample(5:10, 27, replace=TRUE)
x

# 2.- Calcular la media
mean(x)

# 3.- Calcular la desviacion estandar
sd(x)

# 4.- Realizar el calculo de la distribucion Normal
# Se quiere saber el porcentaje de alumnas/os que
# tienen una calificacion mayor a 90.

x1<-pnorm(90, mean=72, sd=1.8, lower.tail = FALSE)
x1*100

#-------------------------------
#  Práctica
#-------------------------------

# 1.- Realiza un ejercicio parecido al ejemplo 1

# 2.- Simula las calificaciones de dos asignaturas
# y calcula la distribucion normal. 

# Nota: No olvides plantear el problemas en cada uno
# de los ejercicios.


#La maestra de un grupo quiere saber cuantos de los alumnos han obtenido 
#un resultado mayor a 70 en el examen, tomando en cuenta que la media es de 75 
#y la desvición estandar es de 16.3. ¿Cuál es el porcentaje de los alumnos
#que obtuviron un resultado menor a 70 en el examen?

ex<-pnorm(70, mean=75, sd=16.2, lower.tail = FALSE)
ex
ex*100

#El 62% de los alumnos han obtenido una calificación menor a 70

#¿Cuántos alumnos obtuvieron un resultado mayor a 70?

ex<-pnorm(70, mean=75, sd=16.2, lower.tail = TRUE)
ex
ex*100

#El 38% de los alumnos han obtenido una calificación mayor a 70