
%builtins output

from starkware.cairo.common.serialize import serialize_word

// Create a function that accepts a parameter and logs it
func log_value{output_ptr: felt*}(y: felt) {
    %{ print(y) %}

    serialize_word(y);
    return ();
}
