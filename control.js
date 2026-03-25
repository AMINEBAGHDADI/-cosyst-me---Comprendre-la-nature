function alpha(ch){
    
        test=true;
        i=0;
        ch=ch.toUpperCase();
        while(test && i<ch.length)
        {
            if(ch[i]>="A" && ch[i]<="Z" )
            {i++;}
        else{test=false;}
        }
        return test;
}
        

function verif(){
    nom = document.getElementById("nom").value;
    ff = true;
    if (!(alpha(nom) == true || nom.length <= 20 || "A" < nom[0] || nom[0] < "Z")){
        ff = false;
        alert("fG");

    }
    reg = document.getElementById("reg").value;
    if( reg == 0 ){
        ff = false;
        alert("ff");
    }
    return ff;
}