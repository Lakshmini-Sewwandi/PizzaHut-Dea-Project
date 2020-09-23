var slides = new Array();
var indicators = new Array();
var index = 1;


function creatingSlides() {
    console.log('creating slides');
    let slideImages = ['slide1.jpg','slide3.jpg','slide2.jpg'];
    indicators = document.getElementsByClassName('indicator');


    for(let x=0;x<slideImages.length;x++){
        let slide = document.createElement('img');
        slide.src = "./res/images/"+slideImages[x];
        slide.classList.add('slide');
        slides.push(slide);
        document.getElementById("slider").appendChild(slide);
    }
    document.getElementById("slider").style.left = "-100vw"
    indicators[1].classList.add('indicator-active');
}

function showSlide(e){
    indicators[index].classList.remove('indicator-active');
    if(e==1){
        if(index==slides.length-1){
            document.getElementById("slider").style.left = "0vw"
            index=0;
        }else{
            document.getElementById("slider").style.left = ((index+1)*(-100))+'vw'
            index++;
        }
    }else{
        if(index==0){
            document.getElementById("slider").style.left = ((index+slides.length-1)*(-100))+'vw'
            index=slides.length-1;
        }else{
            document.getElementById("slider").style.left = ((index-1)*(-100))+'vw'
            index--;
        }
    }
    indicators[index].classList.add('indicator-active');
}

creatingSlides();

