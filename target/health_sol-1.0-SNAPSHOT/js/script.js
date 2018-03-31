/*

var ws;

function connect() {
    var username = document.getElementById("from").value;
    ws = new WebSocket("ws://" + document.location.host + "/health_sol/chat/" + username);


    ws.onmessage = function(event) {
    var log = document.getElementById("log");
        console.log(event.data);
        var message = JSON.parse(event.data);
        log.innerHTML += message.from + " : " + message.content + "\n";
    };
}

function send() {
    var content = document.getElementById("msg").value;
    var to = document.getElementById("to").value;
    var json = JSON.stringify({
        "to":to,
        "content":content
    });

    ws.send(json);
    log.innerHTML += "Me : " + content + "\n";
}
*/






var ws;

function connect() {
    var username = document.getElementById("from").value;
    var to = document.getElementById("to").value;
    var fromandto = username+"_"+to;
    ws = new WebSocket("ws://" + document.location.host + "/health_sol/chat/" + fromandto);
    ws.onmessage = function(event) {
    var log = document.getElementById("log");
        console.log(event.data);
        var message = JSON.parse(event.data);
        log.innerHTML += message.from + " : " + message.content + "\n";
    };
}

function send() {
    var content = document.getElementById("msg").value;
    var to = document.getElementById("to").value;
    var json = JSON.stringify({
        "content":content,
        "to":to
    });

    ws.send(json);
    log.innerHTML += "Me : " + content + "\n";
}

