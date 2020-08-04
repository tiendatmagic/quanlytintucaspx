$(document).ready(function () {
    $("#ContentPlaceHolder1_GridView1 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("#ContentPlaceHolder1_GridView2 tr:even").css("backgroundColor", "rgb(253,225,230)");

    $("#ContentPlaceHolder1_DetailsView1 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("#ContentPlaceHolder1_DetailsView2 tr:even").css("backgroundColor", "rgb(253,225,230)");

    $("input").addClass("form-control");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(1) > td:nth-child(1)").text("Phòng ban ID");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(2) > td:nth-child(1)").text("Tên phòng ban");

    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(1) > td:nth-child(1)").text("Cán bộ ID");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(2) > td:nth-child(1)").text("Phòng ban ID");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(3) > td:nth-child(1)").text("Chức vụ ID");  
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(4) > td:nth-child(1)").text("Họ tên");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(5) > td:nth-child(1)").text("Ngày sinh");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(6) > td:nth-child(1)").text("Giới tính");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(7) > td:nth-child(1)").text("Hệ số lương");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(8) > td:nth-child(1)").text("Là đảng viên");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(9) > td:nth-child(1)").text("Vào công đoàn");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(10) > td:nth-child(1)").text("Ảnh");
    $("#ContentPlaceHolder1_DetailsView2 > tbody > tr:nth-child(11) > td:nth-child(1)").text("Ghi chú");

});
//alert("© 2020 Copyright by Tiendatmagic");