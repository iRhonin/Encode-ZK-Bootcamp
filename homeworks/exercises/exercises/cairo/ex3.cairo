%builtins output

from starkware.cairo.common.serialize import serialize_word

func simple_math{output_ptr: felt*}() {
    // adding 13 +  14
    tempvar x = 13 + 14;
    serialize_word(x);

    // multiplying 3 * 6
    tempvar y = 3 * 6;
    serialize_word(y);

    // dividing 6 by 2
    tempvar z = 6 / 2;
    serialize_word(z);

    // dividing 70 by 2
    tempvar g = 70 / 2;
    serialize_word(g);

    // dividing 7 by 2
    tempvar f = 7 / 2;
    serialize_word(f);

    return ();
}
