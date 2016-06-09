/*
function pythagorean_special(special) {
    var a = special - b - c;
    var b = special - a - c;
    var c = special - b - a;
    c = math.sqrt(a^2 + b^2);
    special = a + b + c;
 */

function pythagorean_triplet(perimeter) {
    var ratio=perimeter/12;
    var a = Math.round(ratio * 3);
    var b = Math.round(ratio * 4);
    var c = Math.round(ratio * 5);
    return a+", "+b+", "+c;
}
console.log(pythagorean_triplet(1000));