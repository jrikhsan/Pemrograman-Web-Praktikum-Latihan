<!DOCTYPE html>
<html>
<body>

<p>In HTML, JavaScript statements are "commands" to the browser.</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = 
"Hello Dolly.";
</script>

<script>
var x = 5;
var y = 6;
var z = x + y;
document.getElementById("demo").innerHTML = z;
</script>

<p id="myPar">I am a paragraph.</p>
<div id="myDiv">I am a div.</div>

<p>
<button type="button" onclick="myFunction()">Try it</button>
</p>

<script>
function myFunction() {
    document.getElementById("myPar").innerHTML = "Hello Dolly.";
    document.getElementById("myDiv").innerHTML = "How are you?";
}
</script>
</body>

<!-- Mirrored from www.w3schools.com/js/tryit.asp?filename=tryjs_statement by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Mar 2016 11:03:02 GMT -->
</html>
