#6)  Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:
#23500, 5960, 2300, 10200, 8900
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”. Calcular
# el monto total gastado a lo largo del tiempo por atención de “Frida”. Crear una función que cuente cuantos gastos
# fueron superiores a 5000 mostrando  el número calculado en pantalla.


Historial2 =(23500, 5960, 2300, 10200, 8900)


 
GastosFrida = sum(Historial2)
print ("----------------------------------------------------------- ")
print (" ")
print ("La sumatoria de los gastos de Frida son :  $ " , GastosFrida)
print (" ")
print ("----------------------------------------------------------- ")
print (" ")
print ("*********************************************************** ")
print ("*********************************************************** ")

i=0
GastosS= 0
for i in Historial2:
    
    if i > 5000:
        GastosS += 1
        
print (" ")
print ("----------------------------------------------------------- ")
print (" ")
print ("Gastos Superiores a $ 5000 Son: " , GastosS)
print (" ") 
print ("----------------------------------------------------------- ")



