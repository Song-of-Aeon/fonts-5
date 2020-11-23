///txt_
//depending on if the message[] = is prefacing it, you have | <   this  > | much space
//and five lines to work with
message[0] = "Yo!";
message[1] = "The next one is pretty erratic.";
message[2] = "It's calm now, but I won't have the chance to get a word in when the flow comes back.";
message[3] = "We're almost there, though!";
message[4] = "We can be back home once this place is fixed.";
message[5] = "For now, just keep it up!";

choice[0] = "";
choiceat[1] = 99;
choiceoutcome[0] = "";

durability = 22;
durabilityset = 25;

c_txtcommon();
/*parameters to add for choices:
choice[] = str; //text for choices
choiceat[] = int; //where the choices are
choiceoutcome[] = int; //where the second choice takes you
message_end2[] = int; //alternate dialogue ending
choice_end2[] = timeline; //outcome after alternate ending*/




