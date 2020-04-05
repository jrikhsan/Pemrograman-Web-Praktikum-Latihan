<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Numbers</h1>

<p>Number can be written with or without decimals.</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = 10.50;
document.getElementById("demo").innerHTML = "John Doe";
</script>

<h1>JavaScript Variables</h1>

<p>In this example, x is defined as a variable.
Then, x is assigned the value of 6:</p>

<p id="demo"></p>

<script>
var x;
x = 6;
document.getElementById("demo").innerHTML = x;
</script>

<h1>Assigning Values</h1>

<p>In JavaScript the = operator is used to assign values to variables.</p>

<p id="demo"></p>

<script>
var x = 5;
var y = 6;
document.getElementById("demo").innerHTML = x + y;
</script>

<h1>JavaScript Operators</h1>

<p>JavaScript uses arithmetic operators to compute values (just like algebra).</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = (5 + 6) * 10;
</script>

<h1>JavaScript Expressions</h1>

<p>Expressions compute to values.</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = 5 * 10;
</script>

<h1>The var Keyword Creates a Variable</h1>

<p id="demo"></p>

<script>
var x = 5 + 6;
var y = x * 10;
document.getElementById("demo").innerHTML = y;
</script>

<h1>Comments are NOT Executed</h1>

<p id="demo"></p>

<script>
var x = 5;
// var x = 6; I will not be executed
document.getElementById("demo").innerHTML = x;
</script>

<h1>JavaScript is Case Sensitive</h1>

<p>Try change lastName to lastname.</p>

<p id="demo"></p>

<script>
var lastName = "Doe";
var lastname = "Peterson";
document.getElementById("demo").innerHTML = lastname;
</script>

</body>

<!-- Mirrored from www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_numbers by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Mar 2016 11:03:02 GMT -->
</html>
