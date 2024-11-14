/**
 * @param {...(null|boolean|number|string|Array|Object)} args
 * @return {number}
 */
var argumentsLength = function(...args) {
    const arraylength = args.length;
    return arraylength;
};

/**
 * argumentsLength(1, 2, 3); // 3
 */
