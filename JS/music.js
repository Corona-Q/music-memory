function Player1() {
    var player = document.getElementById("player1");
    var music = document.getElementById("BGM1");
    if (player.className == "play") {
        player.setAttribute("class", "stop");
        music.play();
        // alert("play!");

    } else {
        player.setAttribute("class", "play");
        music.pause();
    }
}

function Player2() {
    var player = document.getElementById("player2");
    var music = document.getElementById("BGM2");
    if (player.className == "play") {
        player.setAttribute("class", "stop");
        music.play();
        // alert("play!");

    } else {
        player.setAttribute("class", "play");
        music.pause();
    }
}

function Player3() {
    var player = document.getElementById("player3");
    var music = document.getElementById("BGM3");
    if (player.className == "play") {
        player.setAttribute("class", "stop");
        music.play();
        // alert("play!");

    } else {
        player.setAttribute("class", "play");
        music.pause();
    }
}