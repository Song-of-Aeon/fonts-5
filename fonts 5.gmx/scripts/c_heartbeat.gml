if pulse {
    if fall {
        count += 5;
    }
    c_makefall();
    fall = !fall;
    pulse = false;
}
/*while count != 0 {
    
}*/
