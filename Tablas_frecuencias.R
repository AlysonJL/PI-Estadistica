
#_____________________Tablas de frecuencias__________________

# 1.- Importar la matriz iris

data(iris)

# 2.- Exploración de la matriz
#dimensión de la matriz tiene 150 individuos y 5 variables
dim(iris)

# 3.- Nombre de las variables
colnames(iris)

# 4.- Tipos de variables
str(iris)

# 5.- Visualización de una varible especifica
iris$Species

# 6.- En busca de valores perdidos
anyNA(iris)


#______________________________________________________________________________
# I Generación de tablas de frecuencia
#_____________________________________________________________________________

# 1.- Posicionarnos en una variable especifica Petal.Length índico que el nombre me lo acorte a PL
# lo que resulte de esa indicación quiero que lo pongo en formato tabla, lo que resulte adquiera
# un formato en data.frame.
# A partir de lo anterior, voy a generar una nueva variable (objeto).
#tabla_PL.
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

#2.- Frecuencia absoluta
tabla_PL

# 3.- Se construye la tabla de frecuencias completa redondeando las frecuencias
# a 3 decimales.

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# tabla para variables no agrupadas.

# Aquí empieza Variables agrupadas
# 4.- Agrupación de variables 8 clases
table_clases<-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length,
                                                          breaks=8))))
# 5.- Visualización de la tabla.
table_clases

# 6.-Construcción de tablas de frecuencia completa redondeado a 3 decimales
tabla<-transform(table_clases,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 7.- Visualizar la tabla
tabla


