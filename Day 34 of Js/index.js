// Exercise Time!
let h1 = console.log(window.document.body["children"][0]["innerText"]);
let heading = document.getElementById("heading");
console.log(heading);
heading.innerHTML = "My Title";
heading.remove();
// 1. Select the <h1> element by "drilling into the DOM" and 
//    save it in a variable with a name of your choice
let p = console.dir(window.document.body["children"][1]["innerHTML"]);
let p1 = document.querySelector(".paragraph");
p1.innerText = "My Paragrah";
const shoppingItem = document.getElementById('name');
console.log(shoppingItem.value);
const submitButton = document.getElementById('submit');

submitButton.addEventListener('click', function () {
    //create a new list item
    // stored in memory but not yet added to the DOM
    const newItem = document.createElement('li');
    newItem.textContent = shoppingItem.value;
    //to add list to the DOM use appendChild or append the pass item to be appended
    document.body.appendChild(newItem);
});
// 2. Use the variable from (1) and get access to the "parent"
//    element of the stored <h1> element (i.e. to the <body> element)
//    BONUS: Try using the variable from (1) to get access to the 
//    sibling element (i.e. the <p> element next to the <h1> element)
// 3. Select the <h1> element with getElementById and store in
//    the same or a new variable (up to you)
// 4. Select the second <p> element with querySelector (you might
//    need to add something in the HTML code, e.g. a class) 
//    and store it in a new variable with a name of your choice
// 5. BONUS TASK: Try changing the text content of the <p> element
//    you selected in (4) and set it to any other text of your 
//    choice.
