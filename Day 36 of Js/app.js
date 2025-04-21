let tweet = document.getElementById("product-name");
let remainingChar = document.querySelector(".count");

function inputBox(e) {

    remainingChar.innerHTML = 60 - e.target.value.length;
    // console.log(tweet.style.backgroundColor = "red");
    // console.log(tweet.style.borderRadius = "10px");
    if (e.target.value.length >= 50) {
        tweet.classList.add(".warning");
        console.log(tweet.style.backgroundColor = "red");
    }


}
tweet.addEventListener("input", inputBox

);