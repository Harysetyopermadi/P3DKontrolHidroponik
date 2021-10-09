<?php

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $kontrolnutrisi = $_POST['kontrolnutrisi'];
    

    require_once 'connect.php';

    $sql = "UPDATE kontrolnutiris SET kontrolnutrisi='$kontrolnutrisi' WHERE id='1' ";

    if(mysqli_query($conn, $sql)) {

          $result["success"] = "1";
          $result["message"] = "success";

          echo json_encode($result);
          mysqli_close($conn);
      }
  }

else{

   $result["success"] = "0";
   $result["message"] = "error!";
   echo json_encode($result);

   mysqli_close($conn);
}

?>


