list bebidas_1 = ["1.-Copa Vino","1.-Vino","1.-Copa Agua","1.-Agua","1.-Atrás"];
list bebidas_2 = ["2.-Copa Vino","2.-Vino","2.-Copa Agua","2.-Agua","2.-Atrás"];
list bebidas_3 = ["3.-Copa Vino","3.-Vino","3.-Copa Agua","3.-Agua","3.-Atrás"];
list bebidas_4 = ["4.-Copa Vino","4.-Vino","4.-Copa Agua","4.-Agua","4.-Atrás"];
list bebidas_5 = ["5.-Copa Vino","5.-Vino","5.-Copa Agua","5.-Agua","5.-Atrás"];
list bebidas_6 = ["6.-Copa Vino","6.-Vino","6.-Copa Agua","6.-Agua","6.-Atrás"];
list tipos_1 = ["1.-Comidas","1.-Bebidas","1.-Volver"];
list tipos_2 = ["2.-Comidas","2.-Bebidas","2.-Volver"];
list tipos_3 = ["3.-Comidas","3.-Bebidas","3.-Volver"];
list tipos_4 = ["4.-Comidas","4.-Bebidas","4.-Volver"];
list tipos_5 = ["5.-Comidas","5.-Bebidas","5.-Volver"];
list tipos_6 = ["6.-Comidas","6.-Bebidas","6.-Volver"];
list comidas_1 =["1.-Plato","1.-Filete_1","1.-Filete_2","1.-Pollo","1.-Atrás"];
list comidas_2 =["2.-Plato","2.-Filete_1","2.-Filete_2","2.-Pollo","2.-Atrás"];
list comidas_3 =["3.-Plato","3.-Filete_1","3.-Filete_2","3.-Pollo","3.-Atrás"];
list comidas_4 =["4.-Plato","4.-Filete_1","4.-Filete_2","4.-Pollo","4.-Atrás"];
list comidas_5 =["5.-Plato","5.-Filete_1","5.-Filete_2","5.-Pollo","5.-Atrás"];
list comidas_6 =["6.-Plato","6.-Filete_1","6.-Filete_2","6.-Pollo","6.-Atrás"];
list comensales = ["Uno","Dos","Tres","Cuatro","Cinco","Seis"];
string mensaje = "Elige comida:"; 
string mensaje_comensal = "Elige asiento:";
string mensaje_tipos = "¿Qué desea?";
key ID_Tocador;
integer canal=616 ;
integer ID_objeto;
default{
    touch_start(integer total_number) {
    ID_Tocador = llDetectedKey(0);
    llDialog(ID_Tocador, mensaje_comensal, comensales, canal);
    ID_objeto = llListen( canal, "", ID_Tocador, "");
}
   
 listen(integer canal, string name, key id, string eleccion) { 
 
      if (eleccion == "Uno") {

     llDialog(ID_Tocador, mensaje, tipos_1, canal); 
    }
    else if (eleccion == "Dos") {
    
      llDialog(ID_Tocador, mensaje, tipos_2, canal); 
    }  
    else  if (eleccion == "Tres") {
    
      llDialog(ID_Tocador, mensaje, tipos_3, canal); 
    }
     else  if (eleccion == "Cuatro") {
    
      llDialog(ID_Tocador, mensaje, tipos_4, canal); 
    }
      else if (eleccion == "Cinco") {
    
      llDialog(ID_Tocador, mensaje, tipos_5, canal); 
    }
    else if (eleccion == "Seis")  {
    
      llDialog(ID_Tocador, mensaje, tipos_6, canal); 
    }
     if (eleccion == "1.-Comidas") {

     llDialog(ID_Tocador, mensaje, comidas_1, canal); 
    }
    else if (eleccion == "2.-Comidas") {
    
      llDialog(ID_Tocador, mensaje, comidas_2, canal); 
    }  
    else  if (eleccion == "3.-Comidas") {
    
      llDialog(ID_Tocador, mensaje, comidas_3, canal); 
    }
     else  if (eleccion == "4.-Comidas") {
    
      llDialog(ID_Tocador, mensaje, comidas_4, canal); 
    }
      else if (eleccion == "5.-Comidas") {
    
      llDialog(ID_Tocador, mensaje, comidas_5, canal); 
    }
    else if (eleccion == "6.-Comidas")  {
    
      llDialog(ID_Tocador, mensaje, comidas_6, canal); 
    }
   
    if (eleccion == "1.-Bebidas") {

     llDialog(ID_Tocador, mensaje, bebidas_1, canal); 
    }
    else if (eleccion == "2.-Bebidas") {
    
      llDialog(ID_Tocador, mensaje, bebidas_2, canal); 
    }  
    else  if (eleccion == "3.-Bebidas") {
    
      llDialog(ID_Tocador, mensaje, bebidas_3, canal); 
    }
     else  if (eleccion == "4.-Bebidas") {
    
      llDialog(ID_Tocador, mensaje, bebidas_4, canal); 
    }
      else if (eleccion == "5.-Bebidas") {
    
      llDialog(ID_Tocador, mensaje, bebidas_5, canal); 
    }
    else if (eleccion == "6.-Bebidas")  {
    
      llDialog(ID_Tocador, mensaje, bebidas_6, canal); 
    }
       else if (eleccion == "1.-Volver")  {
    
      llDialog(ID_Tocador, mensaje_comensal, comensales, canal); 
    }
     

     if (eleccion == "1.-Filete_1") {
     
       llRezObject("Filete_1 script", llGetPos() + <-1.1,0,.22-0.1169>, <0.0,0.0,0>, <0.0,1.0,0.0,1.0>, 0);
    }
     else if(eleccion == "1.-Filete_2") {
        
     
       llRezObject("Filete_2 script", llGetPos() + <-1.0977,0.0008,.0938>, <0.0,0.0,0.0>, <0.50000, 0.50000, 0.50000, 0.50000>, 0);
    }
      else if (eleccion == "1.-Pollo") {
     
       llRezObject("Pollo script", llGetPos() + <-1.1048,0,.126>, <0.0,0.0,0.0>,  <0.00000, -0.00000, -0.38268, 0.92388>, 0);
    }
    else if (eleccion == "1.-Plato") {
      llRezObject("Plato script", llGetPos() + <-1.1,0,.22>, <0.0,0.0,0.0>, <0.0,0.5,0.0,0.0>, 0);
}
     if (eleccion == "1.-Copa Vino" ) {
      llRezObject("Copa Vino", llGetPos() + <-1.1+0.3389,-0.1932,.22-0.0271>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "1.-Vino") {
      llRezObject("Vino", llGetPos() + <-1.1+0.3389,-0.1932,.22+0.0137>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "1.-Copa Agua" ) {
      llRezObject("Copa de agua", llGetPos() + <-1.1+0.3515,-0.0099,.22-0.0073>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "1.-Agua") {
      llRezObject("Agua", llGetPos() + <-1.1+0.3515,-0.0099,.22+0.0408>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
       else if (eleccion == "1.-Atrás")  {
    
      llDialog(ID_Tocador, mensaje_tipos, tipos_1, canal); 
    }
   
      if (eleccion == "2.-Filete_1"|| eleccion == "2.-Steak_1") {
     
       llRezObject("Filete_1 script", llGetPos() + <-0.55,-0.952679442,.22-0.1169>, <0.0,0.0,0.0>, <0.0,1.0,0.0,1.0>, 0);
    }
    else if (eleccion == "2.-Filete_2"|| eleccion == "2.-Steak_2") {
     
       llRezObject("Filete_2 script", llGetPos() + <-0.5477,-0.951879442,.0938>, <0.0,0.0,0.0>, <0.50000, 0.50000, 0.50000, 0.50000>, 0);
    }
      else if (eleccion == "2.-Pollo"|| eleccion == "2.-Chicken") {
     
       llRezObject("Pollo script", llGetPos() + <-0.5452,-0.952679442,.126>, <0.0,0.0,0.0>,  <0.00000, -0.00000, -0.38268, 0.92388>, 0);
    }
    else if (eleccion == "2.-Plato" || eleccion == "2.-Dish")  {
      llRezObject("Plato script", llGetPos() + <-0.55,-0.952679442,.22>, <0.0,0.0,0.0>, <0.0,0.5,0.0,0.0>, 0);
}
     if (eleccion == "2.-Copa Vino" ) {
      llRezObject("Copa Vino", llGetPos() + <-0.2132,-0.7557,0.1929>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "2.-Vino") {
      llRezObject("Vino", llGetPos() + <-0.2132,-0.7557,0.2337>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "2.-Copa Agua" ) {
      llRezObject("Copa de agua", llGetPos() + <-0.3657,-0.6532,0.2127>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "2.-Agua") {
      llRezObject("Agua", llGetPos() + <-0.3657,-0.6532,0.2608>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
       else if (eleccion == "2.-Atrás")  {
    
     llDialog(ID_Tocador, mensaje_tipos, tipos_2, canal); 
    }
      if (eleccion == "3.-Filete_1"|| eleccion == "3.-Steak_1") {
     
       llRezObject("Filete_1 script", llGetPos() + <0.55,-0.952679442,.22-0.1169>, <0.0,0.0,0.0>, <0.0,1.0,0.0,1.0>, 0);
    }
    else if (eleccion == "3.-Filete_2"|| eleccion == "3.-Steak_2") {
     
       llRezObject("Filete_2 script", llGetPos() + <0.5523,-0.951879442,.0938>, <1.0,0.0,0.0>, <0.50000, 0.50000, 0.50000, 0.50000>, 0);
    }
      else if (eleccion == "3.-Pollo"|| eleccion == "3.-Chicken") {
     
       llRezObject("Pollo script", llGetPos() + <0.5548,-0.952679442,.126>, <0.0,0.0,0.0>,  <0.00000, -0.00000, -0.38268, 0.92388>, 0);
    }
    else if (eleccion == "3.-Plato" || eleccion == "3.-Dish")  {
      llRezObject("Plato script", llGetPos() + <0.55,-0.952679442,.22>, <0.0,0.0,0.0>, <0.0,0.5,0.0,0.0>, 0);
}
    if (eleccion == "3.-Copa Vino" ) {
      llRezObject("Copa Vino", llGetPos() + <0.5479,-0.5625,0.1929>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "3.-Vino") {
      llRezObject("Vino", llGetPos() + <0.5479,-0.5625,0.2337>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "3.-Copa Agua" ) {
      llRezObject("Copa de agua", llGetPos() + <0.3828,-0.6433,0.2127>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "3.-Agua") {
      llRezObject("Agua", llGetPos() + <0.3828,-0.6433,0.2608>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
       else if (eleccion == "3.-Atrás")  {
    
   llDialog(ID_Tocador, mensaje_tipos, tipos_3, canal);
    }

      if (eleccion == "4.-Filete_1"|| eleccion == "4.-Steak_1") {
     
       llRezObject("Filete_1 script", llGetPos() + <1.1,0.0,.22-0.1169>, <0.0,0.0,0.0>, <0.0,1.0,0.0,1.0>, 0);
    }
    else if (eleccion == "4.-Filete_2"|| eleccion == "4.-Steak_2") {
     
       llRezObject("Filete_2 script", llGetPos() + <1.1,0.0,.0938>, <0.0,0.0,0.0>, <0.50000, 0.50000, 0.50000, 0.50000>, 0);
    }
      else if (eleccion == "4.-Pollo"|| eleccion == "4.-Chicken") {
     
       llRezObject("Pollo script", llGetPos() + <1.1048,0.0,.126>, <0.0,0.0,0.0>,  <0.00000, -0.00000, -0.38268, 0.92388>, 0);
    }
    else if (eleccion == "4.-Plato"|| eleccion == "4.-Dish")  {
      llRezObject("Plato script", llGetPos() + <1.1,0.0,.22>, <0.0,0.0,0.0>, <0.0,0.5,0.0,0.0>, 0);
}
    if (eleccion == "4.-Copa Vino" ) {
      llRezObject("Copa Vino", llGetPos() + <0.7611,0.1932,0.1929>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "4.-Vino") {
      llRezObject("Vino", llGetPos() + <0.7611,0.1932,0.2337>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "4.-Copa Agua" ) {
      llRezObject("Copa de agua", llGetPos() + <0.7485,0.0099,0.2127>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "4.-Agua") {
      llRezObject("Agua", llGetPos() + <0.7485,0.0099,0.2608>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
       else if (eleccion == "4.-Atrás")  {
    
      llDialog(ID_Tocador, mensaje_tipos, tipos_4, canal);
    }
      if (eleccion == "5.-Filete_1"|| eleccion == "5.-Steak_1") {
     
       llRezObject("Filete_1 script", llGetPos() + <0.55,0.952679442,.22-0.1169>, <0.0,0.0,0.0>, <0.0,1.0,0.0,1.0>, 0);
    }
    else if (eleccion == "5.-Filete_2"|| eleccion == "5.-Steak_2") {
     
       llRezObject("Filete_2 script", llGetPos() + <0.5523,0.953479442,.0938>, <0.0,0.0,0.0>, <0.50000, 0.50000, 0.50000, 0.50000>, 0);
    }
      else if (eleccion == "5.-Pollo"|| eleccion == "5.-Chicken") {
     
       llRezObject("Pollo script", llGetPos() + <0.5548,0.952679442,.126>, <0.0,0.0,0.0>,  <0.00000, -0.00000, -0.38268, 0.92388>, 0);
    }
    else if (eleccion == "5.-Plato" || eleccion == "5.-Dish")  {
      llRezObject("Plato script", llGetPos() + <0.55,0.952679442,.22>, <0.0,0.0,0.0>, <0.0,0.5,0.0,0.0>, 0);
}
    if (eleccion == "5.-Copa Vino" ) {
      llRezObject("Copa Vino", llGetPos() + <0.2132,0.7557,0.1929>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "5.-Vino") {
      llRezObject("Vino", llGetPos() + <0.2132,0.7557,0.2337>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "5.-Copa Agua" ) {
      llRezObject("Copa de agua", llGetPos() + <0.3657,0.6532,0.2127>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "5.-Agua") {
      llRezObject("Agua", llGetPos() + <0.3657,0.6532,0.2608>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
       else if (eleccion == "5.-Atrás")  {
    
      llDialog(ID_Tocador, mensaje_tipos, tipos_5, canal);
    }
    if (eleccion == "6.-Filete_1"|| eleccion == "6.-Steak_1") {
    
       llRezObject("Filete_1 script", llGetPos() + <-0.55,0.952679442,.22-0.1169>, <0.0,0.0,0.0>, <0.0,1.0,0.0,1.0>, 0);
    }
    else if (eleccion == "6.-Filete_2"|| eleccion == "6.-Steak_2") {
     
       llRezObject("Filete_2 script", llGetPos() + <-0.5477,0.953479442,.0938>, <0.0,0.0,0.0>, <0.50000, 0.50000, 0.50000, 0.50000>, 0);
    }
      else if (eleccion == "6.-Pollo"|| eleccion == "6.-Chicken") {
     
       llRezObject("Pollo script", llGetPos() + <-0.5452,0.952679442,.126>, <0.0,0.0,0.0>,  <0.00000, -0.00000, -0.38268, 0.92388>, 0);
    }
    else if (eleccion == "6.-Plato" || eleccion == "6.-Dish")  {
      llRezObject("Plato script", llGetPos() + <-0.55,0.952679442,.22>, <0.0,0.0,0.0>, <0.0,0.5,0.0,0.0>, 0);
}
    if (eleccion == "6.-Copa Vino" ) {
      llRezObject("Copa Vino", llGetPos() + <-0.5479,0.5625,0.1929>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "6.-Vino") {
      llRezObject("Vino", llGetPos() + <-0.5479,0.5625,0.2337>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "6.-Copa Agua" ) {
      llRezObject("Copa de agua", llGetPos() + <-0.3828,0.6433,0.2127>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
    else if (eleccion == "6.-Agua") {
      llRezObject("Agua", llGetPos() + <-0.3828,0.6433,0.2608>, <0.0,0.0,0.0>, <0.0,0,0.0,0.0>, 0);
}
       else if (eleccion == "6.-Atrás")  {
    
     llDialog(ID_Tocador, mensaje_tipos, tipos_6, canal);
    }
}
}
