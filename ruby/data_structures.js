var horseColors = ["blue","red","green","black"];
horseColors.push("white");

var horseNames = ["Ed","John","Dream","Seabiscuit"];
 horseNames.push("derby");


var horse = {};


if (horseNames.length == horseColors.length){
  for (var i = 0; i < horseColors.length;i++){
    var keyName = horseNames[i];
    horse[keyName] = horseColors[i];
  }
} else{
  console.log(false);
}

console.log(horse);



function Car(wheels,doors,color){
	this.wheels = wheels;
	this.doors = doors;
	this.color = color;

	this.honk = function(){console.log("HONK");};
}

var newCar = new Car(4,4,"black");

console.log(newCar);
newCar.honk();