<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Variables</h1>

<p>Add 5 + 2 + 3, and display the result:</p>

<p id="demo"></p>

<script>
var x = 5 + 2 + 3;
document.getElementById("demo").innerHTML = x;

var x = 5;
var y = 6;
var z = x + y; 

var price1 = 5;
var price2 = 6;
var total = price1 + price2;

var pi = 3.14;
var person = "John Doe";
var answer = 'Yes I am!'; 

 var person = "John Doe", carName = "Volvo", price = 200; 
 var person = "John Doe",
carName = "Volvo",
price = 200; 

var carName = "Volvo";
var carName; 

 var x = "John" + " " + "Doe";
 
  var x = "5" + 2 + 3;
</script>

<script>
var carName = "Volvo";
document.getElementById("demo").innerHTML = carName;
</script>

<h2>JavaScript Variables</h2>

<p>The result of adding 2 + 3 + "5":</p>

<p id="demo"></p>

<script>
var x = 2 + 3 + "5"
document.getElementById("demo").innerHTML = x;
</script>

<h2>JavaScript $</h2>

<p>The dollar sign is treated as a letter in JavaScript names.</p>

<p id="demo"></p>

<script>
var $ = 2;
var $myMoney = 5;
document.getElementById("demo").innerHTML = $ + $myMoney;
</script>

<h2>JavaScript $</h2>

<p>The underscore is treated as a letter in JavaScript names.</p>

<p id="demo"></p>

<script>
var _x = 2;
var _100 = 5;
document.getElementById("demo").innerHTML = _x + _100;
</script>

</body>

<!-- Mirrored from www.w3schools.com/js/tryit.asp?filename=tryjs_variables_add_numbers by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Mar 2016 11:03:03 GMT -->
</html>