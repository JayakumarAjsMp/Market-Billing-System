<?php include 'header.php'; ?>
   <?php 
    session_start();
	error_reporting(0);
	$pwd1=$_SESSION["pwdtxt"];
	$uname1=$_SESSION["unametxt"];
?> 
<div id="back">
    <center>
  
    <div id="form">
        <h3>Give Product Details</h3>
<form id="form1" name="form1" method="post" action="bill.php">
<label>
    <br/>
Barcode:- <input name="food[]" type="text" id="food" required/>&nbsp;&nbsp; Quantity:- <input name="q[]" type="text" id="q" required/>
</label>
<div id="div"></div><br>
<p><input type="button" id="add1" name="add1" value="Add" onclick="generateRow()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label>
<input type="submit" name="submit" id="submit" value="Submit" />
</label>
</p>
</form>
</div>
</center>
<!--?php
// $_POST['txt'][0] will be your first textbox
// $_POST['txt'][1] will be your second textbox
// etc.    

if ($_SERVER["REQUEST_METHOD"] == "POST") {
$alTxt= $_POST['food'];
$q=$_POST['q'];
$N = count($alTxt);
    for($i=0; $i < $N; $i++)
    {
      echo"<br>($alTxt[$i])";
    }
}
?-->
</div>

<?php include 'footer.php'; ?>