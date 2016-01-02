"snk".length
3+4
3*5
confirm("Are you sure?");
prompt("Who are you?");
"I'm coding like a champ".length > 10

// console.log() will take whatever is inside the parentheses and log it to the
// console below your code—that's why it's called console.log()!
// This is commonly called printing out.
console.log(2 * 5); // 10
console.log("Hello");

// List of comparison operators:
// 
// > Greater than
// < Less than
// <= Less than or equal to
// >= Greater than or equal to
// === Equal to
// !== Not equal to

// Here is an example of using the greater than (>) operator.
console.log(15 > 4); // 15 > 4 evaluates to true, so true is printed.

// Fill in with >, <, === so that the following print out true:
console.log("Xiao Hui".length < 122);
console.log("Goody Donaldson".length > 8);
console.log(8*2 === 16);


if ("snk".length < 10 ) {
    console.log("handsome" );
}


console.log(11%3);

"wonderful day".substring(3,7); //derf

console.log("January".substring(0,3)); // Jan
console.log("Melbourne is great".substring(0,12)); // Melbourne is
console.log("Hamburgers".substring(3,10)); // burgers

// On line 2, declare a variable myName and give it your name.
var myName = "Luiz";
// On line 4, use console.log to print out the myName variable.
console.log(myName);
// On line 7, change the value of myName to be just the first 2 
// letters of your name.
myName = myName.substring(0,2);
// On line 9, use console.log to print out the myName variable.
console.log(myName);


// Check if the user is ready to play!

confirm("I am ready to play!");

var age = prompt("What is your age?");

if (age < 13) {
    console.log("Play but don't charge me later!");
} else {
    console.log("Let's play");
}

console.log("You are at a Justin Bieber concert, and you hear this lyric 'Lace my shoes off, start racing.'");

console.log("Suddenly, Bieber stops and says, 'Who wants to race me?'");

userAnswer = prompt("Do you want to race Bieber on stage?");

if (userAnswer === "yes") {
    console.log("You and Bieber start racing.");
    console.log("It's neck and neck! You win by a shoelace!");
} else {
    console.log("Oh no! Bieber shakes his head and sings 'I set a pace, so I can race without pacing.'");
