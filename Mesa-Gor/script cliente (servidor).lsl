string serverKey = "79c815d5-4178-ca1d-4fa9-ccb451b4e6f2";
string productName = "mesa comedor";
string password = "123456789";
integer currentVersion = 4;

default {
    on_rez(integer param){
    llEmail(serverKey + "@lsl.secondlife.com", password + "|" + productName + "|" + (string)currentVersion, (string)llGetOwner());
    llSay(0, "Thank you," + llKey2Name(llGetOwner()) + ", we are currently checking to see if there is a product update available.");
    llSay(0, "Gracias," + llKey2Name(llGetOwner()) + ",estamos verificando si hay nuevas actualizaciones del producto.");
    }
}
