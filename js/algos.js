function longestWord(array){
  var longestPharse = "";
  for(var i = 0; i < array.length; i++ ){
   var compare = 1;
   if (array[i].length > array[compare].length){
     longestPharse = array[i];
   }else{
    longestPharse = array[compare];
  }
  compare += 1
  
}
console.log(longestPharse, longestPharse.length);
}



function trueOrFalse(obj1,obj2){
  for(var key in obj1 && obj2){
    if (obj1[key] == obj2[key])
    return true
  }
  return false
}

//Generates a Random Word to pass through arrayLength Function
function randomWOrd(){
  var newWord = '';
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var wordLength = Math.ceil(Math.random() * 9)
  
  for(var i = 0; i < wordLength; i++){
    newWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length))
  }
  return newWord;
}


function arrayLength(arg){
  i = 0;
  wordArray = [];
  while(i < arg){
  	//Allows me to push random 
    wordArray.push(randomWOrd());
    i++;
  }
  
  return wordArray;
}


//Driver code 


// trueOrFalse({name: "Steven", age: 54}, {name: "Tamir", age: 54}); 
// trueOrFalse({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
// trueOrFalse({animal: "cat", legs: 10}, {animal: "Dog", legs: 3});


// longestWord(["long phrase","longest phrase","longer phrase",""]);
// longestWord(["Steve","John","Sara","Maria"]);
// longestWord(["Apple","Orange","Banana","Mangoe"]);
// longestWord(["Checking Withrdawl","Savings Withdrawl","Checking Deposit","Savings Deposit"]);

//arrayLength(3) //tests out if maxium length of array

//to test out loop 10 times
// looptest = 0

// while (looptest < 10){
//  longestWord(arrayLength(3));
//  looptest++;
// }
