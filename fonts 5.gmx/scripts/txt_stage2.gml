///txt_
//depending on if the message[] = is prefacing it, you have | <   this  > | much space
//and five lines to work with
message[0] = "Hey!";
message[1] = "Are you still on beat?";
message[2] = "I messed up and cut the flow in half! Sorry!";
message[3] = "Pay attention to both sides!";

choice[0] = "";
choiceat[1] = 99;
choiceoutcome[0] = "";

durability = 60;
durabilityset = 60;


c_txtcommon();
/*parameters to add for choices:
choice[] = str; //text for choices
choiceat[] = int; //where the choices are
choiceoutcome[] = int; //where the second choice takes you
message_end2[] = int; //alternate dialogue ending
choice_end2[] = timeline; //outcome after alternate ending*/




