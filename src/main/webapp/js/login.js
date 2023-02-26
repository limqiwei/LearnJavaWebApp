$(document).ready(function () {

    $("#backToIndex").on("click", function() {
        window.location.href = "/";
    })

    $("#login").on("click", function() {
        $("#loginForm").submit();
    })

})