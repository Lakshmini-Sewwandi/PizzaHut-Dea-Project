var type=false;
var pay=false;
var address=false;

//Listeners for radio buttons
var inputs=document.querySelectorAll("input[type=radio]"),
    x=inputs.length;
while(x--)
    inputs[x].addEventListener("change",function(){
        handleRadioButtons(this.name,this.value);
    },0);

function handleRadioButtons(type, value){
    if(type=="pay"){
        if(value=="yes"){
            document.getElementById("paymentInfo").classList.add('hide-form');
            pay=false;
        }else{
            document.getElementById("paymentInfo").classList.remove('hide-form');
            pay=true;
        }
    }else if(type=="type"){
        if(value=="yes"){
            document.getElementById("deliveryInfo").classList.add('hide-form');
            this.type=false;
        }else{
            document.getElementById("deliveryInfo").classList.remove('hide-form');
            this.type=true;
        }
    }else{
        if(value=="yes"){
            document.getElementById("address2").value = document.getElementById("address1").value;
            document.getElementById("suburb2").value = document.getElementById("suburb1").value;
            document.getElementById("postalcode2").value = document.getElementById("postalcode1").value;
            address=true;
        }else{
            document.getElementById("address2").value = "";
            document.getElementById("suburb2").value = "";
            document.getElementById("postalcode2").value = "";
            address=false;
        }
    }
}

document.getElementById("submit").addEventListener("click",function(){
    handleSubmit();
});

function handleSubmit(){
    let error = "";
    console.log(type,pay,address)
    let d = document.getElementById("name").value;
    let e = document.getElementById("email").value;
    let f = document.getElementById("number").value;
    let a = document.getElementById("address2").value;
    let b = document.getElementById("suburb2").value;
    let c = document.getElementById("postalcode2").value;
    let g = document.getElementById("pizzaOrder").value;
    if(d=="" || e=="" || f=="" || a=="" || b=="" || c=="" || g==""){
        error = error+"\nAll fields are mandotory";
    }
    
    if(type){
        let x = document.getElementById("address1").value;
        let y = document.getElementById("suburb1").value;
        let z = document.getElementById("postalcode1").value;
        if(x=="" || y=="" || z==""){
            error = error+"\nAdd valid delivery address";
        }
    }

    if(pay){
        let x = document.getElementById("fullname").value;
        let y = document.getElementById("creditcard").value;
        let z = document.getElementById("expireMonth").value;
        let s = document.getElementById("expireYear").value;
        let t = document.getElementById("cvv").value;
        if(x=="" || y=="" || z=="" || s=="" || t==""){
            error = error+"\nAdd valid payment details";
        }
    }
    if(error==""){
        alert("Order was placed!");
    }else{
        alert(error);
    }

    
}