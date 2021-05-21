**************Creación de índices agregados LABMTESS**************

use "C:\Users\DELL\Dropbox\Claudia y Alberto\PNUD\sector construcción\Experimentación\R\Finales\BaseTratamiento.dta"

***Índice de información***

*Primer paso: estandarizar las las variables que conformarían el ídice de información

egen i_pe_std =std(i_pe)
egen i_salud_std =std(i_salud)
egen i_inst_std =std(i_inst)

*Segundo paso: hacer una matriz de correlación entre todas las variables que conforman dicho índice (Pearson Chi-square test)

*En este caso, el índice de información lo conforman el índice de prestaciones económicas (i_pe), el índice de salud (i_salud) y el índice de institucionalidad (i_inst)

*Sin estandarizar
pwcorr i_pe i_salud i_inst, sig star(.05) obs

*Estandarizado
pwcorr i_pe_std i_salud_std i_inst_std, sig star(.05) obs

*Se puede detectar que todas las variables están correlacionadas entre sí dos a dos, además de que estas correlaciones son significativas (coeficiente y p-value)

*Tercer paso: Dado que existe correlación significativa, se procede a calcular el Alpha de Cronbach para los tres índices (i_pe, i_salud, i_inst) que formarían el índice de información (i_info). Usamos la opción de estandarizar para obtener una escala estandarizada.

*Sin estandarizar
alpha i_pe i_salud i_inst, std item generate (i_info)

*Estandarizado
alpha i_pe_std i_salud_std i_inst_std, std item generate (i_info_std)


*El alpha de Crombach obtenido es 0.7383, que está dentro del rango de fiabilidad, por lo tanto es posible utilizar el índice i_info

**índice de percepción**

*Primer paso: estandarizar las las variables que conformarían el ídice de información

egen i_ve_std =std(i_ve)
egen i_vs_std =std(i_vs)
egen i_vd_std =std(i_vd)

*Segundo paso: hacer una matriz de correlación entre todas las variables que conforman dicho índice (Pearson Chi-square test)

*En este caso, el índice de información lo conforman el índice de valoración económicas (i_ve), el índice de valoración de salud (i_vs) y el índice de valoración de derechos (i_vd)

*Sin estandarizar
pwcorr i_ve i_vs i_vd, sig star(.05) obs

*Estandarizado

pwcorr i_ve_std i_vs_std i_vd_std, sig star(.05) obs

*Se puede detectar que todas las variables están correlacionadas entre sí dos a dos, además de que estas correlaciones son significativas (coeficiente y p-value)

*Tercer paso: Dado que existe correlación significativa, se procede a calcular el Alpha de Cronbach para los tres índices (i_ve, i_vs, i_vd) que formarían el índice de percepción (i_percepcion). Usamos la opción de estandarizar para obtener una escala estandarizada

*Sin estandarizar
alpha i_ve i_vs i_vd, std item generate (i_percepcion)

*Estandarizado

alpha i_ve_std i_vs_std i_vd_std, std item generate (i_percepcion_std)


*El alpha de Crombach obtenido es 0.7877, que está dentro del rango de fiabilidad, por lo tanto es posible utilizar el índice i_percepcion

**índice de respuestas a historias reflexivas**

*Primer paso: estandarizar las las variables que conformarían el ídice de información

egen P27_i_1_std =std(P27_i_1)
egen P28_i_1_std =std(P28_i_1)
egen P29_i_1_std =std(P29_i_1)
egen P30_i_1_std =std(P30_i_1)

*Segundo paso: hacer una matriz de correlación entre todas las variables que conforman dicho índice (Pearson Chi-square test)

*En este caso, el índice de respuestas a historias reflexivas lo conforman el P27_i_1 P28_i_1 P29_i_1 y P30_i_1

*Sin estandarizar

pwcorr P27_i_1 P28_i_1 P29_i_1 P30_i_1, sig star(.05) obs

*Estandarizado
pwcorr P27_i_1_std P28_i_1_std P29_i_1_std P30_i_1_std, sig star(.05) obs


*Se puede detectar un bajo nivel de correlación bivariada  

*Tercer paso: Ahora veremos el cálculo del Alpha de Cronbach

*Sin estandarizar
alpha P27_i_1 P28_i_1 P29_i_1 P30_i_1, std item generate (i_dilema)

*Estandarizado
alpha P27_i_1_std P28_i_1_std P29_i_1_std P30_i_1_std, std item generate (i_dilema_std)


*El alpha de Crombach obtenido es 0.7877, que está dentro del rango de fiabilidad, por lo tanto es posible utilizar el índice i_percepcion
*El resultado es 0.4122, por lo cual el índice generado (i_dilema) no puede ser usado. De las correlaciones bivariadas, se puede observar que todas las preguntas tienen más o menos el mismo nivel de baja correlación, por lo que trabajar con una asignación diferente de pesos tampoco funcionaría.


