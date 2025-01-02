/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(arr, fn) {
    let newArr = new Array
    for(let i=0;i<arr.length;i++){
        if (fn(arr[i],i)) {
            newArr.push(arr[i])
            console.log("newArr loop",newArr)
        } else
        console.log(fn(arr[i],i))
        console.log(newArr)
    }
    return newArr
};