
left = keyboard_check_pressed(vk_left) + keyboard_check_pressed(ord('A')) + keyboard_check_pressed(ord('M')) + keyboard_check_pressed(vk_numpad4);
down = keyboard_check_pressed(vk_down) + keyboard_check_pressed(ord('S')) + keyboard_check_pressed(188) + keyboard_check_pressed(vk_numpad5);
up = keyboard_check_pressed(vk_up) + keyboard_check_pressed(ord('K')) + keyboard_check_pressed(ord('W')) + keyboard_check_pressed(vk_numpad8);
right = keyboard_check_pressed(vk_right) + keyboard_check_pressed(ord('L')) + keyboard_check_pressed(ord('D')) + keyboard_check_pressed(190) + keyboard_check_pressed(vk_numpad6);

//Arrows/ASKL/WASD/KM,./8456

heldleft = keyboard_check(vk_left) + keyboard_check(ord('A')) + keyboard_check(ord('M')) + keyboard_check(vk_numpad4);
helddown = keyboard_check(vk_down) + keyboard_check(ord('S')) + keyboard_check(188) + keyboard_check(vk_numpad5);
heldup = keyboard_check(vk_up) + keyboard_check(ord('K')) + keyboard_check(ord('W')) + keyboard_check(vk_numpad8);
heldright = keyboard_check(vk_right) + keyboard_check(ord('L')) + keyboard_check(ord('D')) + keyboard_check(190) + keyboard_check(vk_numpad6);
swap = keyboard_check_pressed(vk_space) + keyboard_check_pressed(ord('E'));

/*
left = keyboard_check_pressed(vk_left) + keyboard_check_pressed(ord('A'));
down = keyboard_check_pressed(vk_down) + keyboard_check_pressed(ord('S'));
up = keyboard_check_pressed(vk_up) + keyboard_check_pressed(ord('L'));
right = keyboard_check_pressed(vk_right) + keyboard_check_pressed(186);
*/

/*
heldleft = keyboard_check(vk_left) + keyboard_check(ord('A'));
helddown = keyboard_check(vk_down) + keyboard_check(ord('S'));
heldup = keyboard_check(vk_up) + keyboard_check(ord('L'));
heldright = keyboard_check(vk_right) + keyboard_check(186);
*/

select = keyboard_check_pressed(ord('Z')) + keyboard_check_pressed(vk_enter);
back = keyboard_check_pressed(ord('X')) + keyboard_check_pressed(vk_escape);
//if keyboard_check_pressed(vk_anykey) show_message(keyboard_lastkey);
