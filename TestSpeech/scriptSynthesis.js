var synth = window.speechSynthesis;

var inputForm = document.querySelector('form');
var inputTxt = document.querySelector('.txt');
var voiceSelect = document.querySelector('select');

var pitch = document.querySelector('#pitch');
var pitchValue = document.querySelector('.pitch-value');
var rate = document.querySelector('#rate');
var rateValue = document.querySelector('.rate-value');
var textToSpeech = document.querySelector('.textToSpeech');

var voices = [];

var theVoice;
function populateVoiceList() {
  voices = synth.getVoices().sort(function (a, b) {
    const aname = a.name.toUpperCase(), bname = b.name.toUpperCase();
    if (aname < bname) return -1;
    else if (aname == bname) return 0;
    else return +1;
});

for (i = 0; i < voices.length; i++) {
    
    if (voices[i].default) {
        theVoice = voices[i];
    }

    // pour firefox
    if (theVoice == null) {
        if (voices[i].name == "Microsoft Hortense Desktop - French") {
            theVoice = voices[i];
        }
    }
}
return theVoice;
}


function speak(){
  if (synth.speaking) {
    console.error('speechSynthesis.speaking');
    return;
  }
  if (textToSpeech.textContent !== '') {
      var utterThis = new SpeechSynthesisUtterance(textToSpeech.textContent);
      console.log(utterThis)
      utterThis.onend = function (event) {
          console.log('SpeechSynthesisUtterance.onend');
      }
      utterThis.onerror = function (event) {
          console.error('SpeechSynthesisUtterance.onerror');
      }
      var voiceSpeech = populateVoiceList();

      utterThis.voice = voiceSpeech;
      
      synth.speak(utterThis);
  }
}

inputForm.onsubmit = function(event) {
  event.preventDefault();

  speak();

  inputTxt.blur();
}

pitch.onchange = function() {
  pitchValue.textContent = pitch.value;
}

rate.onchange = function() {
  rateValue.textContent = rate.value;
}

voiceSelect.onchange = function(){
  speak();
}
