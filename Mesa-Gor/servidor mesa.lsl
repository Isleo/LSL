//Código libre de servidor de productos en SL
string productGiveName = "mesa comedor 4.2";//Object name inside of the object to give if it is out of date.
string password = "123456789";//Password to protect from people stealing your hard work!!
string product = "mesa comedor";//The product series name, this is in place so you can handle multiple products per prim ^.^
integer latestVersion = 6;//This is the latest version of your product.

integer updateNotify = FALSE;//Want the server to email you when a product has been updated?
integer sendOldMessage = FALSE;//Want the server to message user that their product is out of date.
integer sendCurrentMessage = FALSE;//Want the server to message user stating that their product is up to date.
integer sendNewMessage = TRUE;//Want the server to message user that THEY have a newer product version then the server.
integer sendNewProduct = FALSE;//Want the server to RECEIVE the newer product from the user.
string emailAddress = "isleo11@gmail.com";//Your email address.

string currentMessage = "Tu producto está actualizado";
string overMessage = "Your product is newer then what is currently available. Sending to server...";
string oldMessage = "Tu producto está desactualizado. Enviando nueva versión...";
//====================================================================================================
//===Subject Format: password|product|version=========================================================
//===Message Format: UserKey==========================================================================
//==========================================WARNING===================================================
//===========There MUSNT be any spaces in between the "|" and all of them MUST match EXACTLY!!========
//====================================================================================================

default {
    state_entry() {
        llSetTimerEvent(2.5);//Poll for emails.
        llSetObjectDesc((string)llGetKey());//You will need the key when setting up you client
        llWhisper(0, (string)llGetKey());
    }
    
    timer() {
        llGetNextEmail("","");
        if(llGetFreeMemory() < 100){
            llInstantMessage(llGetOwner(), "/me is running low on available memory, script is resetting in 5 seconds.");
            llSleep(5);//There is nothing really to store in the runtime, so if were running
            //low on memory, just notify the owner and reset.
            llResetScript();
        }
    }
    
    email(string time, string address, string subj, string message, integer num_left) {
        list messageList = llParseString2List(subj, ["|"], []);//Parses the subject into the parts by "|" 
        string inputPassword = llList2String(messageList,0);//Get the first parced part.
        string inputProduct = llList2String(messageList,1);//Get the second parsed part.
        string inputVersionString = llList2String(messageList,2);//Get the THIRD parsed part.
        integer inputVersion = (integer)inputVersionString;//Just thought it would be better if we did it this way :)
        key inputUser = llDeleteSubString(message, 0, llSubStringIndex(message, "\n\n") + 1);
      
        //===========================================================================================
        if(inputPassword == password && inputProduct == product){
            if(inputVersion < latestVersion){//If its older then the newest version...
                if(sendOldMessage) llInstantMessage(inputUser, oldMessage);//If you want to send a message, then do!
                llGiveInventory(inputUser,productGiveName);//Send newest product
                if(updateNotify) llEmail(emailAddress, product + " has been updated.", product + " has been updated.");//Sends YOU a notification.
            }
            else if (inputVersion == latestVersion){//If it is the newest version...
                if(sendCurrentMessage) llInstantMessage(inputUser, currentMessage);//If you want to send a message, then do!
            }
            else if(inputVersion > latestVersion){//If its NEWER then the newest versiion..............
                if(sendNewMessage) llInstantMessage(inputUser, overMessage);//If you want to send a message, then do.
                if(sendNewProduct) llGiveInventory(inputUser,productGiveName);//If you want to give them YOUR newest version, then do.
            }
        }       
    }
}
