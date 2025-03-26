let input = document.getElementById("tweet");
let p = document.querySelectorAll("p");
function inputBox(e) {
    // get data from input html  element throught input value
    console.log(input.value);
    //event object is passed as an argument to the function
    console.log(e);
    // to get data  from input box throught event object
    console.log(e.target.value);
    // to get data  from input box throught event object
    console.log(e.data);


}
input.addEventListener("input", inputBox

);
