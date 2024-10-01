var ua = navigator.userAgent;
console.log(ua);

if ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window) 
{
  console.log("speech recognition API supported");
} 
else 
{
  console.log("speech recognition API not supported")
}

console.log("click");
var SpeechRecognition = SpeechRecognition || webkitSpeechRecognition

var btn = document.getElementById("btnAnswer");
var textDisplay = document.getElementById("result");


console.log("click1");
var recognition = new SpeechRecognition();
console.log("click2");

recognition.lang = 'fr';
recognition.continuous = false;
recognition.interimResults = true;


// btn.addEventListener("click", startRecognition);

btn.onclick = function() {
	
	recognition.start();
	textDisplay.textContent = '';
}


recognition.onresult = function(event){

textDisplay.textContent = '';

for(var i = event.resultIndex; i < event.results.length; i++){
	// recognition.stop();
	var transcript = event.results[i][0].transcript;
	console.log(transcript);
	textDisplay.textContent = textDisplay.textContent + transcript;
	}
	
}

recognition.onerror = function(event) {
  textDisplay.textContent = 'Erreur recognition: ' + event.error;
}


