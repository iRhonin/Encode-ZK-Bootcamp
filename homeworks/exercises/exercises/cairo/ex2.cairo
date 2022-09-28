from starkware.cairo.common.uint256 import (uint256_add, Uint256)

// Modify both functions so that they increment
// supplied value and return it
func add_one(y: felt) -> (val: felt) {
    tempvar ONE = 1;
    let val = y + ONE;
    return (val,);
}

func add_one_U256{range_check_ptr}(y: Uint256) -> (val: Uint256) {
    let ONE: Uint256 = Uint256(low=1,high=0);
    let (val, _) = uint256_add(y, ONE);
    return (val,);
}
