//Progress Bar
var myVar = setInterval(function () { myTimer() }, 1);
var count = 0;

function myTimer() {
    if (count < 100) {
        $('.progress').css('width', count + "%");
        count += 0.09;
        document.getElementById("demo").innerHTML = Math.round(count) + "%";
    }
}

//Countdown 5-S
var timeleft = 5;
var downloadTimer = setInterval(function(){
timeleft--;
document.getElementById("countdowntimer").textContent = timeleft;
if(timeleft <= 0)
    clearInterval(downloadTimer);
},1000);

//Countdown 120-S
var timeleft120 = 120;

var downloadTimer120 = setInterval(function () {
    timeleft120--;
    document.getElementById("countdowntimer120").textContent = timeleft120;
    if (timeleft120 <= 0)
        clearInterval(downloadTimer120);
}, 1000);

