<html>
    <head>

<title>SIT BILLING</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>

<!-- Item add -->
<script>
function generateRow1() {
var d=document.getElementById("div");

d.innerHTML+="<p>Item <input name='bar[]' type='text' id='bar' placeholder='Barcode Reader'required/>&nbsp;&nbsp; <input name='name[]' type='text' id='name' placeholder='Item Name'required/>&nbsp;&nbsp;  <input name='company[]' type='text' id='company' placeholder='Company'required/>&nbsp;&nbsp; <input name='cost[]' type='text' id='cost' placeholder='in rupees'required/>&nbsp;&nbsp; <input name='gst[]' type='text' id='gst' placeholder='in %'required/>";

}

</script>

<!-- Print -->
<script>

function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
     window.location="billentry.php";
}
</script>
<!-- Bill -->
<script>
function generateRow() {

var d=document.getElementById("div");
d.innerHTML+="<p>Barcode:- <input type='text' name='food[]' id='food' required>&nbsp;&nbsp; Quantity:- <input type='text' id='q' name='q[]' required>";

}

</script>

<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
    <?php 
    session_start();
	error_reporting(0);
	$pwd1=$_SESSION["pwdtxt"];
	$uname1=$_SESSION["unametxt"];
?>    
<div id="nav" name="nav"> <img src="images/picture/logo.png"><p id="pd" name="pd>"><a href="insert.php"><input type="button" id="add" name="add" value="Item Entry"/></a>&nbsp;&nbsp;&nbsp;<a href="billentry.php"><input type="button" id="add" name="add" value="Bill"/></a>&nbsp;&nbsp;&nbsp;<a href="logout.php"><input type="button" id="add" name="add" value="Logout"/></a>&nbsp;&nbsp;&nbsp;</p></div>
  <center>  <h1 id="head">BILLING SYSTEM</h1><br><br>
</center>

