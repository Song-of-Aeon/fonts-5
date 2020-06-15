///txt_
//depending on if the message[] = is prefacing it, you have | <   this  > | much space
//and five lines to work with
message[0] = "Yo!";
message[1] = "We're almost there!";
message[2] = "We can be back home once this place is fixed.";
message[3] = "For now, just keep it up!";

choice[0] = "";
choiceat[1] = 99;
choiceoutcome[0] = "";

durability = 20;
durabilityset = 20;

c_txtcommon();
/*parameters to add for choices:
choice[] = str; //text for choices
choiceat[] = int; //where the choices are
choiceoutcome[] = int; //where the second choice takes you
message_end2[] = int; //alternate dialogue ending
choice_end2[] = timeline; //outcome after alternate ending*/




