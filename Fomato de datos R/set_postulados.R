


v21825 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_21825.csv", header=TRUE, sep=",")
#v2 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_14763.csv", header=TRUE, sep=",")
v21823 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_21823.csv", header=TRUE, sep=",")
v8784 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_8784.csv", header=TRUE, sep=",")
#v5 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_14932.csv", header=TRUE, sep=",")
v21345 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_21345.csv", header=TRUE, sep=",")
#v7 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_15235.csv", header=TRUE, sep=",")
v11085 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_11085.csv", header=TRUE, sep=",")
v22495 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_22495.csv", header=TRUE, sep=",")
v9863 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/favoritos_vacantes/vacancy_9863.csv", header=TRUE, sep=",")

#No FAV  9863_nofav

nf8784 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulados_vacantes/postulados_8784.csv", header=TRUE, sep=",")
nf9863 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulados_vacantes/postulados_9863.csv", header=TRUE, sep=",")
nf11085 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulados_vacantes/postulados_11085.csv", header=TRUE, sep=",")
nf21345 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulados_vacantes/postulados_21345.csv", header=TRUE, sep=",")
nf21823 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulados_vacantes/postulados_21823.csv", header=TRUE, sep=",")
nf21825 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulados_vacantes/postulados_21825.csv", header=TRUE, sep=",")
nf22495 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulados_vacantes/postulados_22495.csv", header=TRUE, sep=",")


dv8784 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_detalles/8784.csv", header=TRUE, sep=",")
dv9863 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_detalles/9863.csv", header=TRUE, sep=",")
dv11085 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_detalles/11085.csv", header=TRUE, sep=",")
dv21345 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_detalles/21345.csv", header=TRUE, sep=",")
dv21823 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_detalles/21823.csv", header=TRUE, sep=",")
dv21825 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_detalles/21825.csv", header=TRUE, sep=",")
dv22495 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_detalles/22495.csv", header=TRUE, sep=",")


#Extraer datos generales de la vacante  // FAVORITOS
temporal <- dv8784
for (i in 2:nrow(v8784)) { dv8784 = rbind(dv8784, temporal) }
temporal <- dv9863
for (i in 2:nrow(v9863)) { dv9863 = rbind(dv9863, temporal) }
temporal <- dv11085
for (i in 2:nrow(v11085)) { dv11085 = rbind(dv11085, temporal) }
temporal <- dv21345
for (i in 2:nrow(v21345)) { dv21345 = rbind(dv21345, temporal) }
temporal <- dv21823
for (i in 2:nrow(v21823)) { dv21823 = rbind(dv21823, temporal) }
temporal <- dv21825
for (i in 2:nrow(v21825)) { dv21825 = rbind(dv21825, temporal) }
temporal <- dv22495
for (i in 2:nrow(v22495)) { dv22495 = rbind(dv22495, temporal) }


#Extraer datos generales de la vacante  // NO FAVORITOS
temporal <- dv8784
for (i in 2:nrow(nf8784)) { dv8784 = rbind(dv8784, temporal) }
temporal <- dv9863
for (i in 2:nrow(nf9863)) { dv9863 = rbind(dv9863, temporal) }
temporal <- dv11085
for (i in 2:nrow(nf11085)) { dv11085 = rbind(dv11085, temporal) }
temporal <- dv21345
for (i in 2:nrow(nf21345)) { dv21345 = rbind(dv21345, temporal) }
temporal <- dv21823
for (i in 2:nrow(nf21823)) { dv21823 = rbind(dv21823, temporal) }
temporal <- dv21825
for (i in 2:nrow(nf21825)) { dv21825 = rbind(dv21825, temporal) }
temporal <- dv22495
for (i in 2:nrow(nf22495)) { dv22495 = rbind(dv22495, temporal) }


ds8784=cbind(dv8784, v8784)
ds9863=cbind(dv9863, v9863)
ds11085=cbind(dv11085, v11085)
ds21345=cbind(dv21345, v21345)
ds21823=cbind(dv21823, v21823)
ds21825=cbind(dv21825, v21825)
ds22495=cbind(dv22495, v22495)

i=1
df_dos_8784 =cbind(dv8784, nf8784)
nombre = paste ("C:/Users/Ale/Dropbox/IBM/post", toString(i), ".csv")
write.csv(df_dos_8784, file = nombre)
i=2
df_dos_9863 =cbind(dv9863, nf9863)
nombre = paste ("C:/Users/Ale/Dropbox/IBM/post", toString(i), ".csv")
write.csv(df_dos_9863, file = nombre)
i=3
df_dos_11085 =cbind(dv11085, nf11085)
nombre = paste ("C:/Users/Ale/Dropbox/IBM/post", toString(i), ".csv")
write.csv(df_dos_11085, file = nombre)
i=4
df_dos_21345 =cbind(dv21345, nf21345)
nombre = paste ("C:/Users/Ale/Dropbox/IBM/post", toString(i), ".csv")
write.csv(df_dos_21345, file = nombre)
i=5
df_dos_21823 =cbind(dv21823, nf21823)
nombre = paste ("C:/Users/Ale/Dropbox/IBM/post", toString(i), ".csv")
write.csv(df_dos_21823, file = nombre)
i=6
df_dos_21825 =cbind(dv21825, nf21825)
nombre = paste ("C:/Users/Ale/Dropbox/IBM/post", toString(i), ".csv")
write.csv(df_dos_21825, file = nombre)
i=7
df_dos_22495 =cbind(dv22495, nf22495)
nombre = paste ("C:/Users/Ale/Dropbox/IBM/post", toString(i), ".csv")
write.csv(df_dos_22495, file = nombre)

