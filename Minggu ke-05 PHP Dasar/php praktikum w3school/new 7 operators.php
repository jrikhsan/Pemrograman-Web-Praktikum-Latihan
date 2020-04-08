<!DOCTYPE html>
<html>
<body>

<?php
$txt1 = "Hello";
$txt2 = " world!";
echo $txt1 . $txt2;
?>  

</body>
</html>

<!DOCTYPE html>
<html>
<body>

<?php
$txt1 = "Hello";
$txt2 = " world!";
$txt1 .= $txt2;
echo $txt1;
?>  

</body>
</html>

<!DOCTYPE html>
<html>
<body>

<?php
$x = array("a" => "red", "b" => "green");  
$y = array("c" => "blue", "d" => "yellow");  

print_r($x + $y); // union of $x and $y
?>  

</body>
</html>

<!DOCTYPE html>
<html>
<body>

<?php
   // if empty($user) = TRUE, set $status = "anonymous"
   echo $status = (empty($user)) ? "anonymous" : "logged in";
   echo("<br>");

   $user = "John Doe";
   // if empty($user) = FALSE, set $status = "logged in"
   echo $status = (empty($user)) ? "anonymous" : "logged in";
?>  

</body>
</html>

<!DOCTYPE html>
<html>
<body>

<?php
   // variable $user is the value of $_GET['user']
   // and 'anonymous' if it does not exist
   echo $user = $_GET["user"] ?? "anonymous";
   echo("<br>");
  
   // variable $color is "red" if $color does not exist or is null
   echo $color = $color ?? "red";
?>  

</body>
</html>

