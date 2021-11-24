/// @description console_log(expression1, expression2, ...)
/// @param expression1
/// @param  expression2
/// @param  ...
function console_log() {
	var r = string(argument[0]), i;
	for (i = 1; i < argument_count; i++) {
	    r += ", " + string(argument[i]);
	}
	show_debug_message(r);



}
