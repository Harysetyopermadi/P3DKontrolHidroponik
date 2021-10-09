<?php 
 
 /*
 * Created by Belal Khan
 * website: www.simplifiedcoding.net 
 * Retrieve Data From MySQL Database in Android
 */
 
 //database constants
 require_once 'connect.php';
 //creating a query
 $stmt = $conn->prepare("SELECT * FROM monitoringsuhuair WHERE id='1'");
 
 //executing the query 
 $stmt->execute();
 
 //binding results to the query 
 $stmt->bind_result($id,$suhuair,$tanggal,$jam);
 
 $products = array(); 
 
 //traversing through all the result 
 while($stmt->fetch()){
 $temp = array();
 $temp['id'] = $id; 
 $temp['suhuair'] = $suhuair;
 $temp['tanggal'] = $tanggal; 
 $temp['jam'] = $jam; 
 array_push($products, $temp);
 }
 
 //displaying the result in json format 
 echo json_encode($products);
?>