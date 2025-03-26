let tweet = document.getElementById("product-name");
let remainingChar = document.querySelector(".count");

function inputBox(e) {
    console.log(e.target.value.length);
    remainingChar.innerHTML = 60 - e.target.value.length;

}
tweet.addEventListener("input", inputBox

);