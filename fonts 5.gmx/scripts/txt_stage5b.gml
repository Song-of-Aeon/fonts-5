///txt_
//depending on if the message[] = is prefacing it, you have | <   this  > | much space
//and five lines to work with
message[0] = "This is it!";
message[1] = "The parser is stable, and I can already see the planet moving!";
message[2] = "Only one more set of flux to counter!";
message[3] = "The flow's going straight to you, without anything in the way.";
message[4] = "It's clear, but it's the strongest one yet.";
message[5] = "Survive this, and everything will come back.";

choice[0] = "";
choiceat[1] = 99;
choiceoutcome[0] = "";

durability = 70;
durabilityset = 70;

c_txtcommon();
/*parameters to add for choices:
choice[] = str; //text for choices
choiceat[] = int; //where the choices are
choiceoutcome[] = int; //where the second choice takes you
message_end2[] = int; //alternate dialogue ending
choice_end2[] = timeline; //outcome after alternate ending*/




