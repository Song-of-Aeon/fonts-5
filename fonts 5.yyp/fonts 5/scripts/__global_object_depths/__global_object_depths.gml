function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // MELODYCHASER
	global.__objectDepths[1] = 0; // o_smparser
	global.__objectDepths[2] = 2; // object0
	global.__objectDepths[3] = -1; // o_note
	global.__objectDepths[4] = -1; // o_naturalend
	global.__objectDepths[5] = -4; // o_gimmickactivator
	global.__objectDepths[6] = -1; // o_freeze
	global.__objectDepths[7] = -1; // o_roll
	global.__objectDepths[8] = 1; // o_tail
	global.__objectDepths[9] = -1; // o_stay
	global.__objectDepths[10] = -1; // o_mine
	global.__objectDepths[11] = 0; // o_hit
	global.__objectDepths[12] = 0; // o_title
	global.__objectDepths[13] = -4; // o_hitfx
	global.__objectDepths[14] = 1; // o_start
	global.__objectDepths[15] = 0; // o_ChromaticAbberation
	global.__objectDepths[16] = 0; // o_violetabberation
	global.__objectDepths[17] = -2; // o_soul
	global.__objectDepths[18] = 0; // o_projectile
	global.__objectDepths[19] = -3; // o_knife
	global.__objectDepths[20] = -3; // o_bullet
	global.__objectDepths[21] = -3; // o_kunai
	global.__objectDepths[22] = -3; // o_bulfall
	global.__objectDepths[23] = -3; // o_bulwave
	global.__objectDepths[24] = -2; // o_sakuya
	global.__objectDepths[25] = -2; // o_yukari
	global.__objectDepths[26] = -4; // o_slowknife
	global.__objectDepths[27] = -3; // o_bounceknife2
	global.__objectDepths[28] = -3; // o_bounceknife
	global.__objectDepths[29] = -2; // o_privatesquare
	global.__objectDepths[30] = -3; // o_bulbomb
	global.__objectDepths[31] = -2; // o_solid
	global.__objectDepths[32] = -2; // o_cloud
	global.__objectDepths[33] = -2; // o_lock
	global.__objectDepths[34] = -2; // o_dancer
	global.__objectDepths[35] = -2; // o_hurt
	global.__objectDepths[36] = -2; // o_hurturn
	global.__objectDepths[37] = 0; // o_damage
	global.__objectDepths[38] = 0; // o_menu
	global.__objectDepths[39] = -4; // o_fao
	global.__objectDepths[40] = 1; // o_cutscene
	global.__objectDepths[41] = 0; // o_text
	global.__objectDepths[42] = -1; // o_worldbreak
	global.__objectDepths[43] = -5; // o_fai
	global.__objectDepths[44] = -2; // o_zero
	global.__objectDepths[45] = 0; // o_world
	global.__objectDepths[46] = 0; // o_ldworld
	global.__objectDepths[47] = 0; // o_flash
	global.__objectDepths[48] = -1; // o_pseudonote
	global.__objectDepths[49] = -1; // o_pseudohitfx
	global.__objectDepths[50] = -4; // o_textbox
	global.__objectDepths[51] = -4; // o_subbox
	global.__objectDepths[52] = 0; // o_vignette
	global.__objectDepths[53] = 1; // o_noteburst
	global.__objectDepths[54] = 0; // o_help
	global.__objectDepths[55] = -3; // o_controls
	global.__objectDepths[56] = -1; // o_blender
	global.__objectDepths[57] = -2; // o_cover
	global.__objectDepths[58] = 0; // o_sample_stereo3d
	global.__objectDepths[59] = -2; // o_flashfall
	global.__objectDepths[60] = -1; // o_switch
	global.__objectDepths[61] = -1; // o_switchback
	global.__objectDepths[62] = 0; // o_leaving


	global.__objectNames[0] = "MELODYCHASER";
	global.__objectNames[1] = "o_smparser";
	global.__objectNames[2] = "object0";
	global.__objectNames[3] = "o_note";
	global.__objectNames[4] = "o_naturalend";
	global.__objectNames[5] = "o_gimmickactivator";
	global.__objectNames[6] = "o_freeze";
	global.__objectNames[7] = "o_roll";
	global.__objectNames[8] = "o_tail";
	global.__objectNames[9] = "o_stay";
	global.__objectNames[10] = "o_mine";
	global.__objectNames[11] = "o_hit";
	global.__objectNames[12] = "o_title";
	global.__objectNames[13] = "o_hitfx";
	global.__objectNames[14] = "o_start";
	global.__objectNames[15] = "o_ChromaticAbberation";
	global.__objectNames[16] = "o_violetabberation";
	global.__objectNames[17] = "o_soul";
	global.__objectNames[18] = "o_projectile";
	global.__objectNames[19] = "o_knife";
	global.__objectNames[20] = "o_bullet";
	global.__objectNames[21] = "o_kunai";
	global.__objectNames[22] = "o_bulfall";
	global.__objectNames[23] = "o_bulwave";
	global.__objectNames[24] = "o_sakuya";
	global.__objectNames[25] = "o_yukari";
	global.__objectNames[26] = "o_slowknife";
	global.__objectNames[27] = "o_bounceknife2";
	global.__objectNames[28] = "o_bounceknife";
	global.__objectNames[29] = "o_privatesquare";
	global.__objectNames[30] = "o_bulbomb";
	global.__objectNames[31] = "o_solid";
	global.__objectNames[32] = "o_cloud";
	global.__objectNames[33] = "o_lock";
	global.__objectNames[34] = "o_dancer";
	global.__objectNames[35] = "o_hurt";
	global.__objectNames[36] = "o_hurturn";
	global.__objectNames[37] = "o_damage";
	global.__objectNames[38] = "o_menu";
	global.__objectNames[39] = "o_fao";
	global.__objectNames[40] = "o_cutscene";
	global.__objectNames[41] = "o_text";
	global.__objectNames[42] = "o_worldbreak";
	global.__objectNames[43] = "o_fai";
	global.__objectNames[44] = "o_zero";
	global.__objectNames[45] = "o_world";
	global.__objectNames[46] = "o_ldworld";
	global.__objectNames[47] = "o_flash";
	global.__objectNames[48] = "o_pseudonote";
	global.__objectNames[49] = "o_pseudohitfx";
	global.__objectNames[50] = "o_textbox";
	global.__objectNames[51] = "o_subbox";
	global.__objectNames[52] = "o_vignette";
	global.__objectNames[53] = "o_noteburst";
	global.__objectNames[54] = "o_help";
	global.__objectNames[55] = "o_controls";
	global.__objectNames[56] = "o_blender";
	global.__objectNames[57] = "o_cover";
	global.__objectNames[58] = "o_sample_stereo3d";
	global.__objectNames[59] = "o_flashfall";
	global.__objectNames[60] = "o_switch";
	global.__objectNames[61] = "o_switchback";
	global.__objectNames[62] = "o_leaving";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
