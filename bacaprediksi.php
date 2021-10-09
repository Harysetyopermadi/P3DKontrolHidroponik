<?php

if ($_SERVER['REQUEST_METHOD']=='POST') {
    
    $id = $_POST['id'];

    require_once 'connect.php';

   // $sql="SELECT seri,id,namapenanam,jenistanaman,jumlahtanaman,tglsemai,prediksiparalon,prediksipanen,estimasipenjualan FROM prediksi JOIN user ON user.id=prediksi.id";
   // $sql="SELECT id,seri,namapenanam,jenistanaman,jumlahtanaman,tglsemai,prediksiparalon,prediksipanen,estimasipenjualan FROM prediksi WHERE id='1'";

    $sql = "SELECT seri,id,namapenanam,jenistanaman,jumlahtanaman,tglsemai,prediksiparalon,prediksipanen,estimasipenjualan FROM prediksi WHERE id='$id' ";
   // $sql="SELECT seri,id,namapenanam,jenistanaman,jumlahtanaman,tglsemai,prediksiparalon,prediksipanen,estimasipenjualan FROM prediksi WHERE id='$id'";

    $response = mysqli_query($conn, $sql);

    $result = array();
    $result['read'] = array();
  

    if( mysqli_num_rows($response) === 1 ) {
        
        if ($row = mysqli_fetch_assoc($response)) {
 
            $h['seri']                  = $row['seri'];
           // $h['id']                    =$row['id'];
            $h['namapenanam']           = $row['namapenanam'];
            $h['jenistanaman']          = $row['jenistanaman'];
            $h['jumlahtanaman']         = $row['jumlahtanaman'];
            $h['tglsemai']              = $row['tglsemai'];
            $h['prediksiparalon']       = $row['prediksiparalon'];
            $h['prediksipanen']         = $row['prediksipanen'];
            $h['estimasipenjualan']     = $row['estimasipenjualan'];

             //$h['name']        = $row['name'] ;
             //$h['email']       = $row['email'] ;
 
             array_push($result["read"], $h);
 
             $result["success"] = "1";
             
             
             echo json_encode($result);
             
            
        }
 
   }
 
 }else {
 
     $result["success"] = "0";
     $result["message"] = "Error!";
     echo json_encode($result);
    
 
     mysqli_close($conn);
 }
 
 ?>