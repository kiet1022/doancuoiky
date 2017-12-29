<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css1/style.css">
  <title>Tin tức</title>
  
   <!-- connect databse -->
            <sql:setDataSource var="data"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://node6011-daviki.ocs.opusinteractive.io/doancuoiky01?useUnicode=true&characterEncoding=UTF-8" user = "root"  password = "NYRmri34671" />
</head>
<body>
  <div class="container-fluid head1">
    <div class="col-md-8">
      <img src="./image/login-active.png" alt="không hiển thị!"
      style="height: 200px;">
    </div>
    <div class="col-md-4">
      <form>
        <input type="text" name="search" class="input" placeholder="Tìm Kiếm">
      </form>
    </div>
  </div>

  <!--Thanh menu-->
  <div>
   <nav class="navbar" style="background-color: #44acee; margin-top: 10px; color: #ffffff">
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
<!--menu ẩn-->
<div id="mySidenav" class="sidenav">
  <a href="#" class="fa fa-facebook facebook ff"></a>
  <a href="#" class="fa fa-twitter twitter ff"></a>
  <a href="#" class="fa fa-google google ff"></a>
  <a href="#" class="fa fa-youtube youtube ff"></a>
</div>
<div class="container body1" style="height:400px;">
  <div class="col-md-6 hinh-to nopadding" style="height:400px;" title="Bài tập thực hành tin học văn phòng">
    <img src="image\vuong2.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-3 hinh-to" style="height:200px;" title="Đăng ký tin học trực tuyến">
    <img src="image\vuong1.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-3 hinh-to" style="height:200px;" title="Thông tin tuyển dụng">
    <img src="image\vuong3.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-3 hinh-to" style="height:200px;">
    <img src="image\vuong4.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-3 hinh-to" style="height:200px;" title="khóa học visual cho người mới học">
    <img src=".\image1\vce.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
</div>
<hr>
<div class="container body2" style="height:auto;">
  <div class="col-md-4 hinh-to" style="height:200px;">
    <img src=".\image\QUYCACHKHOALUAN.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-8 body2.2" style="height:200px;">
    <ul>
      <li class="vien-duoi-thong-bao">
        <a href="#"><h3>[HƯỚNG DẪN]Qui chuẩn trình bày khóa luận tốt nghiệp cho sinh viên năm học 2017-20...</h3><br></a>
        <i class="fa fa-file"> Đăng ngày 08/08/2017</i>
      </li>
    </ul>
  </div>
  <hr>
  <div class="col-md-4 hinh-to" style="height:200px;">
    <img src=".\image1\ptsmienphi.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-8 body2.4" style="height:200px;">
    <ul>
      <li class="vien-duoi-thong-bao">
        <a href="#"><h3>Lịch khai giảng khóa học Photoshop miễn phí dành cho các học viên có hoàn cảnh khó khă...</h3><br></a>
        <i class="fa fa-file"> Đăng ngày 19/08/2017</i>
      </li>
    </ul>
  </div>
  <hr>
  <div class="col-md-4 hinh-to" style="height:200px;">
    <img src=".\image\txmt3.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-8 body2.6" style="height:200px;">
    <ul>
      <li class="vien-duoi-thong-bao">
        <a href="#"><h3>Sinh hoạt ngoại khóa, du khảo về nguồn dành cho tân học viên tại trung tâm...</h3><br></a>
        <i class="fa fa-file"> Đăng ngày 25/08/2017</i>
      </li>
    </ul>
  </div>
  <hr>
  <div class="col-md-4 hinh-to" style="height:200px;">
    <img src=".\image1\IMG_2799.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-8 body2.8" style="height:200px;">
    <ul>
      <li class="vien-duoi-thong-bao">
        <a href="#"><h3>Sơ lược cuộc thi tiềm kím tài năng tin học trẻ toàn toàn quốc năm 2017...</h3><br></a>
        <i class="fa fa-file"> Đăng ngày 01/09/2017</i>
      </li>
    </ul>
  </div>
  <hr>
  <div class="col-md-4 hinh-to" style="height:200px;">
    <img src=".\image1\tin-hoc-van-phong.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-8 body2.10" style="height:200px;">
    <ul>
      <li class="vien-duoi-thong-bao">
        <a href="#"><h3>[HƯỚNG DẪN] Phương Pháp tự học tin học văn phòng tại nhà dành cho các học viên muốn nâng cao kiến...</h3><br></a>
        <i class="fa fa-file"> Đăng ngày 07/09/2017</i>
      </li>
    </ul>
  </div>
  <hr>
  <div class="col-md-4 hinh-to" style="height:200px;">
    <img src=".\image1\bg-ctdt.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-8 body2.12" style="height:200px;">
    <ul>
      <li class="vien-duoi-thong-bao">
        <a href="#"><h3>Công nghệ thông tin bước phát triển vĩ đại của nhân loại...</h3><br></a>
        <i class="fa fa-file"> Đăng ngày 12/09/2017</i>
      </li>
    </ul>
  </div>
  <hr>
  <div class="col-md-4 hinh-to" style="height:200px;">
    <img src=".\image1\1471740109-11-chot_frlb.jpg" class="image" style="width:100%; height:100%;">
    <div class="overlay"></div>
  </div>
  <div class="col-md-8 body2.14" style="height:200px;">
    <ul>
      <li class="vien-duoi-thong-bao">
        <a href="#"><h3>[ĐÁNH GIÁ] Tổng quan khả năng phát triển, hướng đi, công việc trong ngành công nghệ thông tin...</h3><br></a>
        <i class="fa fa-file"> Đăng ngày 30/09/2017</i>
      </li>
    </ul>
  </div>
</div>
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
<div class="container pag" style="text-align:center;" >
  <ul class="pagination">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
  </ul>
</div>
<footer class="container-fluid nopadding" style="margin-top: 20px;background-color: #44acee; color:white;">
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

</footer>
</body>
</html>﻿
