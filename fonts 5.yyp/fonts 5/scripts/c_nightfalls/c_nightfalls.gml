/// @description c_onemorenight
function c_nightfalls() {
	song = sm_nightfalls();

	bpm = 182;
	title = "Night Falls ~ Evening Star";
	audio = m_nightfalls;
	if global.noteoverride = 0 {
	    global.red = s_dark;
	    global.blue = s_darker;
	    global.purple = s_yetdarker;
	    global.freeze = s_umbra;
	    global.roll = s_nacht;
	    global.effect = s_blacklight;
	    global.mine = s_negative;
	    global.receptor = s_shadow;
	}
	if !global.gimmickactive {
	    global.scuffer = true;
	    global.gimmickactive = true;
	}
	songbg = bk_nightfalls;
	lanes = 4;
	xmod = 8;
	arrayx = array("T",
	"SPEED", "SPEED", "SPEED", "SPEED",
	"DIVIDE", "SOUL", "UNSOUL", "SOUL", "UNSOUL");
	arrayy = array(0,
	2, .5, 2, .5,
	10);
	//bg = bk_;
	//music = m_;



}
