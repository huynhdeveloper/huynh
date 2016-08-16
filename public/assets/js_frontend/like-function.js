$(document).ready(function (e) {
    $("#chat_user").append(' <li class="media"><a data-toggle-class="chat-open" data-toggle-target="#users" href="#">'
        +'<div class="user-label"><span class="label label-success">3</span></div>'
        +'<img alt="..." src="assets/images/avatar-7.jpg" class="media-object">'
        +'<div class="media-body"><h4 class="media-heading">Steven Thompson</h4>'
        +'<span> Visual Designer </span>'
        +'</div> </a>'
        +'</li>');
    $("#like").click(function (e) {
        var id = $(this).attr("value");
        $.ajax({
            url: "addLike",
            type: "GET",
            data: {id: id},
            success: function (msg) {
                // window.location.href = "product.php";
                // var duce = JSON.parse(msg);
                //alert(msg[0]['email']);
                //var type = this.id.split('/')[0];

                if(msg.split('/')[1] === '1'){
                    $("#chat_user").append(' <li class="media"><a data-toggle-class="chat-open" data-toggle-target="#users" href="#">'
                        +'<div class="user-label"><span class="label label-success">3</span></div>'
                        +'<img alt="..." src="assets/images/avatar-7.jpg" class="media-object">'
                        +'<div class="media-body"><h4 class="media-heading">Steven Thompson</h4>'
                        +'<span> Visual Designer </span>'
                        +'</div> </a>'
                        +'</li>');
                }
                var src = 'http://graph.facebook.com/'+msg.split('/')[0]+'/picture?type=large';
                $("#productsChart").attr("src", src);
                $('#like').val(msg.split('/')[0]);
                $('#unlike').val(msg.split('/')[0]);
            }
        });

    });

    $("#unlike").click(function (e) {
        var id = $(this).attr("value");
        $.ajax({
            url: "addUnlike",
            type: "GET",
            data: {id: id},
            success: function (msg) {
                // window.location.href = "product.php";
                // var duce = JSON.parse(msg);
                if(msg.split('/')[1] === '1'){
                    $("#chat_user").append(' <li class="media"><a data-toggle-class="chat-open" data-toggle-target="#users" href="#">'
                        +'<div class="user-label"><span class="label label-success">3</span></div>'
                        +'<img alt="..." src="assets/images/avatar-7.jpg" class="media-object">'
                        +'<div class="media-body"><h4 class="media-heading">Steven Thompson</h4>'
                        +'<span> Visual Designer </span>'
                        +'</div> </a>'
                        +'</li>');
                }
                var src = 'http://graph.facebook.com/'+msg.split('/')[0]+'/picture?type=large';
                $("#productsChart").attr("src", src);
                $('#like').val(msg.split('/')[0]);
                $('#unlike').val(msg.split('/')[0]);

            }
        });

    });

});