#include <lean/lean.h>
#include <stdio.h>

extern void printhello();
extern void nohello();

lean_obj_res lean_printhello(lean_obj_arg unit) {
    printhello();
    return lean_box(0);
}

lean_obj_res lean_nohello(lean_obj_arg unit) {
    nohello();
    return lean_box(0);
}