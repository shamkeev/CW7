//
//console.log("student_tests.js loaded");
//
//
//
//$(document).ready(function(){
//    //$("#btn").click(function() {
//    //    var test_result_html = $("#student_answers").html();
//    //    // $(".result").html(table);
//    //    console.log(test_result_html);
//    //    alert("you clicked");
//    //});
//
//
//    $("#btn").click(function(){
//        var test_result_html = $("#student_answers").html();
//        $.ajax({
//            type: 'POST',
//            url: '/create',
//            data: { html: test_result_html },
//        });
//    });
//
//    $('form').submit(function() {
//        var valuesToSubmit = $(this).serialize();
//        var test_result_html = $("#student_answers").html();
//        console.log(valuesToSubmit);
//        $.ajax({
//            type: "POST",
//            url: $(this).attr('action'), //sumbits it to the given url of the form
//            data: valuesToSubmit,
//            dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
//        }).success(function(json){
//            console.log("success", json);
//        });
//        return false; // prevents normal behaviour
//
//
//    });
//});
//
