$(document).ready(function () {
    $("#ContentPlaceHolder1_GridView1 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("#ContentPlaceHolder1_GridView2 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("#ContentPlaceHolder1_GridView3 tr:even").css("backgroundColor", "rgb(253,225,230)");

    $("#ContentPlaceHolder1_DetailsView1 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("#ContentPlaceHolder1_DetailsView2 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("#ContentPlaceHolder1_DetailsView3 tr:even").css("backgroundColor", "rgb(253,225,230)");

    $("input").addClass("form-control");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(1) > td:nth-child(1)").text("Tin ID");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(2) > td:nth-child(1)").text("Nội dung");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(3) > td:nth-child(1)").text("Ngày gửi");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(4) > td:nth-child(1)").text("Tác giả ID");

    //alert("© 2020 Copyright by Tiendatmagic");
    
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(1) > td:nth-child(1)").text("Tác giả ID");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(2) > td:nth-child(1)").text("Tên tác giả");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(3) > td:nth-child(1)").text("Email");

    $("#ContentPlaceHolder1_DetailsView3 > tbody > tr:nth-child(1) > td:nth-child(1)").text("Chủ đề ID");
    $("#ContentPlaceHolder1_DetailsView3 > tbody > tr:nth-child(2) > td:nth-child(1)").text("Tên chủ đề");

    
});
