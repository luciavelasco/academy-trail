var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var filtered = numbers.filter(function evenNumbers(number) {
    return number % 2 === 0;
});
console.log(filtered);

/*
 Here is an example:

 var pets = ['cat', 'dog', 'elephant'];
 var filtered = pets.filter(function (pet) {
 return (pet !== 'elephant');
 });

 The filtered variable will now only contain cat and dog.

 functions named for the purposes of error messages which will refer to them,
 they are otherwise anonymous and names are unnecessary - often left out for brevity
 */