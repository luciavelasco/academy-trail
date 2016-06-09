var a = 1, b = 2, c = 3;
(function firstFunction(){
    var b = 5, c = 6;
    //a is one, b is five, c is six
    (function secondFunction(){
        var b = 8;
        //a is one, b is 8, c is six*
        console.log("a: "+a+", b: "+b+", c: "+c);
        //a is one, b is eight, c is six*
        (function thirdFunction(){
            var a = 7, c = 9;
            //a is seven, b is eight*, c is nine
            (function fourthFunction(){
                var a = 1, c = 8;
                //a is one, b is eight*, c is eight
            })();
        })();
    })();
})()
//a: 1, b: 8, c: 6
//because it's previously declared