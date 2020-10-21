if pulse {
    if fall {
        count += 3;
    }
    c_makefall();
    fall = !fall;
    pulse = false;
}
/*while count != 0 {
    
}*/
