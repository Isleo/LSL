string mensaje = "¿Seguro que desea borrarlo?"; 
key ID_Tocador;
integer canal = 0 ;
integer ID_objeto;
list condicion = ["Si","No"];
 
default{
    touch_start(integer total_number) {
    integer canal = (integer)(llFrand(-1000000000.0) - 1000000000.0);
    ID_Tocador = llDetectedKey(0);
    llDialog(ID_Tocador, mensaje, condicion, canal);
    ID_objeto = llListen( canal, "", ID_Tocador, "");
  }
 
  listen(integer canal, string name, key id, string eleccion) { 
    if (eleccion == "Si") {
     llDie(); 
    }
    else {
    
      llResetScript(); 
}
}
}
