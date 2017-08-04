<?php include 'header.php'; ?>
   <?php 
    session_start();
	error_reporting(0);
	$pwd1=$_SESSION["pwdtxt"];
	$uname1=$_SESSION["unametxt"];
?> 
<?php 
$bill=0;
date_default_timezone_set('Asia/Kolkata');
$date=date("jS \ F Y h:i:sa");
if (!is_null($_POST['food'])) {
$con=@mysqli_connect("localhost","root","","billing");
      if ($con) {
      	//echo "conected";
      }
      else 
      	echo "Not conected";
$item="";
$qry="select *from billno";

$result = @mysqli_query($con,$qry);
if ($result) {
	# code...
	//echo "Executed";
}
else echo "Not Executed";
while($row = mysqli_fetch_array($result)){
$bill=$row["no"];
}
$qry="insert into billno values('')";
$result = @mysqli_query($con,$qry);
      ?>
<div id="back">
    <center>
   
    <div id="form"><div align="left"><div>
    	Date: <?php echo $date;?></div></div>
    	<div align="right"><div><h4>Bill No: <?php echo $bill;?></h4></div></div>
    	<table id="table"><tr>
    		<th align="center">S.no</th>
    		<th align="center">Items</th>
    		<th align="center">Price</th>
    		<th align="center">Quantity</th>
    		<th align="center">CGST</th>
    		<th align="center">SGST</th>
    		<th align="center">Net Amount</th>
    	</tr>
   <?php
// $_POST['txt'][0] will be your first textbox
// $_POST['txt'][1] will be your second textbox
// etc.    
$total=0;
if (isset($_POST['food'])) {
	
$b= $_POST['food'];
$q=$_POST['q'];
$N = count($b);
//echo $b[0];
    for($i=0; $i < $N; $i++)
    {
      
    	if($b[$i]!=null){


    		$c=$i+1;
    		$bar=(int)$b[$i];
    		$qun=(int)$q[$i];
    		
      

  $qry="select *from cost where iid=$bar";

$result = @mysqli_query($con,$qry);
if ($result) {
	# code...
	//echo "Executed";
}
else echo "Not Executed";
$row = mysqli_fetch_array($result);
$cost=(double)$row["icost"];
$gst=(double)$row["gst"];
$iname=$row["iname"];
$iprice=$cost*$qun;
$gprice=$gst*($iprice/100);
$item=$item." ".$iname."=$qun";
$total=$total+$iprice;
$tax=$gprice/2;
echo "<tr><td align='center'>$c</td><td align='center'>$iname</td><td align='center'>$cost</td><td align='center'>$qun</td><td align='center'>$tax</td><td align='center'>$tax</td><td align='center'>$iprice</td></tr>";
  


  }
    }
}
?> 
<tr><td></td><td></td> <td></td> <td></td> <td></td> <td align="center">Total </td><td align="center"><?php echo "$total";?></td>
</table>
<?php $qry="insert into sale values('','$bill','$item','$total','$date')";
$result = @mysqli_query($con,$qry);
if ($result) {
	# code...
	//echo "Executed";
}	
else echo "Not Executed";}?>
</div><br><br>
<div> <input type="button" id="button" value="Print" onclick="printDiv('form')"></div>
</center>

<?php include 'footer.php'; ?>