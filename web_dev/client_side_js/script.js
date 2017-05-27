function hideImg(){
	document.getElementById("lizard-photo").style.visibility = "hidden";
}

function showImg() {
	document.getElementById("lizard-photo").style.visibility = "visible";
}

document.getElementById("lizard-photo").addEventListener("click",function list(event){	
	if(document.getElementById('test') != null){
		return false;
	}
	var newList = document.createElement('ul');
	newList.setAttribute("id", "test");
	var lizardParts = ["Head","Legs","Eyes","Tail"];
	document.body.appendChild(newList);
	for(var i = 0; i <lizardParts.length; i++){
		var listItem = document.createElement('li');
		newList.appendChild(listItem);
		listItem.innerHTML = listItem.innerHTML + lizardParts[i]	
	}
});

