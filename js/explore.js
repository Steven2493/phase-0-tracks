// Create a method that takes a string as a argument
// Inside the method create a variable that will hold the argument
// create a new variable that will hold the string
// string variable will split the string and reverse it
//create a new variable to join the string
//console log it

function reverse(str){
	var string = str.split('').reverse();
	var new_string = string.join('');
	console.log(new_string);
}

//Driver code
reverse("Hello");

var num = 10;

if (num == 10){
	console.log("True");
} else{
	console.log("False");
}