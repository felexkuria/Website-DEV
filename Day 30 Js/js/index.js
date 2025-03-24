// This is how a comment is added to JavaScript
// Comments are not executed - they are just there to provide extra
// information to you or other developers

// Exercise Time!

// 1) Create three new variables:
//    - A variable that stores the name of an online course of your choice
const course ="Full Stack Web Dev"
//    - A variable that stores the price of that course
const course_price=9.99
//    - A variable that stores the three main goals that you have, when taking this course
const course_goals=["Learn Js ","Learn CSS","Learn Nodejs","Create an Ecommerce Site"]
// 2) Output ("alert") the three variable values
// alert(course)
// alert(course_price)
// alert(course_goals)
// 3) Try "grouping" the three variables together and still output their values thereafter
course_group={
    course_name:course,
    course_price:course_price,
    course_goals:course_goals
}
alert(course_group.course_name +" Course Price: "+ course_group.course_price +" Course Goals: "+course_group.course_goals)
// 4) Also output the second element in your "main goals" variable
// alert(course_goals[1])
// 5) Add a custom command that does the following:
//    - Use your "main goals" variable and access an element by its identifier
//    - The concrete identifier value should be dynamic / flexible 
//      (i.e. the command can be executed for different identifier)
//    - The "main goals" variable should also be dynamic: The command should work 
//      with ANY list of values
//    - The custom command should provide the accessed value (i.e. the list element)
function goals(index) {
    return course_goals[index]

}
// 6) Execute your custom command from (5) and output ("alert") the result
// alert(goals(0))