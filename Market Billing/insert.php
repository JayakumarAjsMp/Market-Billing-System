<?php include 'header.php'; ?>
   <?php 
    session_start();
	error_reporting(0);
	$pwd1=$_SESSION["pwdtxt"];
	$uname1=$_SESSION["unametxt"];
?> 
<div id="back">
    <center>
    <div id="form2">
        <h3>Give Product Details</h3>
<form id="form3" name="form3" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
<label>
    <br/>
Item <input name="bar[]" type="text" id="bar" placeholder="Barcode Reader" required/>&nbsp;&nbsp; <input name="name[]" type="text" id="name" placeholder="Item Name" required/>&nbsp;&nbsp;  <input name="company[]" type="text" id="company" placeholder="Company" required/>&nbsp;&nbsp; <input name="cost[]" type="text" id="cost" placeholder="in rupees" required/>&nbsp;&nbsp; <input name="gst[]" type="text" id="gst" placeholder="in %" required/>
</label>
<div id="div"></div>
<br/>
<p><input type="button" id="add1" name="add1" value="Add" onclick="generateRow1()"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="submit" id="submit" value="Submit" />
</label>
</p>
</form>
</div>
</center>
<?php

// $_POST['txt'][0] will be your first textbox
// $_POST['txt'][1] will be your second textbox
// etc.    

date_default_timezone_set('Asia/Kolkata');
$date=date("jS \ F Y h:i:sa");
if (isset($_POST['bar'])) {
$b= $_POST['bar'];
$n=$_POST['name'];
$c=$_POST['cost'];
$com= $_POST['company'];
$g= $_POST['gst'];
$N = count($b);
$con=@mysqli_connect("localhost","root","","billing");
      if ($con) {
      	
          echo "conected".$N;
      }
      else {
      	echo "Not conected".mysqli_error($con);
      }

     for($i=0; $i < $N; $i++)
    {
      
    	if($b[$i]!=null){
            $b1=$b[$i];
            $n1 = $n[$i];
            $com1=$com[$i];
    		$c1=(int)$c[$i];
            $g1=(int)$g[$i];
//echo $b1." ".$n1." ".$com1." ".$c1." ".$g1;
$qry="INSERT INTO cost (iid, iname, company, icost, gst) VALUES ('$b1','$n1','$com1','$c1','$g1')";

$result = @mysqli_query($con,$qry);
if ($result) {
	# code...
	//echo "Executed";
}
else {echo "Not Executed".mysqli_error($con);
}

  


  }
    }
}
?>
</div>
<?php include 'footer.php'; ?>