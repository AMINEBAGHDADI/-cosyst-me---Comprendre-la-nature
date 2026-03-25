<?php
$con = mysqli_connect("localhost","root","","bd regional 2025") or die("base failed");
$id = $_POST['id'];
$nom = $_POST['nom'];
$type = $_POST['type'];
$regime = $_POST['reg'];
$st = $_POST['st'];

$req = "SELECT * FROM espece WHERE idEspece = '$id' AND nomEspece = '$nom' AND typeEspece = '$type' AND Regime = '$regime';";
$res = mysqli_query($con,$req);
$n=mysqli_num_rows($res);
if ($n > 0) {
    echo"Espèce existe déjà !!";
}
else {
        $req1 = "INSERT INTO espece VALUES ('$id','$nom','$type','$regime','$st');";
        $res1=mysqli_query($con,$req1);

    if (mysqli_affected_rows($res1)>0) {
        echo"insertion ";
    }
}
?>