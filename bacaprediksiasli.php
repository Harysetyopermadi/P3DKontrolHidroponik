<?php 
 
 /*
 * Created by Belal Khan
 * website: www.simplifiedcoding.net 
 * Retrieve Data From MySQL Database in Android
 */
 
 //database constants
 require_once 'connect.php';
 $id = $_POST['id'];
 //creating a query
 $stmt = $conn->prepare("SELECT seri,id,namapenanam,jenistanaman,jumlahtanaman,tglsemai,prediksiparalon,prediksipanen,estimasipenjualan FROM prediksi WHERE id='$id';");
 
 //executing the query 
 $stmt->execute();
 
 //binding results to the query 
 $stmt->bind_result($seri,$id,$namapenanam,$jenistanaman,$jumlahtanaman,$tglsemai,$prediksiparalon,$prediksipanen,$estimasipenjualan);
 
 $products = array(); 
 
 //traversing through all the result 
 while($stmt->fetch()){
 $temp = array();
 $temp['seri'] = $seri; 
 $temp['id'] = $id; 
 $temp['namapenanam'] = $namapenanam; 
 $temp['jenistanaman'] = $jenistanaman; 
 $temp['jumlahtanaman'] = $jumlahtanaman; 
 $temp['tglsemai'] = $tglsemai; 
 $temp['prediksiparalon'] = $prediksiparalon; 
 $temp['prediksipanen'] = $prediksipanen; 
 $temp['estimasipenjualan'] = $estimasipenjualan; 
 array_push($products, $temp);
 }
 
 //displaying the result in json format 
 echo json_encode($products);
?>