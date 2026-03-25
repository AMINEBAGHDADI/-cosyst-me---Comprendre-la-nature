function charger(){
        var d = new Date();
        document.getElementById("date").innerHTML =
          d.getDate() +
          "/" +
          (d.getMonth() + 1) +
          "/" +
          d.getFullYear();
          document.getElementById("date").style.color = "red";
      
}
function activer(){
   cmp = document.getElementById("cmp").disabled = false;
   document.getElementById("cmp").style.backgroundColor = "green";

}