/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(arr, fn) {
    const newArr = new Array(arr.length); // new array
    for (let i=0;i<arr.length;i++) { // for loop to modify each number
        newArr[i] = fn(arr[i], i); // select newarray item and modify -- based on original array
    }
    return newArr;
};