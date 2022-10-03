// Implement a funcion that returns:
// - 1 when magnitudes of inputs are equal
// - 0 otherwise

%builtins range_check

from starkware.cairo.common.math_cmp import (is_le)
from starkware.cairo.common.pow import (pow)

func magnitudes{range_check_ptr}(n: felt, order: felt) -> (magnitude: felt) {
    alloc_locals;

    let (temp) = pow(10, order);
    local reminder = n - temp;

    local is_less_than_10 = is_le(reminder, 10);
    if (is_less_than_10 == 1) {
       return (magnitude=order);
    }
    let (_magnitude) = magnitudes(n, order + 1);
    return (magnitude=_magnitude);
}

func abs_eq{range_check_ptr}(x: felt, y: felt) -> (bit: felt) {
    alloc_locals;

    let (magnitude_x) = magnitudes(x, 1);
    local _magnitude_x = magnitude_x;
    let (magnitude_y) = magnitudes(y, 1);
    if (_magnitude_x - magnitude_y == 0) {
        return (1,);
    }
    return (0,);
}
