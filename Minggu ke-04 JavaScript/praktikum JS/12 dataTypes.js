<!DOCTYPE html>
<html>
<body>

<h2>JavaScript</h2>

<p>JavaScript evaluates expressions from left to right. Different sequences can produce different results:</p>

<p id="demo"></p>

<script>
var x = "Volvo" + 16 + 4;
document.getElementById("demo").innerHTML = x;
</script>

<h2>JavaScript Data Types</h2>

<p>JavaScript has dynamic types. This means that the same variable can be used to hold different data types:</p>

<p id="demo"></p>

<script>
var x;         // Now x is undefined
x = 5;         // Now x is a Number
x = "John";      // Now x is a String

document.getElementById("demo").innerHTML = x;
</script>

<h2>JavaScript Booleans</h2>

<p>Booleans can have two values: true or false:</p>

<p id="demo"></p>

<script>
var x = 5;
var y = 5;
var z = 6;
document.getElementById("demo").innerHTML =
(x == y) + "<br>" + (x == z);
</script>

<h2>JavaScript Arrays</h2>

<p>Array indexes are zero-based, which means the first item is [0].</p>

<p id="demo"></p>

<script>
var cars = ["Saab","Volvo","BMW"];

document.getElementById("demo").innerHTML = cars[2];
</script>

<h2>JavaScript Objects</h2>

<p id="demo"></p>

<script>
var person = {
  firstName : "John",
  lastName  : "Doe",
  age     : 50,
  eyeColor  : "blue"
};

document.getElementById("demo").innerHTML =
person.firstName + " is " + person.age + " years old.";
</script>

<h2>JavaScript</h2>

<p>Undefined and null are equal in value but different in type:</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML =
typeof undefined + "<br>" +
typeof null + "<br><br>" +
(null === undefined) + "<br>" +
(null == undefined);
</script>

<h2>JavaScript typeof</h2>
<p>The typeof operator returns object for both objects, arrays, and null.</p>
<p>The typeof operator does not return object for functions.</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = 
typeof {name:'john', age:34} + "<br>" +
typeof [1,2,3,4] + "<br>" +
typeof null + "<br>" +
typeof function myFunc(){};
</script>

</body>
</html>


