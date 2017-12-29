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
  <title>Liên Hệ</title>
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
      <div class="container header">
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

    <!--Nội dung-->
    <div class="container">
        <div class="col-md-12 text-center">
            <h1 style="color: red;margin-bottom: 10px;">Thông tin liên hệ</h1>
        </div>
        <div class="col-md-8" style="font-size:20px;text-align: justify;">
            <p>Chào các bạn, cám ơn bạn đã quan tâm các khóa học tại <b>Trung Tâm Tin Học DaviKi</b></p>
            <p>Xin vui lòng liên hệ với chúng tôi để được tư vấn và ghi danh các khóa học:</p>
            <ul>
                <li><p><strong>Cơ sở 1:</strong> 01, Võ Văn Ngân, P.Linh Chiểu, Q.Thủ Đức</p></li>
                <li><p><strong>Cơ sở 2:</strong> Phường Linh Trung, Quận Thủ Đức, Tp. HCM</p></li>
            </ul>
            <p>Vui lòng liên hệ với chúng tôi qua số <strong>(848) 38960987</strong> để được giải đáp mọi thắc mắc và hỗ trợ thông tin
            về các khóa học, hoặc gửi mail về địa chỉ DaViKi@gmail.com</p>
        </div>
        <div class="col-md-4 w3-animate-zoom">
            <img class="logo" style="width: 70%;" src="image/lologo.png" alt="">
        </div>
    </div>

  <div class="container-fluid nopadding"  style="height: 500px; padding-top: 10px;">
    <!--count down-->
    <div class="bgimgt">
      <img src="image/countdown.jpg" alt="" style="height: 500px;width: 100%;">
      <div class="topleftt">
        <p>DaViKi</p>
      </div>
      <div class="middlet">
        <h1>SẮP KHAI GIẢNG CHƯƠNG TRÌNH MỚI</h1>
        <hr>
        <p id="demo" style="font-size:30px"></p>
      </div>
      <div class="bottomleftt">
        <p>Hãy nhanh tay trở thành thành viên nào!!!</p>
      </div>
    </div>

    <script>
// Set the date we're counting down to
var countDownDate = new Date("Nov 5, 2017 15:37:25").getTime();

// Update the count down every 1 second
var countdownfunction = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("demo").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";
    
    // If the count down is over, write some text 
    if (distance < 0) {
      clearInterval(countdownfunction);
      document.getElementById("demo").innerHTML = "EXPIRED";
    }
  }, 1000);
</script>
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
