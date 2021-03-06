<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Lịch khai giảng</title>
  <link rel="shortcut icon" href="image/Untitled-2.ico" />
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  
  <!-- connect databse -->
            <sql:setDataSource var="data"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://node6011-daviki.ocs.opusinteractive.io/doancuoiky01?useUnicode=true&characterEncoding=UTF-8" user = "root"  password = "NYRmri34671" />
</head>
<body>
  <div class="row">
    <header>
      <div class="container-fluid header">
        <div class="col-md-8">
          <img src="image/login-active.png" style="width: 500px;">
        </div>
        <div class="col-md-4" style="margin-top: 16px;">
          <form>
            <input type="text" name="search" class="input" placeholder="Tìm kiếm">
          </form>
        </div>
      </div>

      <!--Thanh menu-->
      <div>
       <nav class="navbar" style="background-color: #44acee; margin-top: 10px;">
        <div class="container" style="font-size:14px; color: #ffffff">
          <ul class="nav navbar-nav">
            <li class="active"><a href="TrangChu">TRANG CHỦ</a></li>
            <li><a href="TrangDangKyKhoaHoc">CHƯƠNG TRÌNH ĐÀO TẠO</a></li>
            <li><a href="LichKhaiGiang">LỊCH KHAI GIẢNG</a></li>
            <li><a href="TinTuc">TIN TỨC</a></li>
            <li><a href="LienHe">LIÊN HỆ</a></li>
          </ul>
          <% if(request.getSession().getAttribute("id") == null) { %>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="TrangDangKyKhoaHoc"><span class="glyphicon glyphicon-user"></span>Đăng kí khóa học</a></li>
        <li onclick="document.getElementById('id01').style.display='block'"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    <% } else { %>
    
    <sql:query dataSource="${data}" var="result">
                select * from student where ID=?;
                <sql:param value="${id}" />
            </sql:query>
            <sql:query dataSource="${data}" var="result1">
                select * from teacher where ID=?;
                <sql:param value="${id}" />
            </sql:query>
    
    <ul class="nav navbar-nav navbar-right">
        <li><a href="TrangSinhVien"><span class="glyphicon glyphicon-user"></span><c:forEach var="row" items="${result.rows}">${row.Name}</c:forEach><c:forEach var="row" items="${result1.rows}">${row.Name}</c:forEach></a></li>
        <li data-toggle="modal" data-target="#myModal3"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Log out</a></li>
    </ul>
    <% } %>
        </div>
      </nav>
    </div>
  </header>

  <div class="container">
    <div class="col-md-12" style="z-index: 1;">
      <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

          <div class="w3-center"><br>
            <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
            <img src="image/avt-login.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
          </div>

          <form class="w3-container" action="index.html">
            <div class="w3-section">
              <label><b>Username</b></label>
              <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="usrname" required>
              <label><b>Password</b></label>
              <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="psw" required>
              <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Login</button>
              <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
            </div>
          </form>

          <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
            <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
            <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
          </div>

        </div>
      </div>
    </div>
  </div>
  <div class="container" id="main-content">
    <!--HÌnh trược-->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="image/img1.png" alt="Image">
        </div>

        <div class="item">
          <img src="image/img2.png" alt="Image">
        </div>

        <div class="item">
          <img src="image/img3.png" alt="Image">
        </div>
      </div>
    </div>
  </div>
</div>

<!--Tiêu đề ct đào tạo-->
<div class="container" style="height: 130px;">
  <h1 style="text-align: center;font-size: 40px;color: red">Lịch khai giảng</h1>
  <div class="col-md-4"></div>
  <div class="col-md-4" style="padding-left: 100px;">
    <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
    <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
    <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
</div>
<div class="col-md-4"></div>
</div>
<div class="container" style="margin-top: 10px;">
    <div class="container dki-mon-hoc">
   <div class="panel panel-primary">
    <div class="panel-heading" data-toggle="collapse" data-target="#web">LẬP TRÌNH WEB
        <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
    </div>
    <div class="panel-body collapse" id="web" style="overflow-x:auto;">
        <div class="container" style="width: 1080px;">
            <!--KỸ THUẬT VIÊN THIẾT KẾ WEBSITE-->
            <h2 style="text-align: center;color: red;">Các khóa học</h2>
            <div class="nganh-tieu-de">
                KỸ THUẬT VIÊN THIẾT KẾ WEBSITE
            </div>
            <div class="noi-dung-nganh">
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th>Lớp</th>
                        <th>Thời Gian</th>
                        <th>Ngày Khai Giảng</th>
                        <th>Địa Điểm</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="success">
                        <td>KTVW - 01</td>
                        <td>Thứ 2 - 4 - 6 (13:30 - 16:45)</td>
                        <td>18/10/2017</td>
                        <td>Cơ sở 1</td>
                    </tr>
                    <tr class="info">
                        <td>KTVW - 02</td>
                        <td>Thứ 2 - 4 - 6 (08:30 - 11:30)</td>
                        <td>18/10/2017</td>
                        <td>Cơ sở 1</td>
                    </tr>
                    <tr class="info">
                        <td>KTVW - 03</td>
                        <td>Thứ 3 - 5 - 7 (13:30 - 16:45)</td>
                        <td>18/10/2017</td>
                        <td>Cơ sở 1</td>
                    </tr>

                </tbody>
            </table>
            <div class="nganh-tieu-de">
                THIẾT KẾ GIAO DIỆN WEBSITE
            </div>
            <div class="noi-dung-nganh">
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th>Lớp</th>
                        <th>Thời Gian</th>
                        <th>Ngày Khai Giảng</th>
                        <th>Địa Điểm</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="success">
                        <td>MTWCC_235S246</td>
                        <td>Thứ 2-4-6 (08:00 - 11:00)</td>
                        <td>18/10/2017</td>
                        <td>Cơ sở 1</td>
                    </tr>
                    <tr class="info">
                        <td>MTWCC_235S247</td>
                        <td>Thứ 2-4-6 (11:00 - 16:00)</td>
                        <td>18/10/2017</td>
                        <td>Cơ sở 1</td>
                    </tr>
                   <tr class="success">
                        <td>MTWCC_235S248</td>
                        <td>Thứ 3-5-7 (08:00 - 11:00)</td>
                        <td>18/10/2017</td>
                        <td>Cơ sở 1</td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading" data-toggle="collapse" data-target="#dohoa">ĐỒ HỌA TRUYỀN THÔNG
    <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
</div>
<div class="panel-body collapse" id="dohoa" style="overflow-x:auto;">
   <div class="container" style="width: 1080px;">
    <!--KTV ĐỒ Họa 2D-->
    <h2 style="text-align: center;color: red;">Các khóa học</h2>
    <div class="nganh-tieu-de">
        KỸ THUẬT VIÊN THIẾT KẾ ĐỒ HỌA 2D
    </div>
    <div class="noi-dung-nganh">
     
    </div>

    <div style="overflow-x:auto;">
        <table class="table">
            <thead>
              <tr>
                <th>Lớp</th>
                <th>Thời Gian</th>
                <th>Ngày Khai Giảng</th>
                <th>Địa Điểm</th>
            </tr>
        </thead>
        <tbody>
          <tr class="success">
            <td>KTVDH - 01</td>
            <td>Thứ 2 - 4 - 6 (13:30 - 16:45)</td>
            <td>18/10/2017</td>
            <td>Cơ sở 1</td>
        </tr>
        <tr class="info">
            <td>KTVDH - 02</td>
            <td>Thứ 3 - 5 - 7 (13:30 - 16:45)</td>
            <td>21/10/2017</td>
            <td>Cơ sở 1</td>
        </tr>
        <tr class="success">
            <td>KTVDH - 03</td>
            <td>Thứ 2 - 4(08:00 - 11:00)</td>
            <td>18/10/2017</td>
            <td>Cơ sở 2</td>
        </tr>
        <tr class="info">
            <td>KTVDH - 04</td>
            <td>Thứ 3 - 5 (08:00 - 11:00)</td>
            <td>19/10/2017</td>
            <td>Cơ sở 2</td>
        </tr>
    </tbody>
</table>    
    </div>
    
<!--KTV ĐỒ Họa 3D Nội thất-->
<div class="nganh-tieu-de">
    KỸ THUẬT VIÊN THIẾT KẾ 3D NỘI THẤT
</div>
<div class="noi-dung-nganh">

</div>
<table class="table">
    <thead>
      <tr>
        <th>Lớp</th>
        <th>Thời Gian</th>
        <th>Ngày Khai Giảng</th>
        <th>Địa Điểm</th>
    </tr>
</thead>
<tbody>
    <tr class="success">
        <td>KTVDH3D - 01</td>
        <td>Thứ 2 - 4(08:00 - 11:00)</td>
        <td>18/10/2017</td>
        <td>Cơ sở 2</td>
    </tr>
    <tr class="info">
        <td>KTVDH3D - 02</td>
        <td>Thứ 3 - 5 (08:00 - 11:00)</td>
        <td>19/10/2017</td>
        <td>Cơ sở 2</td>
    </tr>
</tbody>
</table>
<!--KỸ THUẬT VIÊN ĐỒ HỌA CHUYỂN ĐỘNG 2D (MOTION GRAPHIC 2D)-->
<div class="nganh-tieu-de">
    KỸ THUẬT VIÊN ĐỒ HỌA CHUYỂN ĐỘNG 2D (MOTION GRAPHIC 2D)
</div>
<div class="noi-dung-nganh">

</div>
<table class="table">
    <thead>
      <tr>
        <th>Lớp</th>
        <th>Thời Gian</th>
        <th>Ngày Khai Giảng</th>
        <th>Địa Điểm</th>
    </tr>
</thead>
<tbody>
    <tr class="success">
        <td>KTVDHCD - 01</td>
        <td>Thứ 2 - 4(08:00 - 11:00)</td>
        <td>18/10/2017</td>
        <td>Cơ sở 2</td>
    </tr>
    <tr class="info">
        <td>KTVDHCD - 02</td>
        <td>Thứ 3 - 5 (08:00 - 11:00)</td>
        <td>19/10/2017</td>
        <td>Cơ sở 2</td>
    </tr>
    <tr class="success">
        <td>KTVDHCD - 03</td>
        <td>Thứ 5 - 7(08:00 - 11:00)</td>
        <td>18/10/2017</td>
        <td>Cơ sở 2</td>
    </tr>
</tbody>
</table>
</div>
</div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading" data-toggle="collapse" data-target="#csdl">LẬP TRÌNH VÀ CSDL
    <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
</div>
<div class="panel-body collapse" id="csdl">

</div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading" data-toggle="collapse" data-target="#didong">LẬP TRÌNH DI ĐỘNG
    <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
</div>
<div class="panel-body collapse" id="didong">

</div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading" data-toggle="collapse" data-target="#kiemthu">KIỂM THỬ PHẦN MỀM
    <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
</div>
<div class="panel-body collapse" id="kiemthu">

</div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading" data-toggle="collapse" data-target="#mang">MẠNG MÁY TÍNH
    <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
</div>
<div class="panel-body collapse" id="mang">

</div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading" data-toggle="collapse" data-target="#internet">INTERNET MAKETING
    <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
</div>
<div class="panel-body collapse" id="internet">

</div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading" data-toggle="collapse" data-target="#tinhoc">TIN HỌC VĂN PHÒNG
    <span class="glyphicon glyphicon-chevron-down" style="float: right;"></span>
</div>
<div class="panel-body collapse" id="tinhoc">

</div>
</div>

        
</div>
</div>


<!--button scroll to top-->
<button onclick="page_scroll2top()" class="button_scroll2top" title="Go to top"><i class="fa fa-chevron-up"></i></button>
<script type="text/javascript">

  $(window).scroll(function(){
    if($(window).scrollTop() >= 50) {
      $('.button_scroll2top').show();
    } else {
      $('.button_scroll2top').hide();
    }
  });
  
  function page_scroll2top(){
    $('html,body').animate({
      scrollTop: 0
    }, 'slow');
  }
</script>



<div class="container-fluid nopadding" style="margin-top: 20px;background-color: #44acee;">
<div class="col-md-4">
    <div class="w3-container">
    <div class="w3-panel chu-footer">
        <h5><b>Trụ sở chính:</b> <hr /></h5>
        <a href="http://itc.hcmute.edu.vn/"><i class="fa fa-home"></i><u> Đại Học Sư phạm Kỹ Thuật TP.HCM</u></a>
        <p><i class="fa fa-map-marker"></i> 01, Võ Văn Ngân, P.Linh Chiểu, Q.Thủ Đức</p>
        <p><i class="fa fa-phone"></i> (+84.8) 38960987</p>
        <p><i class="fa fa-envelope-o"></i> itc@hcmute.edu.vn</p>
    </div>
</div>
</div>
<div class="col-md-4">
    <div class="w3-container">
        <div class="w3-panel chu-footer">
        <h5><b>Cơ sở 1:</b> <hr /></h5>
        <a href="http://www.vnuhcm.edu.vn/"><i class="fa fa-arrow-right"></i><u> Đại Học Quốc Gia TP.HCM</u></a>
        <p><i class="fa fa-map-marker"></i> Phường Linh Trung, Quận Thủ Đức, Tp. HCM</p>
        <p><i class="fa fa-phone"></i> 84.8 37242181</p>
        <p><i class="fa fa-fax"></i> 84.8 37242057</p>
    </div>
    </div>
</div>
<div class="col-md-4" style="padding-top: 90px;">
    <a href="#" class="fa fa-facebook ft fb"  style="text-decoration: none;"></a>
    <a href="#" class="fa fa-pinterest ft pt"  style="text-decoration: none;"></a>
    <a href="#" class="fa fa-google ft gg"  style="text-decoration: none;"></a>
    <a href="#" class="fa fa-youtube ft yt"  style="text-decoration: none;"></a>
</div>
</div>

<!-- Modal -->
    <div class="modal fade" id="myModal3" role="dialog">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Chú ý!</h4>
          </div>
          <div class="modal-body">
              <p>Bạn chắc chắn muốn đăng xuất?</p>
          </div>
          <div class="modal-footer">
              <a href="TrangChu"><button type="button" class="btn btn-default">Đồng ý</button></a>
          </div>
      </div>
  </div>
</div>

</body>

</html>
