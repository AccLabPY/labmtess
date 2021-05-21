
************************************************************************************************************************
************************************************************************************************************************
************************************************************************************************************************
*****************************************LabMTESS - Experimentación - Intervención informativa-reflexiva****************
***********************************************************Enero 2021***************************************************
************************************************************************************************************************
************************************************************************************************************************
************************************************************************************************************************
cd "../data"
use "Base_Laboratorio_VF.xlsx", sheet("Base") cellrange(A1:BU71) firstrow clear

/****************************************************************************** 
PROCESAMIENTO DE DATOS
 ******************************************************************************/

*Identificación de participantes
label variable ID "Número de identificación por observación"
*Subgrupos para tratamiento
label variable Treat "Grupo de asignación aleatoria al que pertenece"
label define Treat_x 0 "Control" 1 "Tratamiento1" 2 "Tratamiento2"
label values Treat Treat_x

*Variables socioeconómicas de la ficha de inscripción
label variable F1 "Sexo"
label define F1_x 6 "Mujer" 1 "Hombre"
label values F1 F1_x

label variable F2 "Distrito"

label variable F3 "Educación"
label define F3_x 1 "Primaria" 2 "Secundaria" 3 "Terciaria" 4 "Universitaria" 
label values F3 F3_x

label variable F4 "Curso"

label variable F5 "Instituto"
label define F5_x 0 "No realizó" 1 "SNPP" 2 "SINAFOCAL" 3 "Otro" 
label values F5 F5_x

label variable F6 "Experiencia"
label define F6_x 0 "No tiene" 1 "Menos de 1 año" 2 "De 1 a 3 años" 3 "Más de 3 años" 
label values F6 F6_x

label variable F7 "Trabaja"
label define F7_x 6 "No" 1 "Si"
label values F7 F7_x

label variable F8 "Ingreso"
label define F8_x 1 "Menos de 500.000" 2 "Entre 500.000 y 1.000.000" 3 "Entre 1.000.000 y 2.000.000" 4 "Entre 2.000.000 y 3.000.000" 5 "Más de 3.000.000" 99 "NR"
label values F8 F8_x

label variable F9 "AporteIPS"
label define F9_x 6 "No" 1 "Si"
label values F9 F9_x

label variable F10 "AportaIPS"
label define F10_x 6 "No" 1 "Si"
label values F7 F7_x

*Variables del instrumento de evaluación

*Sección de percepción

label variable P1 "Con qué relaciona término seguridad social"
label define P1_x 1 "a.Atención médica y provisión de medicamentos" 2 "b.Derechos sociales y laborales" 3 "c.Jubilaciones y pensiones" 4 "d.Privilegios para pocos" 5 "e.Descuento salarial" 6 "f.Contrato por escrito" 99 "NR", modify 
label values P1 P1_x


label variable P2 "Grado de importancia a seguridad social"
label define P2_x 1 "a.Muy importante" 2 "b.Importante" 3 "c.Poco importante " 4 "d.Nada importante" 5 "e.No lo he considerado" 99 "NR" 
label values P2 P2_x

*P3 Ranking de prestaciones
label variable P3_1 "Jubilaciones y pensiones"
label define P3_1_x 1 "Primero" 2 "Segundo" 3 "Tercero " 0 "No seleccionado" 
label values P3_1 P3_1_x

label variable P3_2 "Servicios médicos,medicamentos y hospitalarios"
label define P3_2_x 1 "Primero" 2 "Segundo" 3 "Tercero " 0 "No seleccionado" 
label values P3_2 P3_2_x

label variable P3_3 "Subsidio por maternidad"
label define P3_3_x 1 "Primero" 2 "Segundo" 3 "Tercero " 0 "No seleccionado" 
label values P3_3 P3_3_x

label variable P3_4 "Subsidio por accidente laboral"
label define P3_4_x 1 "Primero" 2 "Segundo" 3 "Tercero " 0 "No seleccionado" 
label values P3_4 P3_4_x

label variable P3_5 "Prestación por sobrevivencia"
label define P3_5_x 1 "Primero" 2 "Segundo" 3 "Tercero " 0 "No seleccionado" 
label values P3_5 P3_5_x

label variable P4 "Cómo piensa solventar su vejez"
label define P4_x 1 "a.Trabajando toda mi vida" 2 "b.Con mis ahorros personales" 3 "c.Espero que mis hijos se hagan cargo" 4 "d.A través de la jubilación" 5 "e.No lo he pensado aún" 99 "NR" 
label values P4 P4_x

label variable P5 "Mayor seguridad ante accidente laboral"
label define P5_x 1 "a.Cobertura de IPS" 2 "b.Cobertura de seguros privados " 3 "c.Cobertura de hospitales públicos" 4 "d.Indemnización que paga el empleador" 5 "e.Ninguna de las anteriores" 99 "NR" 
label values P5 P5_x

label variable P6 "Momentos que es más importante contar con seguro social"
label define P6_x 1 "a.Cuando estoy enfermo" 2 "b.Cuando sea viejo y no pueda trabajar" 3 "c.Cuando me ocurra un accidente" 4 "d.Cuando pierdo mi empleo" 5 "e.Todas las anteriores " 99 "NR" 
label values P6 P6_x

label variable P7 "Considera que el seguro social es caro"
label define P7_x 6 "No" 1 "Si"
label values P7 P7_x

label variable P8 "Proporción de su ingreso a pagar a IPS"
label define P8_x 1 "5% de mi salario" 2 "b.7 % de mi salario" 3 "c.10% de mi salario" 4 "d.Me parece justo el porcentaje actual" 5 "e.No se debe pagar seguro social " 99 "NR" 
label values P8 P8_x

label variable P9 "Considera que las instituciones brindan información oportuna"
label define P9_x 6 "No" 1 "Si" 99 "NR"
label values P9 P9_x

label variable P10 "Considera que tiene derecho a exigir a su patrón que le inscriba a IPS"
label define P10_x 6 "No" 1 "Si" 99 "NR"
label values P10 P10_x

label variable P11 "Tiene o tuvo miedo de accidentarse durante su profesión"
label define P11_x 6 "No" 1 "Si" 99 "NR"
label values P11 P11_x

label variable P12 "Frecuencia con la que ha pensado en tener IPS por si tiene algún accidente"
label define P12_x 1 "a.Todo el tiempo" 2 "b.Por lo menos 5 veces a la semana" 3 "c.Por lo menos 3 veces cada semana" 4 "d.Solamente cuando realizo un trabajo riesgoso" 5 "e.No lo he considerado nunca " 99 "NR" 
label values P12 P12_x

*Sección informativa

label variable P13 "¿Desde qué momento un trabajador asalariado debe estar asegurado en IPS?"
label define P13_x 1 "a.Dentro de 30 días de iniciar el trabajo" 2 "b.Cuando el patrón paga el primer mes de salario" 3 "c.Desde el primer día de trabajo" 4 "d.Cuando se efectúe una fiscalización laboral a la empresa" 5 "e.En cualquier momento de la relación laboral " 99 "NR" 
label values P13 P13_x

label variable P14 "¿Para quiénes considera usted que el seguro social es obligatorio?"
label define P14_x 1 "a. Los que no tienen patrones" 2 "b. Los que tienen contratos escritos" 3 "c.Para los que tienen patrón y contrato" 4 "d.Jornaleros, mensualeros, temporal y permanente" 5 "e.Todas las anteriores" 99 "NR" 
label values P14 P14_x

label variable P15 "¿Cuál es el aporte que el trabajador realiza al seguro social del IPS?"
label define P15_x 1 "a. 10%" 2 "b. 9%" 3 "c.12,5%" 4 "d. Solo paga el empleador" 5 "e.25% " 99 "NR" 
label values P15 P15_x


label variable P16 "¿Cuál es la institución encargada de dar seguridad social a los trabajores asaalariados?"
label define P16_x 1 "a. MTESS" 2 "b. Ministerio de Hacienda" 3 "c.SEN" 4 "d. IPS" 5 "e.Ninguna de las anteriores " 99 "NR" 
label values P16 P16_x

label variable P17 "¿Cuántos años de aportes se debe tener para acceder a la jubilación ordinaria?"
label define P17_x 1 "a. 10 años" 2 "b. 40 años" 3 "c.25 años" 4 "d. Cuando lo solicite, si tiene la edad requerida" 5 "e.12 años" 99 "NR" 
label values P17 P17_x

label variable P18 "¿Cuántos años de edad se debe tener para acceder a una jubilación?"
label define P18_x 1 "a. 60 años" 2 "b. 70 años" 3 "c.45 años" 4 "d. 50 años" 5 "e.No depende de la edad" 99 "NR" 
label values P18 P18_x

label variable P19 "¿Cuando un trabajador se accidenta en el trabajo, desde qué momento accede a las prestacioes de la seguridad social?"
label define P19_x 1 "a. A partir de 3 años" 2 "b. A los 6 meses" 3 "c.Desde el día 1" 4 "d. 3 meses" 5 "e.2 años" 99 "NR" 
label values P19 P19_x

label variable P20 "¿A quiénes cubre el seguro social dentro del hogar?"
label define P20_x 1 "a. Sólo al titular" 2 "b. Esposa e hijos reconocidos" 3 "c.Cónyuges, concubinos, hijos, padres dependientes" 4 "d. Esposa, cónyuges, hijos, padres que aún trabajan" 5 "e. Cualquier miembro que viva con el titular" 99 "NR" 
label values P20 P20_x

label variable P21 "Deben los independientes cotizar al seguro de manera obligatoria"
label define P21_x 6 "No" 1 "Si" 99 "NR"
label values P21 P21_x

label variable P22 "Indique qué proporción de su salario le cubriría IPS por mes de reposo por enfermedad común"
label define P22_x 1 "a. 35%" 2 "b. 50%" 3 "c.100%" 4 "d. 75%" 5 "e.15%" 99 "NR" 
label values P22 P22_x

label variable P23 "Indique qué proporción de su salario le cubriría IPS por accidente de trabajo"
label define P23_x 1 "a. 100%" 2 "b. 50%" 3 "c.35%" 4 "d. 75%" 5 "e.80%" 99 "NR" 
label values P23 P23_x

label variable P24 "Cuáles son los tipos de jubilaciones que ofrece IPS"
label define P24_x 1 "a. Ordinaria, anticipada, proporcional, invalidez" 2 "b. Ordinaria y no contributiva" 3 "c.Proporcional y ordinaria" 4 "d.Ordinaria, anticipada, invalidez" 5 "e.Extraordinaria, anticipada, invalidez" 99 "NR" 
label values P24 P24_x

label variable P25 "Ahorra usted actualmente"
label define P25_x 6 "No" 1 "Si" 99 "NR"
label values P25 P25_x

label variable P26 "En caso positivo, dónde deposita sus ahorros"
label define P26_x 1 "a. En mi casa" 2 "b. En una cooperativa" 3 "c.En un banco o financiera" 4 "d.Banco en el extranjero" 5 "e. Guarda otra persona" 99 "NR" 
label values P26 P26_x

*Sección dilemas
*Dilema 27
label variable P27_1 "Está bien que Marcos no aporte"
label define P27_1_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P27_1 P27_1_x

label variable P27_2 "Debemos ser solidarios para que los abuelitos puedan jubilarse"
label define P27_2_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P27_2 P27_2_x

label variable P27_3 "Los jóvenes no necesitan seguro social"
label define P27_3_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P27_3 P27_3_x

label variable P27_4 "La seguridad social es importante en todas las etapas de la vida"
label define P27_4_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P27_4 P27_4_x

label variable P27_5 "Aportar desde joven te da mayor posibilidad de retirarte"
label define P27_5_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P27_5 P27_5_x

label variable P27_6 "El abuelo de Marcos merece un retiro digno"
label define P27_6_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P27_6 P27_6_x

*Dilema 28
label variable P28_1 "El caso es ejemplo de la solidaridad en la seg.social"
label define P28_1_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P28_1 P28_1_x

label variable P28_2 "Hay que garantizar que se contribuya y se mantenga"
label define P28_2_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P28_2 P28_2_x

label variable P28_3 "Prefiero ahorrar por mi cuenta"
label define P28_3_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P28_3 P28_3_x

label variable P28_4 "Lo que organizan las personas puede sustituir IPS"
label define P28_4_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P28_4 P28_4_x

label variable P28_5 "Si IPS fuera voluntario, se recaudaría menos dinero para otros casos"
label define P28_5_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P28_5 P28_5_x

label variable P28_6 "La seguridad social es importante en todas las etapas de la vida"
label define P28_6_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P28_6 P28_6_x

*Dilema 29
label variable P29_1 "Sólo Ernesto tiene derecho porque trabaja de manera permanente"
label define P29_1_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P29_1 P29_1_x

label variable P29_2 "Ambos tienen derecho"
label define P29_2_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P29_2 P29_2_x

label variable P29_3 "El patrón de Luis tenía la obligación de inscribirlo"
label define P29_3_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P29_3 P29_3_x

label variable P29_4 "Las empresas pequeñas no pueden pagar IPS por empleados"
label define P29_4_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P29_4 P29_4_x

label variable P29_5 "Se paga IPS al que tiene más experiencia"
label define P29_5_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P29_5 P29_5_x

label variable P29_6 "Solo Ernesto puedetener porque Luis no tiene contrato"
label define P29_6_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P29_6 P29_6_x

*Dilema 30
label variable P30_1 "Un hombre debe aguantar y resistir"
label define P30_1_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P30_1 P30_1_x

label variable P30_2 "La carpintería no es para mujeres"
label define P30_2_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P30_2 P30_2_x

label variable P30_3 "Juan se accidentó por ser muy joven"
label define P30_3_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P30_3 P30_3_x

label variable P30_4 "Se debe garantizar un espacio seguro de trabajo"
label define P30_4_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P30_4 P30_4_x

label variable P30_5 "Las mujeres capacitadas pueden trabajar en cualquier oficio"
label define P30_5_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P30_5 P30_5_x

label variable P30_6 "Juan podía recibir una pensión de por vida"
label define P30_6_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P30_6 P30_6_x


label variable P30_7 "Todos los hombres de la familia son fuertes"
label define P30_7_x 1 "Primero" 2 "Segundo" 3 "Tercero " 4 "Cuarto" 5 "Quinto" 6 "Sexto" 7 "Séptimo" 
label values P30_7 P30_7_x



*Calculos auxiliares
*gen P27control=(P27_1)+(P27_2)+(P27_3)+(P27_4)+(P27_5)+(P27_6)
*gen P28control=(P28_1)+(P28_2)+(P28_3)+(P28_4)+(P28_5)+(P28_6) 
*gen P29control=(P29_1)+(P29_2)+(P29_3)+(P29_4)+(P29_5)+(P29_6)
*gen P30control=(P30_1)+(P30_2)+(P30_3)+(P30_4)+(P30_5)+(P30_6) +(P30_7)



*gen P27=(P27_1*0)+(P27_2*2)+(P27_3*0)+(P27_4*2)+(P27_5*1)+(P27_6*1)

*tabstat P27, by(Treat) stat(mean)



*gen P28=(P28_1*1)+(P28_2*1)+(P28_3*3)+(P28_4*3)+(P28_5*2)+(P28_6*2)
*gen P29=(P29_1*3)+(P29_2*1)+(P29_3*1)+(P29_4*2)+(P29_5*2)+(P29_6*3)
*gen P30=(P30_1*3)+(P30_2*3)+(P30_3*2)+(P30_4*2)+(P30_5*1)+(P30_6*1)+(P30_7*3)

*tabstat P27 P28 P29 P30 , by(Treat) stat(mean sd min max)


***********************************************************************************************************
**************Construcción de ínidces con base en las preguntas del instrumento*****************************
************************************************************************************************************
/****************************************************************************** 
ÍNDICES DE INFORMACIÓN
 ******************************************************************************/
*Sección informativa P13 a P24: recodificación de valores 1 para respuestas correctas

gen P13_aux=1 if P13==3
replace P13_aux=0 if P13_aux!=1

gen P14_aux=1 if P14==3
replace P14_aux=0 if P14_aux!=1

gen P15_aux=1 if P15==2
replace P15_aux=0 if P15_aux!=1

gen P16_aux=1 if P16==4
replace P16_aux=0 if P16_aux!=1

gen P17_aux=1 if P17==3
replace P17_aux=0 if P17_aux!=1

gen P18_aux=1 if P18==1
replace P18_aux=0 if P18_aux!=1

gen P19_aux=1 if P19==3
replace P19_aux=0 if P19_aux!=1

gen P20_aux=1 if P20==3
replace P20_aux=0 if P20_aux!=1

gen P21_aux=1 if P21==6
replace P21_aux=0 if P21_aux!=1

gen P22_aux=1 if P22==2
replace P22_aux=0 if P22_aux!=1

gen P23_aux=1 if P23==4
replace P23_aux=0 if P23_aux!=1

gen P24_aux=1 if P24==1
replace P24_aux=0 if P24_aux!=1

*Ïndices de prestaciones económicas, prestaciones de salud e ínidce de institucionalidad
*Para cada uno de los índices se considera si la pregunta hace referencia o no la dimensión corrspondiene, con valores 1 ó 0. 
*ïndice de prestaciones económicas
gen i_pe=(P13_aux*0)+(P14_aux*0)+(P15_aux*0)+(P16_aux*0)+(P17_aux*1)+(P18_aux*1)+(P19_aux*1)+(P20_aux*0)+(P21_aux*0)+(P22_aux*1)+(P23_aux*1)+(P24_aux*1)
*índice de prestaciones de salud
gen i_salud=(P13_aux*0)+(P14_aux*0)+(P15_aux*0)+(P16_aux*0)+(P17_aux*0)+(P18_aux*0)+(P19_aux*1)+(P20_aux*0)+(P21_aux*0)+(P22_aux*0)+(P23_aux*0)+(P24_aux*0)
*Índice de institucionalidad
gen i_inst=(P13_aux*1)+(P14_aux*1)+(P15_aux*1)+(P16_aux*1)+(P17_aux*1)+(P18_aux*1)+(P19_aux*1)+(P20_aux*1)+(P21_aux*1)+(P22_aux*1)+(P23_aux*1)+(P24_aux*1)

/****************************************************************************** 
ÍNDICES DE PERCEPCIÓN
 ******************************************************************************/
*Sección de percepción sobre seguridad social P1 a P12
**Recodificación de respuestas sobre valoración económica, valores 1 ó 0 según corresponda
gen P1_ve=1 if P1==3
replace P1_ve=0 if P1_ve!=1

gen P2_ve=0

gen P4_ve=1 if P4==4
replace P4_ve=0 if P4_ve!=1

gen P5_ve=1 if P5==1
replace P5_ve=0 if P5_ve!=1

gen P6_ve=1 if (P6==1|P6==2|P6==3|P6==5)
replace P6_ve=0 if P6_ve!=1

gen P7_ve=0

gen P8_ve=0

gen P9_ve=0

gen P10_ve=0

gen P11_ve=0

gen P12_ve=0
**Recodificación de respuestas sobre valoración de la salud, valores 1 ó 0 según corresponda
gen P1_vs=1 if P1==1
replace P1_vs=0 if P1_vs!=1

gen P2_vs=0

gen P4_vs=0

gen P5_vs=1 if P5==1
replace P5_vs=0 if P5_vs!=1

gen P6_vs=1 if (P6==1|P6==2|P6==3|P6==5)
replace P6_vs=0 if P6_vs!=1

gen P7_vs=0

gen P8_vs=0

gen P9_vs=0

gen P10_vs=0

gen P11_vs=0

gen P12_vs=0

**Recodificación de respuestas sobre valoración de derechos, valores 0, 1 ó 2 según corresponda

gen P1_vd=1 if P1==1 |  P1==3
replace P1_vd=2 if P1==2 |  P1==6
replace P1_vd=0 if P1_vd==.

gen P2_vd=1 if P2==2
replace P2_vd=2 if P1==1
replace P2_vd=0 if P2_vd==.

gen P4_vd=2 if P4==4
replace P4_vd=0 if P4_vd==.

gen P5_vd=2 if P5==1
replace P5_vd=0 if P5_vd==.

gen P6_vd=2 if (P6==1|P6==3|P6==5)
replace P6_vd=1 if P6==2
replace P6_vd=0 if P6==4

gen P7_vd=2 if P7==6
replace P7_vd=0 if P7_vd==.

gen P8_vd=2 if (P8==3|P8==4)
replace P8_vd=1 if (P8==1|P8==2)
replace P8_vd=0 if P8==5

gen P9_vd=0

gen P10_vd=2 if P10==1
replace P10_vd=0 if P10_vd==.

gen P11_vd=0

gen P12_vd=0

*Índice de valoración económica
gen i_ve= P1_ve+P2_ve+P4_ve+P5_ve+P6_ve+P7_ve+P8_ve+P9_ve+P10_ve+P11_ve+P12_ve

*Índice de valoración de la salud
gen i_vs= P1_vs+P2_vs+P4_vs+P5_vs+P6_vs+P7_vs+P8_vs+P9_vs+P10_vs+P11_vs+P12_vs

*Índice de valoración de derechos
gen i_vd=P1_vd+P2_vd+P4_vd+P5_vd+P6_vd+P7_vd+P8_vd+P9_vd+P10_vd+P11_vd+P12_vd


*Media de índices según tipo de tratamiento
*Sección informativa
tabstat i_pe , by(Treat) stat(mean)
tabstat i_salud , by(Treat) stat(mean)
tabstat i_inst , by(Treat) stat(mean)
*Sección sobre percepción
tabstat i_ve, by(Treat) stat(mean)
tabstat i_vs, by(Treat) stat(mean)
tabstat i_vd, by(Treat) stat(mean)

***Rango de edad
gen edad_r=1 if Edad>=18 & Edad<=25
replace edad_r=2 if Edad>=26 & Edad<=35
replace edad_r=3 if Edad>=36 & Edad<=45
replace edad_r=4 if Edad>=46 

label variable edad_r "Rango de edad"
label define edad_r_x 1 "De 18 a 25" 2 "De 26 a 35" 3 "DE 36 a 45 " 4 "De 46 y más" 
label values edad_r edad_r_x

/****************************************************************************** 
ÍNDICES DE DILEMA MORAL
 ******************************************************************************/

*******Recodificación de respuestas (orden inverso)
gen P27_1_rec=. 
replace P27_1_rec=1 if P27_1==6
replace P27_1_rec=6 if P27_1==1
replace P27_1_rec=2 if P27_1==5
replace P27_1_rec=5 if P27_1==2
replace P27_1_rec=3 if P27_1==4
replace P27_1_rec=4 if P27_1==3

gen P27_2_rec=. 
replace P27_2_rec=1 if P27_2==6
replace P27_2_rec=6 if P27_2==1
replace P27_2_rec=2 if P27_2==5
replace P27_2_rec=5 if P27_2==2
replace P27_2_rec=3 if P27_2==4
replace P27_2_rec=4 if P27_2==3

gen P27_3_rec=. 
replace P27_3_rec=1 if P27_3==6
replace P27_3_rec=6 if P27_3==1
replace P27_3_rec=2 if P27_3==5
replace P27_3_rec=5 if P27_3==2
replace P27_3_rec=3 if P27_3==4
replace P27_3_rec=4 if P27_3==3

gen P27_4_rec=. 
replace P27_4_rec=1 if P27_4==6
replace P27_4_rec=6 if P27_4==1
replace P27_4_rec=2 if P27_4==5
replace P27_4_rec=5 if P27_4==2
replace P27_4_rec=3 if P27_4==4
replace P27_4_rec=4 if P27_4==3

gen P27_5_rec=. 
replace P27_5_rec=1 if P27_5==6
replace P27_5_rec=6 if P27_5==1
replace P27_5_rec=2 if P27_5==5
replace P27_5_rec=5 if P27_5==2
replace P27_5_rec=3 if P27_5==4
replace P27_5_rec=4 if P27_5==3

gen P27_6_rec=. 
replace P27_6_rec=1 if P27_6==6
replace P27_6_rec=6 if P27_6==1
replace P27_6_rec=2 if P27_6==5
replace P27_6_rec=5 if P27_6==2
replace P27_6_rec=3 if P27_6==4
replace P27_6_rec=4 if P27_6==3


gen P28_1_rec=. 
replace P28_1_rec=1 if P28_1==6
replace P28_1_rec=6 if P28_1==1
replace P28_1_rec=2 if P28_1==5
replace P28_1_rec=5 if P28_1==2
replace P28_1_rec=3 if P28_1==4
replace P28_1_rec=4 if P28_1==3

gen P28_2_rec=. 
replace P28_2_rec=1 if P28_2==6
replace P28_2_rec=6 if P28_2==1
replace P28_2_rec=2 if P28_2==5
replace P28_2_rec=5 if P28_2==2
replace P28_2_rec=3 if P28_2==4
replace P28_2_rec=4 if P28_2==3

gen P28_3_rec=. 
replace P28_3_rec=1 if P28_3==6
replace P28_3_rec=6 if P28_3==1
replace P28_3_rec=2 if P28_3==5
replace P28_3_rec=5 if P28_3==2
replace P28_3_rec=3 if P28_3==4
replace P28_3_rec=4 if P28_3==3

gen P28_4_rec=. 
replace P28_4_rec=1 if P28_4==6
replace P28_4_rec=6 if P28_4==1
replace P28_4_rec=2 if P28_4==5
replace P28_4_rec=5 if P28_4==2
replace P28_4_rec=3 if P28_4==4
replace P28_4_rec=4 if P28_4==3

gen P28_5_rec=. 
replace P28_5_rec=1 if P28_5==6
replace P28_5_rec=6 if P28_5==1
replace P28_5_rec=2 if P28_5==5
replace P28_5_rec=5 if P28_5==2
replace P28_5_rec=3 if P28_5==4
replace P28_5_rec=4 if P28_5==3

gen P28_6_rec=. 
replace P28_6_rec=1 if P28_6==6
replace P28_6_rec=6 if P28_6==1
replace P28_6_rec=2 if P28_6==5
replace P28_6_rec=5 if P28_6==2
replace P28_6_rec=3 if P28_6==4
replace P28_6_rec=4 if P28_6==3



gen P29_1_rec=. 
replace P29_1_rec=1 if P29_1==6
replace P29_1_rec=6 if P29_1==1
replace P29_1_rec=2 if P29_1==5
replace P29_1_rec=5 if P29_1==2
replace P29_1_rec=3 if P29_1==4
replace P29_1_rec=4 if P29_1==3

gen P29_2_rec=. 
replace P29_2_rec=1 if P29_2==6
replace P29_2_rec=6 if P29_2==1
replace P29_2_rec=2 if P29_2==5
replace P29_2_rec=5 if P29_2==2
replace P29_2_rec=3 if P29_2==4
replace P29_2_rec=4 if P29_2==3

gen P29_3_rec=. 
replace P29_3_rec=1 if P29_3==6
replace P29_3_rec=6 if P29_3==1
replace P29_3_rec=2 if P29_3==5
replace P29_3_rec=5 if P29_3==2
replace P29_3_rec=3 if P29_3==4
replace P29_3_rec=4 if P29_3==3

gen P29_4_rec=. 
replace P29_4_rec=1 if P29_4==6
replace P29_4_rec=6 if P29_4==1
replace P29_4_rec=2 if P29_4==5
replace P29_4_rec=5 if P29_4==2
replace P29_4_rec=3 if P29_4==4
replace P29_4_rec=4 if P29_4==3

gen P29_5_rec=. 
replace P29_5_rec=1 if P29_5==6
replace P29_5_rec=6 if P29_5==1
replace P29_5_rec=2 if P29_5==5
replace P29_5_rec=5 if P29_5==2
replace P29_5_rec=3 if P29_5==4
replace P29_5_rec=4 if P29_5==3

gen P29_6_rec=. 
replace P29_6_rec=1 if P29_6==6
replace P29_6_rec=6 if P29_6==1
replace P29_6_rec=2 if P29_6==5
replace P29_6_rec=5 if P29_6==2
replace P29_6_rec=3 if P29_6==4
replace P29_6_rec=4 if P29_6==3


gen P30_1_rec=. 
replace P30_1_rec=1 if P30_1==7
replace P30_1_rec=7 if P30_1==1
replace P30_1_rec=2 if P30_1==6
replace P30_1_rec=6 if P30_1==2
replace P30_1_rec=3 if P30_1==5
replace P30_1_rec=5 if P30_1==3
replace P30_1_rec=4 if P30_1==4

gen P30_2_rec=. 
replace P30_2_rec=1 if P30_2==7
replace P30_2_rec=7 if P30_2==1
replace P30_2_rec=2 if P30_2==6
replace P30_2_rec=6 if P30_2==2
replace P30_2_rec=3 if P30_2==5
replace P30_2_rec=5 if P30_2==3
replace P30_2_rec=4 if P30_2==4

gen P30_3_rec=. 
replace P30_3_rec=1 if P30_3==7
replace P30_3_rec=7 if P30_3==1
replace P30_3_rec=2 if P30_3==6
replace P30_3_rec=6 if P30_3==2
replace P30_3_rec=3 if P30_3==5
replace P30_3_rec=5 if P30_3==3
replace P30_3_rec=4 if P30_3==4

gen P30_4_rec=. 
replace P30_4_rec=1 if P30_4==7
replace P30_4_rec=7 if P30_4==1
replace P30_4_rec=2 if P30_4==6
replace P30_4_rec=6 if P30_4==2
replace P30_4_rec=3 if P30_4==5
replace P30_4_rec=5 if P30_4==3
replace P30_4_rec=4 if P30_4==4

gen P30_5_rec=. 
replace P30_5_rec=1 if P30_5==7
replace P30_5_rec=7 if P30_5==1
replace P30_5_rec=2 if P30_5==6
replace P30_5_rec=6 if P30_5==2
replace P30_5_rec=3 if P30_5==5
replace P30_5_rec=5 if P30_5==3
replace P30_5_rec=4 if P30_5==4

gen P30_6_rec=. 
replace P30_6_rec=1 if P30_6==7
replace P30_6_rec=7 if P30_6==1
replace P30_6_rec=2 if P30_6==6
replace P30_6_rec=6 if P30_6==2
replace P30_6_rec=3 if P30_6==5
replace P30_6_rec=5 if P30_6==3
replace P30_6_rec=4 if P30_6==4

gen P30_7_rec=. 
replace P30_7_rec=1 if P30_7==7
replace P30_7_rec=7 if P30_7==1
replace P30_7_rec=2 if P30_7==6
replace P30_7_rec=6 if P30_7==2
replace P30_7_rec=3 if P30_7==5
replace P30_7_rec=5 if P30_7==3
replace P30_7_rec=4 if P30_7==4



*Calculos auxiliares
*gen P27control=(P27_1)+(P27_2)+(P27_3)+(P27_4)+(P27_5)+(P27_6)
*gen P28control=(P28_1)+(P28_2)+(P28_3)+(P28_4)+(P28_5)+(P28_6) 
*gen P29control=(P29_1)+(P29_2)+(P29_3)+(P29_4)+(P29_5)+(P29_6)
*gen P30control=(P30_1)+(P30_2)+(P30_3)+(P30_4)+(P30_5)+(P30_6) +(P30_7)


*Orden inverso en respuestas y valoración (peso) de 0 a 2 
gen P27_i_1=(P27_1*0)+(P27_2*2)+(P27_3*0)+(P27_4*2)+(P27_5*1)+(P27_6*1)
table Treat, c(mean P27_i_1)

gen P28_i_1=(P28_1*2)+(P28_2*2)+(P28_3*0)+(P28_4*0)+(P28_5*1)+(P28_6*1)
table Treat, c(mean P28_i_1)

gen P29_i_1=(P29_1*0)+(P29_2*2)+(P29_3*2)+(P29_4*1)+(P29_5*1)+(P29_6*0)
table Treat, c(mean P29_i_1)

gen P30_i_1=(P30_1*0)+(P30_2*0)+(P30_3*1)+(P30_4*1)+(P30_5*2)+(P30_6*2)+(P30_7*0)
table Treat, c(mean P30_i_1)

****************Orden inverso en respuestas y valoración (peso) de 1 a 6*************************** 

gen P27_i_2=(P27_1*2)+(P27_2*5)+(P27_3*1)+(P27_4*6)+(P27_5*3)+(P27_6*4)
table Treat, c(mean P27_i_2)

gen P28_i_2=(P28_1*5)+(P28_2*6)+(P28_3*1)+(P28_4*2)+(P28_5*4)+(P28_6*3)
table Treat, c(mean P28_i_2)

gen P29_i_2=(P29_1*1)+(P29_2*6)+(P29_3*5)+(P29_4*3)+(P29_5*4)+(P29_6*2)
table Treat, c(mean P29_i_2)

gen P30_i_2=(P30_1*2)+(P30_2*1)+(P30_3*4)+(P30_4*5)+(P30_5*7)+(P30_6*6)+(P30_7*3)
table Treat, c(mean P30_i_2)


*Variable dummy para dos opciones con mayor enfoque de derechos
gen P27_i_3=. 
replace P27_i_3=1 if ((P27_2==1 | P27_2==2) | (P27_4==1 | P27_4==2))
replace P27_i_3=0 if P27_i_3==. 
table Treat, c(mean P27_i_3)

gen P28_i_3=. 
replace P28_i_3=1 if ((P28_1==1 | P28_1==2) | (P28_2==1 | P28_2==2))
replace P28_i_3=0 if P28_i_3==. 
table Treat, c(mean P28_i_3)

gen P29_i_3=. 
replace P29_i_3=1 if ((P29_2==1 | P29_2==2) | (P29_3==1 | P29_3==2))
replace P29_i_3=0 if P29_i_3==. 
table Treat, c(mean P29_i_3)

gen P30_i_3=. 
replace P30_i_3=1 if ((P30_5==1 | P30_5==2) | (P30_6==1 | P30_6==2))
replace P30_i_3=0 if P30_i_3==. 
table Treat, c(mean P30_i_3)

*Variable dummy para la opción con mayor enfoque de derechos
gen P27_i_4=. 
replace P27_i_4=1 if (P27_4==1)
replace P27_i_4=0 if P27_i_4==.
table Treat, c(mean P27_i_4)
 

gen P28_i_4=. 
replace P28_i_4=1 if (P28_2==1)
replace P28_i_4=0 if P28_i_4==. 
table Treat, c(mean P28_i_4)

gen P29_i_4=. 
replace P29_i_4=1 if (P29_2==1)
replace P29_i_4=0 if P29_i_4==. 
table Treat, c(mean P29_i_4)

gen P30_i_4=. 
replace P30_i_4=1 if (P30_5==1)
replace P30_i_4=0 if P30_i_4==. 
table Treat, c(mean P30_i_4)

******TABULADOS*********************
*Variables socioeconómicas
tab F1 Treat, col
tab F3 Treat, col
tab F6 Treat, col
tab F7 Treat, col
tab F8 Treat if F8<99, col
tab F9 Treat, col
tab F10 Treat, col
*tab Edad_r Treat, col

*Sección informativa
tab P13 Treat, col
tab P14 Treat, col
tab P15 Treat, col
tab P16 Treat, col
tab P17 Treat, col
tab P18 Treat, col
tab P19 Treat, col
tab P20 Treat, col
tab P21 Treat, col
tab P22 Treat, col
tab P23 Treat, col
tab P24 Treat, col
tab P25 Treat, col
tab P26 Treat, col

*Sección percepción 
tab P1 Treat, col
tab P2 Treat, col
*tab P3 Treat, col
tab P4 Treat, col
tab P5 Treat, col
tab P6 Treat, col
tab P7 Treat, col
tab P8 Treat, col
tab P9 Treat, col
tab P10 Treat, col
tab P11 Treat, col
tab P12 Treat, col

*Sección dilemas morales

tab P27_1 Treat, col
tab P27_2 Treat, col
tab P27_3 Treat, col
tab P27_4 Treat, col
tab P27_5 Treat, col
tab P27_6 Treat, col

tab P28_1 Treat, col
tab P28_2 Treat, col
tab P28_3 Treat, col
tab P28_4 Treat, col
tab P28_5 Treat, col
tab P28_6 Treat, col

tab P29_1 Treat, col
tab P29_2 Treat, col
tab P29_3 Treat, col
tab P29_4 Treat, col
tab P29_5 Treat, col
tab P29_6 Treat, col

tab P30_1 Treat, col
tab P30_2 Treat, col
tab P30_3 Treat, col
tab P30_4 Treat, col
tab P30_5 Treat, col
tab P30_6 Treat, col
tab P30_7 Treat, col


**Auxiliar

gen Treat1=.
replace Treat1=1 if Treat==1
replace Treat1=0 if Treat==0 


gen Treat2=.
replace Treat2=1 if Treat==2
replace Treat2=0 if Treat==0 

rename F6 Exp 
rename F3 Educ
rename F9 IPS
replace IPS=0 if IPS==6 

/****************************************************************************** 
TESTS DE CONSISTENCIA DE ÍNDICES
 ******************************************************************************/

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



/****************************************************************************** 
 MODELOS PROPUESTOS
 ******************************************************************************/


***7.1 Índices de información: 
****7.1.1 Prestaciones económicas 

*Yi_pe=β0+β1Ti+β2Xi+εj
 
reg i_pe Treat1 Educ Exp IPS Edad
outreg2 using estimacionesInfT1.doc, replace ctitle(Prestaciones económicas-T1)
reg i_pe Treat2 Educ Exp IPS Edad
outreg2 using estimacionesInfT2.doc, replace ctitle(Prestaciones económicas-T2)


*7.1.2 Prestaciones de salud 
 
*Yi_salud=β0+β1Ti+β2Xi+εj
 
reg i_salud Treat1 Educ Exp IPS Edad
outreg2 using estimacionesInfT1.doc, append ctitle(Prestaciones salud-T1)
reg i_salud Treat2 Educ Exp IPS Edad
outreg2 using estimacionesInfT2.doc, append ctitle(Prestaciones salud-T2)


*7.1.3 Institucionalidad 

*Yi_institucional=β0+β1Ti+β2Xi+εj
 
reg i_inst Treat1 Educ Exp IPS Edad
outreg2 using estimacionesInfT1.doc, append ctitle(Institucionalidad-T1)
reg i_inst Treat2 Educ Exp IPS Edad
outreg2 using estimacionesInfT2.doc, append ctitle(Institucionalidad-T2)


****7.2 Índices de percepción: 

*7.2.1 Valoración económica 
*Yi_ve=β0+β1Ti+β2Xi+εj
reg i_ve Treat1 Educ Exp IPS Edad
outreg2 using estimacionesPercT1.doc, replace ctitle(Valoración económica-T1)
reg i_ve Treat2 Educ Exp IPS Edad
outreg2 using estimacionesPercT2.doc, replace ctitle(Valoración económica-T2)

*7.2.2 Valoración de salud 
reg i_vs Treat1 Educ Exp IPS Edad
outreg2 using estimacionesPercT1.doc, append ctitle(Valoración Salud-T1)
reg i_vs Treat2 Educ Exp IPS Edad
outreg2 using estimacionesPercT2.doc, append ctitle(Valoración Salud-T2)

*7.2.3 Índice de valoración de derechos 
reg i_vd Treat1 Educ Exp IPS Edad
outreg2 using estimacionesPercT1.doc, append ctitle(Valoración Derechos-T1)
reg i_vd Treat2 Educ Exp IPS Edad
outreg2 using estimacionesPercT2.doc, append ctitle(Valoración Derechos-T2)


*****7.3 Índices de respuestas a historias reflexivas:
rename P27_i_1 dilema1
rename P28_i_1 dilema2
rename P29_i_1 dilema3
rename P30_i_1 dilema4
*Yi_refl1=β0+β1Ti+β2Xi+εj
 
reg dilema1 Treat1 Educ Exp IPS Edad
outreg2 using estimacionesReflexT1.doc, replace ctitle(Dilema I-T1)
reg dilema1 Treat2 Educ Exp IPS Edad
outreg2 using estimacionesReflexT2.doc, replace ctitle(Dilema I-T2)

reg dilema2 Treat1 Educ Exp IPS Edad
outreg2 using estimacionesReflexT1.doc, append ctitle(Dilema II-T1)
reg dilema2 Treat2 Educ Exp IPS Edad
outreg2 using estimacionesReflexT2.doc, append ctitle(Dilema II-T2)

reg dilema3 Treat1 Educ Exp IPS Edad
outreg2 using estimacionesReflexT1.doc, append ctitle(Dilema III-T1)
reg dilema3 Treat2 Educ Exp IPS Edad
outreg2 using estimacionesReflexT2.doc, append ctitle(Dilema III-T2)


reg dilema4 Treat1 Educ Exp IPS Edad
outreg2 using estimacionesReflexT1.doc, append ctitle(Dilema IV-T1)
reg dilema4 Treat2 Educ Exp IPS Edad
outreg2 using estimacionesReflexT2.doc, append ctitle(Dilema IV-T2)



*7.4 Índices combinados: 

*7.4.1 Información 

*Yi_inf=β0+β1Ti+β2Xi+εj
gen i_inf=(i_pe+i_salud+i_inst


*8.  Otros modelos de interés para el análisis 
*importancia que los participantes asignan al seguro social
gen importancia=.
replace importancia=1 if P2==1
replace importancia=0 if importancia==.

probit importancia Treat1 
probit importancia Treat2

