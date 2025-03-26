let tweet = document.getElementById("tweet");
let p = document.querySelectorAll("p");
let tweetlenght = 60;
let span = document.querySelector("span");
function inputBox(e) {
    console.log(e.target.value.length);
    p[0].innerHTML = tweetlenght - e.target.value.length;
    span.innerHTML = e.target.value.length;
}
tweet.addEventListener("input", inputBox

);