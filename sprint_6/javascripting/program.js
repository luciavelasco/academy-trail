//=============Hello World

function upperCaser(input) {
    return input.toUpperCase();
};

function lowerCase(input) {
    return input.toLowerCase()
};

console.log(upperCaser('test'));

/*module.exports = upperCaser;


 console.log(upperCaser('test'), lowerCase('TEST'))

 module.exports = {
 upper: upperCaser,
 lower: lowerCase
 };
 */

//=============Higher Order Functions

function operation() {
}

function repeat(operation, num) {
    for (var i = 0; i < num; i++) {
        operation();
    }
}

/*    function repeat(operation, num) {
 if (num <= 0) return
 operation()
 return repeat(operation, --num)
 }

 module.exports = repeat*/


//=============Basic: Map

/*function doubleAll(numbers) {
 var result = []
 for (var i = 0; i < numbers.length; i++) {
 result.push(numbers[i] * 2)
 }
 return result
 }

 module.exports = doubleAll*/
function doubleAll(numbers) {

    return numbers.map(function(variable_name_really_descripting){ return variable_name_really_descripting * 2;});
};


module.exports = doubleAll;

//var numbers = [1, 4, 9];