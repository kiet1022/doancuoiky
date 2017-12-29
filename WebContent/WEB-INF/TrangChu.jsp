<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<% session.invalidate();%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Trang chủ</title>
  <link rel="shortcut icon" href="image/Untitled-2.ico" />
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
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
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>     
            </button>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="TrangChu">TRANG CHỦ</a></li>
                    <li><a href="TrangDangKyKhoaHoc">CHƯƠNG TRÌNH ĐÀO TẠO</a></li>
                    <li><a href="LichKhaiGiang">LỊCH KHAI GIẢNG</a></li>
                    <li><a href="TinTuc">TIN TỨC</a></li>
                    <li><a href="LienHe">LIÊN HỆ</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="TrangDangKyKhoaHoc"><span class="glyphicon glyphicon-user"></span>Đăng kí khóa học</a></li>
                    <li onclick="document.getElementById('id01').style.display='block'"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
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
          <form class="w3-container" action="Login" id="form-login" method="post">
            <div class="w3-section">
              <label><b>Username</b></label>
              <input id="id" class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="id" required>
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
          <img src="image/img1.png" alt="Khongduoc">
        </div>

        <div class="item">
          <img src="image/img2.png" alt="Image">
        </div>

        <div class="item">
          <img src="image/img3.png" alt="Image">
        </div>
      </div>
    </div>
    <!--Nội Dung thống kê-->
    <div class="container-fluid" style="height: 300px;background-color: #f7fbfe;">
      <div class="camon">
        Cám ơn các bạn đã tin tưởng và đồng hành cùng chúng tôi
      </div>
      <div class="col-md-3 gioi-thieu">
        <strong>> 1.000.000</strong>
        <div class="noi-dung-gioi-thieu">Học viên</div>
      </div>
      <div class="col-md-3 gioi-thieu">
        <strong>> 20</strong>
        <div class="noi-dung-gioi-thieu">Cơ sở khắp cả nước</div>
      </div>
      <div class="col-md-3 gioi-thieu">
        <strong>> 30</strong>
        <div class="noi-dung-gioi-thieu">Năm</div>
      </div>
      <div class="col-md-3 gioi-thieu">
        <strong>> 100</strong>
        <div class="noi-dung-gioi-thieu">Chương trình đào tạo</div>
      </div>
    </div>
    <!--Tiêu đề ct đào tạo-->
    <div class="container" style="height: 130px;">
      <h1 style="text-align: center;font-size: 40px;color: red">Chương trình đào tạo</h1>
      <div class="col-md-4"></div>
      <div class="col-md-4" style="padding-left: 100px;">
        <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
        <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
        <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
      </div>
      <div class="col-md-4"></div>
    </div>
  </div>

  <!--Chương trình đào tạo-->
  <div class="container-fluid ct-dao-tao">
    <div class="container" style="margin-left: 290px;">
      <div class="col-sm-2 dao-tao1">
        <div class="ten-ctdt">Lập trình web
          <div class="hinh-nen-ctdt" style="padding-top: 35px;">
            <img src="image/web.png" alt="dhtt">
          </div>
        </div>
      </div>

      <div class="col-sm-2 dao-tao2">
        <div class="ten-ctdt">Đồ họa truyền thông
          <div class="hinh-nen-ctdt">
            <img src="image/brush.png" alt="dhtt">
          </div>
        </div>
      </div>

      <div class="col-sm-2 dao-tao3">
        <div class="ten-ctdt">Lập trình và CSDL
          <div class="hinh-nen-ctdt">
            <img src="image/web_database.png" alt="dhtt">
          </div>
        </div>
      </div>
      <div class="col-sm-2 dao-tao4">
        <div class="ten-ctdt">Lập trình di động
          <div class="hinh-nen-ctdt">
            <img src="image/phone.png" alt="dhtt" style="padding-top: 10px">
          </div>
        </div>
      </div>
    </div>
    <div class="container" style="margin-left: 290px;">
      <div class="col-sm-2 dao-tao5">
        <div class="ten-ctdt">kiểm thử phần mềm
          <div class="hinh-nen-ctdt">
            <img src="image/check.png" alt="dhtt">
          </div>
        </div>
      </div>
      <div class="col-sm-2 dao-tao6">
        <div class="ten-ctdt">Mạng máy tính
          <div class="hinh-nen-ctdt">
            <img src="image/network.png" alt="dhtt" style="padding-top: 30px">
          </div>
        </div>
      </div>
      <div class="col-sm-2 dao-tao7">
        <div class="ten-ctdt">Internet maketing
          <div class="hinh-nen-ctdt">
            <img src="image/internet-marketing.png" alt="dhtt">
          </div>
        </div>
      </div>
      <div class="col-sm-2 dao-tao8">
        <div class="ten-ctdt">Tin học văn phòng
          <div class="hinh-nen-ctdt">
            <img src="image/win.png" alt="dhtt" style="padding-top: 10px">
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--Thông báo, tin tức sự kiện-->
  <div class="container nopadding tin-tuc-thong-bao">
    <div class="col-md-4" style="height: 400px; background-color: white;">
      <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#thong-bao">Thông Báo</a></li>
        <li><a data-toggle="tab" href="#tin-tuc">Tin tức</a></li>
      </ul>
      <div class="tab-content">
        <div id="tin-tuc" class="tab-pane fade">
        </div>
        <div id="thong-bao" class="tab-pane fade in active" style="height: 400px;">
          <ul>
            <li class="vien-duoi-thong-bao">
              <a href="#">Lịch khai giảng khóa mới <br></a>
              <i class="fa fa-file"> Đăng ngày 30/09/2017</i>
            </li>
            <li class="vien-duoi-thong-bao">
              <a href="#">Thông báo mở lớp CSDL <br></a>
              <i class="fa fa-file"> Đăng ngày 01/10/2017</i>
            </li>
            <li class="vien-duoi-thong-bao">
              <a href="#">Thông báo nghỉ lễ 30/4 - 1/5 <br></a>
              <i class="fa fa-file"> Đăng ngày 29/04/2017</i>
            </li>
            <li class="vien-duoi-thong-bao">
              <a href="#">Lịch thi khóa NMLT <br></a>
              <i class="fa fa-file"> Đăng ngày 30/09/2017</i>
            </li>
            <li class="vien-duoi-thong-bao">
              <a href="#">Lịch thi khóa CSDL <br></a>
              <i class="fa fa-file"> Đăng ngày 30/09/2017</i>
            </li>
            <li class="vien-duoi-thong-bao">
              <a href="#">Lịch thi khóa IOS <br></a>
              <i class="fa fa-file"> Đăng ngày 30/09/2017</i>
            </li>
            <li style="float: right; list-style-type: none; text-decoration: none; ">
              <a href="#"> <u> View all >> </u></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-4 hinh-to nopadding" style=" height: 400px;" title="Khóa học thiết kế photoshop miễn phí" >
      <img src="image/ptsmienphi.jpg"class="image">
      <div class="overlay"></div>
    </div>
    <div class="col-md-4 nopadding" style="height: 400px;" title="Đăng kí tin học trực tuyến" >
      <div class="col-md-6 hinh-to nopadding" style=" height: 200px;">
        <img src="image/vuong1.jpg" class="image">
        <div class="overlay"></div>
      </div>
      <div class="col-md-6 hinh-to nopadding" style=" height: 200px;" title="Bài tập thực hành tin học văn phòng" >
        <img src="image/vuong2.jpg" class="image">
        <div class="overlay"></div>
      </div>
      <div class="col-md-6 hinh-to nopadding" style=" height: 200px;" title="Tuyển dụng nhân viên kỹ thuật" >
        <img src="image/vuong3.jpg" class="image">
        <div class="overlay"></div>
      </div>
      <div class="col-md-6 hinh-to nopadding" style=" height: 200px;" title="Get more from MT4" >
        <img src="image/vuong4.jpg" class="image">
        <div class="overlay"></div>
      </div>
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
var countDownDate = new Date("Nov 30, 2017 15:37:25").getTime();

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
<!--tiêu đề đội ngũ giảng viên-->
<div class="container" style="height: 130px;">
  <h1 style="text-align: center;font-size: 40px;color: red">Đội ngũ giảng viên</h1>
  <div class="col-md-4"></div>
  <div class="col-md-4" style="padding-left: 100px;">
    <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
    <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
    <img src="image/hp_fav_star.png" style="width: 50px;" alt="">
  </div>
  <div class="col-md-4"></div>
</div>
</div>

<!--đội ngũ giảng viên-->
<div class="container nopadding">
  <div class="col-md-3"></div>
  <div class="col-md-2 the-gv">
    <div class="hovergallery">
      <div class="card">
        <img src="image/gv1.jpg" alt="Avatar" style="width:100%">
        <div class="text-gv">
          <h5 style="text-align: center;"><b>Tuấn Kiệt</b></h5> 
          <p>Giám đốc trung tâm</p>
          <p>Mail: kiet1022@gmail.com</p>
          <p>SDT: 01646356275</p>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-2 the-gv">
    <div class="hovergallery">
      <div class="card">
        <img src="image/gv2.jpg" alt="Avatar" style="width:100%">
        <div class="text-gv">
          <h5 style="text-align: center;"><b>Hửu Vinh</b></h5> 
          <p>GV trung tâm</p>
          <p>Mail: pvinh41376@gmail.com</p>
          <p>SDT: 01296824724</p>
        </div>
      </div>
    </div>
  </div>
  
  <div class="col-md-2 the-gv">
    <div class="hovergallery">
     <div class="card">
      <img src="image/gv3.jpg" alt="Avatar" style="width:100%">
      <div class="text-gv">
        <h5 style="text-align: center;"><b>Thanh Danh</b></h5> 
        <p>GV trung tâm</p>
        <p>Mail: DanhOCC@gmail.com</p>
        <p>SDT: 0961512399</p>
      </div>
    </div>
  </div>
</div>
<div class="col-md-3"></div>
</div>

<!--Liên Hệ-->


<!-- menu trái-->
<div id="mySidenav" class="sidenav">
  <a href="#" class="fa fa-facebook facebook ff"></a>
  <a href="#" class="fa fa-twitter twitter ff"></a>
  <a href="#" class="fa fa-google google ff"></a>
  <a href="#" class="fa fa-youtube youtube ff"></a>
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



<footer class="container-fluid nopadding" style="margin-top: 20px;background-color: #44acee;">
<div class="col-md-4">
    <div class="w3-container">
    <div class="w3-panel chu-footer">
        <h5><b>Trụ sở chính:</b> <hr/></h5>
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
        <h5><b>Cơ sở 1:</b> <hr/></h5>
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
</footer>
</body>
</html>
