// change it to fit your env
var BOSH_SERVICE = 'http://52.202.183.213:7070/http-bind/';

var connection = null;
var checkInBottom = true;
var checkInBottomNumber = 0;

function keeper(number) {
    example = number;
}
function getprevself(msg) {
    var curr = $(".self");
    var olname = $(".discussion").find('li').last().attr('class');
    var ol = $(".discussion");
    abc = curr.last().prev();
    prevvalue = curr.last().find('.message-text').first().text();
    currvalue = curr.last().find('.message-name').first().text();
    currli = curr.last();
    if (olname === 'messages-date') {
        ol.append('<li class="self" ><div class="message"><div class="message-name">Ngoc Duc</div><div class="message-text">' + msg + '</div> <div class="message-avatar"> <img src="assets/images/avatar-1.jpg" alt=""> </div> </div> </li>');
        return;
    }
    if (olname === 'self') {
        currli.append('<div class="message"><div class="message-name">Ngoc Duc</div><div class="message-text">' + msg + '</div> <div class="message-avatar"> <img src="assets/images/avatar-1.jpg" alt=""> </div> </div>');
        return;
    }
    if (olname === 'other') {
        ol.append('<li class="self" ><div class="message"><div class="message-name">Ngoc Duc</div><div class="message-text">' + msg + '</div> <div class="message-avatar"> <img src="assets/images/avatar-1.jpg" alt=""> </div> </div> </li>');
        return;
    }
}
function getprevother(msg) {
    var curr = $(".other");
    var olname = $(".discussion").find('li').last().attr('class');
    var ol = $(".discussion");
    abc = curr.last().prev();
    prevvalue = curr.last().find('.message-text').first().text();
    currvalue = curr.last().find('.message-name').first().text();
    currli = curr.last();
    if (olname === 'messages-date') {
        ol.append('<li class="other" ><div class="message"><div class="message-name">Kelly</div><div class="message-text">' + msg + '</div> <div class="message-avatar"> <img src="assets/images/avatar-7.jpg" alt=""> </div> </div> </li>');
        return;
    }
    if (olname === 'self') {
        ol.append('<li class="other" ><div class="message"><div class="message-name">Kelly</div><div class="message-text">' + msg + '</div> <div class="message-avatar"> <img src="assets/images/avatar-7.jpg" alt=""> </div> </div> </li>');
        return;
    }
    if (olname === 'other') {
        currli.append('<div class="message"><div class="message-name">Kelly</div><div class="message-text">' + msg + '</div> <div class="message-avatar"> <img src="assets/images/avatar-7.jpg" alt=""> </div> </div>');
        return;
    }

}

function scroll(){
     var a = $(".discussion")[0].scrollHeight;

    var maxHeight = Math.max.apply(null, $(".sidebar-content").map(function ()
    {
        $('.sidebar-content').animate({scrollTop: a}, 100);
        return $(this).height();
    }).get());


}

$(document).ready(function(){
    $(".sidebar-content").scroll(function(){
        //console.log($(this).scrollTop()+' + '+ $(this).height()+' = '+ ($(this).scrollTop() + $(this).height())   +' _ '+ $(this)[0].scrollHeight  );
        if($(this)[0].scrollHeight - Math.round($(this).scrollTop()) == $(this).outerHeight() ||
            $(this)[0].scrollHeight - Math.round($(this).scrollTop()) == $(this).outerHeight() + 1
        ){
            //alert('bottom found');
            checkInBottom = true;
            return;
        }
        checkInBottom = false;
    if($(this)[0].scrollHeight <= 461){
        checkInBottom = true;
        return;
    }



    });
});
function log(msg) {
    if(checkInBottomNumber<= 12){
        checkInBottom = true;
    }
    if(checkInBottom == true) {
        getprevself(msg);
        scroll();
        checkInBottomNumber++;
    }else {
        getprevself(msg);
        checkInBottomNumber++;
    }

}
function logother(msg) {
    if(checkInBottomNumber<= 12){
        checkInBottom = true;
    }
    if(checkInBottom == true) {
        getprevother(msg);
        scroll();
        checkInBottomNumber++;
    }else {
        getprevother(msg);
        checkInBottomNumber++;
    }
}

function rawInput(data) {
    console.log('RECV: ' + data);
}

function rawOutput(data) {
    console.log('SENT: ' + data);
}

function onConnect(status) {
    if (status == Strophe.Status.CONNECTING) {
        //log('Strophe is connecting.');
    } else if (status == Strophe.Status.CONNFAIL) {
        log('Strophe failed to connect.');
        $('#connect').get(0).value = 'connect';
    } else if (status == Strophe.Status.DISCONNECTING) {
        log('Strophe is disconnecting.');
    } else if (status == Strophe.Status.DISCONNECTED) {
        log('Strophe is disconnected.');
        $('#connect').get(0).value = 'connect';
    } else if (status == Strophe.Status.CONNECTED || status === Strophe.Status.ATTACHED) {
        //	log('Strophe is connected.');
        //connection.disconnect();
//					log('ECHOBOT: Send a message to ' + connection.jid +
//							' to talk to me.');

        //connection.addHandler(onMessage, null, 'message', 'chat');

        connection.addHandler(onMessage, null, 'message', null, null, null);
        //connection.addHandler(onOwnMessage, null, 'iq', 'set', null,  null);
        connection.send($pres().tree());
    }
}


function onMessage(msg) {

    console.log("----------------------recevie  message----------------------");
    console.log(msg);
    console.log("----------------------recevie message----------------------");
    var to = msg.getAttribute('to');
    var from = msg.getAttribute('from');
    var type = msg.getAttribute('type');
    var elems = msg.getElementsByTagName('body');

    if (type == "chat" && elems.length > 0) {
        var body = elems[0];

//					log('ECHOBOT: I got a message from ' + from + ': ' +
//							Strophe.getText(body));

        var text = Strophe.getText(body) + " (this is echo)";

        //var reply = $msg({to: from, from: to, type: 'chat', id: 'purple4dac25e4'}).c('active', {xmlns: "http://jabber.org/protocol/chatstates"}).up().cnode(body);
        //.cnode(Strophe.copyElement(body));
        //connection.send(reply.tree());

//					log('ECHOBOT: I sent ' + from + ': ' + Strophe.getText(body));
        logother(Strophe.getText(body));
    }

    // we must return true to keep the handler alive.
    // returning false would remove it after it finishes.
    return true;
}


function sendMessage() {
    var message = $('#message').get(0).value;
    var to = 'manh@52.202.183.213';
    if (message && to) {
        var reply = $msg({
            to: to,
            type: 'chat'
        })
            .cnode(Strophe.xmlElement('body', message)).up();
        //.c('active', {xmlns: "http://jabber.org/protocol/httpbind"});

        connection.send(reply);

        //log('I sent ' + to + ': ' + message);
        log(message);
        //var reply = $msg({to: toId, from:fromId , type: 'chat'}).cnode(Strophe.xmlElement('body', '' ,msg));
        //connection.send(reply.tree());
    }
}


$(document).ready(function () {

    connection = new Strophe.Connection(BOSH_SERVICE);
    connection.rawInput = rawInput;
    connection.rawOutput = rawOutput;

    Strophe.log = function (level, msg) {
        console.log('[log] [' + level + ']' + msg);
    };
    connection.connect('duc@52.202.183.213', '123', onConnect);

    /*$('#connect').bind('click', function () {
     var button = $('#connect').get(0);
     if (button.value == 'connect') {
     button.value = 'disconnect';
     connection.connect($('#jid').get(0).value, $('#pass').get(0).value, onConnect);
     } else {
     button.value = 'connect';
     connection.disconnect();
     }
     });
     */
    $('#send').bind('click', function () {
        sendMessage();
        $("#message").attr("value", "");
        $("#message").val('');

    });

});
