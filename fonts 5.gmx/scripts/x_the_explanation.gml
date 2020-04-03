///x_the_explanation
/*
how does this work, you may be asking. how does this magnificent software possibly
parse and play those ridiculously complex .sm files?
well first thing it does is require you to not use sm files.
pop that thing open in np++, copy the header and difficult you want,
and paste it in a script not unlike the */sm_onemorenight()/*, making it a string
after that, make a */c_onemorenight()/* script that has the details you need.
originally it took the bpm and title from the sm for you,
but i figured there won't be very many songs in the first place so manual isn't a problem.
way easier for debugging too.

after that we plug that guy */into = MELODYCHASER/*, our resident funny object
press enter and you'll create */the = o_smparser/*.
heres what its going to do in the create event:
1: run MELODYCHASER.songscript
2: make a shit load of variables, including taking MELODYCHASER.xmod
3: start going through the song string and can record some of the metadata,
but i disabled all of that except the title because not necessary
4: skip the shit between the metadata and the notes
5: the real deal alright
until the end of the string, it'll go through and put every four numbers in a string in noteset[arraypos]
itll also tell you how many four sets of numbers are in each measure, divide that by four,
and thats the length of the measure.
every time the sm string tells you theres a new measure,
it goes backwards and retroactively makes every noteset in the measure the same length.
then it console logs the length of noteset.

6: making the notes
now we are using notemaker, which is gonna use the while loop and iterate through each of noteset's positions
and actually turn things into note objects [or not if its a zero].
based on the position its in, itll spawn the notes at that distance from the receptors' x [MELODYCHASER.bar],
multiplied by 32 over the length of the measure the notes are in as well as the xmod.
their speed [bpm] is determined by the provided bpm of the song divided by ??? multiplied by xmod.
so what is ????
no idea, but if you get the right number the notes go at the right speed. i call it the bpm buster
currently for the song that plays its like 300,
not correct at all but syncing is not the current issue so it doesn't matter.
the other test song was a bpm of 123 and had a bpm buster of 111.8, and that worked perfectly.
since this song is 180 bpm we can assume that something in the 160-170 range is correct.
still, the biggest problem is the thing that differentiates the note spawns based on how long the measure is.
whatever i messed up there, it made the last note of every measure despawn and likely
is not spawning the notes with correct relation to eachother, but i havent really tested that.

and then it console logs the whole noteset,
and tells melodychaser how many notes there are to determine scoring values for each note.

the end.
_*/


