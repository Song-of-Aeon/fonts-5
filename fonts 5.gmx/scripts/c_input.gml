
left = keyboard_check_pressed(vk_left) + keyboard_check_pressed(ord('S'));
down = keyboard_check_pressed(vk_down) + keyboard_check_pressed(ord('D'));
up = keyboard_check_pressed(vk_up) + keyboard_check_pressed(ord('K'));
right = keyboard_check_pressed(vk_right) + keyboard_check_pressed(ord('L'));

heldleft = keyboard_check(vk_left) + keyboard_check(ord('S'));
helddown = keyboard_check(vk_down) + keyboard_check(ord('D'));
heldup = keyboard_check(vk_up) + keyboard_check(ord('K'));
heldright = keyboard_check(vk_right) + keyboard_check(ord('L'));

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

select = keyboard_check(ord('Z')) + keyboard_check(vk_enter);
back = keyboard_check(ord('X')) + keyboard_check(vk_escape);

