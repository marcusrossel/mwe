#[no_mangle]
pub extern "C" fn printhello() {
    println!("Hello");
}

#[no_mangle]
pub extern "C" fn nohello() {
    println!("Hello");
    loop { };
}
