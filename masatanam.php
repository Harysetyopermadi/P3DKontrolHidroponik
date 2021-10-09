<?php

if ($_SERVER['REQUEST_METHOD'] =='POST'){

    $id = $_POST['id'];
    $namapenanam = $_POST['namapenanam'];
    $jenistanaman = $_POST['jenistanaman'];
    $jumlahtanaman = $_POST['jumlahtanaman'];
    $tglsemai = $_POST['tglsemai'];
    $prediksiparalon = $_POST['prediksiparalon'];
    $prediksipanen = $_POST['prediksipanen'];
    $estimasipenjualan = $_POST['estimasipenjualan'];
   // $email = $_POST['email'];
    //$password = $_POST['password'];

    //$password = password_hash($password, PASSWORD_DEFAULT);

    require_once 'connect.php';

   // $sql = "INSERT INTO users_table (name, email, password) VALUES ('$name', '$email', '$password')";
  // $sql = "INSERT INTO user (name, password) VALUES ('$name', '$password')";

  $sql = "INSERT INTO prediksi (id,namapenanam,jenistanaman,jumlahtanaman,tglsemai,prediksiparalon,prediksipanen,estimasipenjualan) VALUES ('$id','$namapenanam','$jenistanaman','$jumlahtanaman','$tglsemai','$prediksiparalon','$prediksipanen','$estimasipenjualan')";

    if ( mysqli_query($conn, $sql) ) {
        $result["success"] = "1";
        $result["message"] = "success";

        echo json_encode($result);
        mysqli_close($conn);

    } else {

        $result["success"] = "0";
        $result["message"] = "error";

        echo json_encode($result);
        mysqli_close($conn);
    }
}

?>