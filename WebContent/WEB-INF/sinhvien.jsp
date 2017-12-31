<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Trang Sinh Viên</title>
  <link rel="shortcut icon" href="image/Untitled-2.ico" />
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">

  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- connect databse -->
            <sql:setDataSource var="data"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://node6011-daviki.ocs.opusinteractive.io/doancuoiky01?useUnicode=true&characterEncoding=UTF-8" 
                user = "root"  
                password = "NYRmri34671" />

</head>
<body>
  <div class="row">
    <header>
      <div class="container">
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
    <ul class="nav navbar-nav navbar-right">
        <li><a href="TrangDangKyKhoaHoc"><span class="glyphicon glyphicon-user"></span>Đăng kí khóa học</a></li>
        <li data-toggle="modal" data-target="#myModal3"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Log out</a></li>
    </ul>
</div>
</nav>
</div>
</header>

<div class="container" id="main-content" style="margin-top: 10px;">
    <div class="col-md-3">
        <div class="w3-bar-block w3-cyan w3-card" style="width: 100%;">
            <h5 class="w3-bar-item w3-blue" style="margin:0px;">Trang của bạn</h5>
            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'thong-tin-ca-nhan')"><img class="hinh-cnsv" src="image/thong-tin-ca-nhan.png" alt="ttcn">Thông tin cá nhân</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'chuong-trinh-dao-tao')"><img class="hinh-cnsv" src="image/chuong-trinhdao-tao.png" alt="ttcn">Chương trình đào tạo</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'hoc-phi')"><img class="hinh-cnsv" src="image/hoc-phi.png" alt="ttcn" style="width: 11%;">Học Phí</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'thoi-khoa-bieu')"><img class="hinh-cnsv" src="image/thoi khoa bieu.png" alt="ttcn">Thời khóa biểu</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'diem')"><img class="hinh-cnsv" src="image/Xem điểm.png" alt="ttcn">Xem điểm thi</button>

        </div>
    </div>

    

    <div class="col-md-9 nopadding w3-border w3-border-teal">
    
    <sql:query dataSource="${data}" var="result">
                select * from student where ID=?;
                <sql:param value="${id}" />
            </sql:query>
            
            
            <c:forEach var="row" items="${result.rows}">
                <div class="w3-padding"> 
          <marquee behavior="alternate" scrollamount="6" onmouseover="this.stop()" onmouseout="this.start()" ><h3>Sinh viên: ${row.Name}</h3></marquee>

          </div>
          <div id="thong-tin-ca-nhan" class="w3-container city w3-animate-opacity ">
            <div class="col-md-6">
                
                    <div class="w3-border-left w3-pale-red w3-border-red w3-panel" style="margin: 0;">
                        <b style="color: green;">Thông tin cá nhân</b>
                    </div>
                    <table class="table">
                        <thead>
                            
                        </thead>
                        <tbody>
                            <tr class="active">
                                <td>MSSV:</td>
                                <td>${row.ID}</td>
                            </tr>
                            <tr class="active">
                                <td>Họ và tên:</td>
                                <td>${row.Name}</td>
                            </tr>
                            <tr class="active">
                                <td>Ngày sinh:</td>
                                <td>${row.DoB}</td>
                            </tr>
                            <tr class="active">
                                <td>Nơi sinh:</td>
                                <td>${row.Address}</td>
                            </tr>
                            <tr class="active">
                                <td>Giới tính:</td>
                                <td>${row.Sex}</td>
                            </tr>
                            <tr class="active">
                                <td>Dân tộc:</td>
                                <td>Kinh</td>
                            </tr>
                        </tbody>
                    </table>
                    <!--Thông tin khóa học-->
                    <div class="w3-border-left w3-pale-red w3-border-red w3-panel" style="margin: 0;">
                        <b style="color: green;">Thông tin Khoá học</b>
                    </div>
                    <table class="table">
                        <thead></thead>
                        <tbody>
                            <tr class="active">
                                <td>Khóa học:</td>
                                <td>2017 - 2018</td>
                            </tr>
                            <tr class="active">
                                <td>Ngày Nhập học: </td>
                                <td>08/08/2017</td>
                            </tr>
                            <tr class="active">
                                <td>Tình trạng:</td>
                                <td>Còn học</td>
                            </tr>
                        </tbody>
                    </table>
                    <button onclick="document.getElementById('id02').style.display='block'" type="button" class="btn btn-info">Chỉnh sửa thông tin</button></td>
                </div>
                
                     <!-- Khung chỉnh sửa thông tin-->
                     
                     <c:if test="${thongbao eq 0 }">
		<script type="text/javascript">
		alert("Thất bại");
		</script>
	</c:if>
	
	<c:forEach var="row" items="${result.rows}">
			<div class="w3-modal" id="id02">
            <div class="w3-modal-content w3-animate-zoom w3-card-5">
                <header class="w3-container w3-teal"> 
                    <span onclick="document.getElementById('id02').style.display='none'" 
                    class="w3-button w3-display-topright">&times;</span>
                    <h2>CHỈNH SỬA THÔNG TIN CÁ NHÂN</h2>
                </header>
                <div class="w3-container">
                    <form action="suathongtin" method="post" class="w3-container w3-card-4 w3-text-green w3-margin">
                        <h2 class="w3-center">VUI LÒNG ĐIỀN THÔNG TIN</h2>
						
						<div class="w3-row w3-section">
                            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
                        <div class="w3-rest">
                            <input class="w3-input w3-border" name="mssv" type="text" value="${row.ID}" required="">
                        </div>
                        </div>
						
                        <div class="w3-row w3-section">
                            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
                        <div class="w3-rest">
                            <input class="w3-input w3-border" name="hoten" type="text" value="${row.Name}" required="">
                        </div>
                        </div>

                        <div class="w3-row w3-section">
                            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
                                <div class="w3-rest">
                                    <input class="w3-input w3-border" name="ngaysinh" type="text" value="${row.DoB}" required="">
                                </div>
                        </div>

                        <div class="w3-row w3-section">
                            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
                                <div class="w3-rest">
                                    <input class="w3-input w3-border" name="noisinh" type="text" value="${row.Address}" required="">
                                </div>
                        </div>

                        <div class="w3-row w3-section">
                            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-phone"></i></div>
                                <div class="w3-rest">
                                    <input class="w3-input w3-border" name="sdt" type="text" value="${row.Phonenumber}" required="">
                                </div>
                        </div>

                <button data-toggle="modal" data-target="#myModal2" class="button-submit" type="submit"><span>Hoàn tất</span></button>
                    </form>
            </div>
            </div>
        </div>
	</c:forEach>
        

                 <div class="col-md-6">
                    <div class="col-md-4"></div>
                    <div class="col-md-4" style="margin-bottom: 10px;">
                        <img src="image/avt-3.png" alt="hinh" style="width: 100%;">
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-12 nopadding">
                        <div class="w3-border-left w3-pale-red w3-border-red w3-panel" style="margin: 0;">
                            <b style="color: green;">Thông tin liên lạc</b>
                        </div>
                        <table class="table">
                            <thead></thead>
                            <tbody>
                                <tr class="active">
                                    <td>Di động:</td>
                                    <td>01646356275</td>
                                </tr>
                                <tr class="active">
                                    <td>Email:</td>
                                    <td>Kiet1022@gmail.com</td>
                                </tr>
                                <tr class="active">
                                    <td>Địa chỉ:</td>
                                    <td>Số 14, Đường 447B, P. Tăng Nhơn Phú A, Q.9</td>
                                </tr>
                            </tbody>
                        </table>
                        <!--Thông tin người thân-->
                        <div class="w3-border-left w3-pale-red w3-border-red w3-panel dau-muc" style="margin: 0;">
                            <b style="color: green;">Thông tin người thân</b>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr class="active">
                                    <td>Họ tên:</td>
                                    <td>abc xyz</td>
                                </tr>
                                <tr class="active">
                                    <td>Số điện thoại:</td>
                                    <td>0123456xxx</td>
                                </tr>
                                <tr class="active">
                                    <td>Địa chỉ:</td>
                                    <td>Bình Phước</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
            </div>
            </div>
            </c:forEach>


            <!--Chương trình đào tạo-->
            <sql:query dataSource="${data}" var="result1">
                select class.ID, coures.Name, class.tuition_time, class.Begin_time, room.location
 from class, coures, room, student where class.Student_ID = student.ID 
and class.Coures_ID = coures.ID and class.Room_ID = room.ID and student.ID =?;
                <sql:param value="${id}" />
            </sql:query>
            
            <div id="chuong-trinh-dao-tao" class="w3-container city w3-animate-opacity " style="display:none">
                <h2 style="text-align: center;color: red;">CÁC KHÓA HỌC ĐÃ ĐĂNG KÍ</h2>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr class="success">
                            <th>Lớp</th>
                            <th>Tên HP</th>
                            <th>Thời Gian</th>
                            <th>Ngày Khai Giảng</th>
                            <th>Địa Điểm</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="row" items="${result1.rows}">
                    <tr class="active">
                        <td>${row.ID}</td>
                        <td>${row.Name}</td>
                        <td>${row.tuition_time}</td>
                        <td>${row.Begin_time}</td>
                        <td>${row.location}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <!--Học phí-->
            
            <sql:query dataSource="${data}" var="result">
                select class.ID, coures.Name, tuition.fee, tuition.fee_date, tuition.tinhtrang
 from class, coures, room, student,tuition where class.Student_ID = student.ID 
and class.Coures_ID = coures.ID and class.Room_ID = room.ID and tuition.Coures_ID = coures.ID and student.ID =?;
                <sql:param value="${id}" />
            </sql:query>
            <div id="hoc-phi" class="w3-container city w3-animate-opacity " style="display:none">
                <h2 style="text-align: center;color: red;">TÌNH TRẠNG HỌC PHÍ</h2>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr class="success">
                            <th>Lớp</th>
                            <th>Tên HP</th>
                            <th>Số tiền</th>
                            <th>Ngày hết hạn</th>
                            <th>Tình trạng</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="row" items="${result.rows}">
                    <tr class="active">
                        <td>${row.ID }</td>
                        <td>${row.Name }</td>
                        <td>${row.fee }</td>
                        <td>${row.fee_date }</td>
                        <td style="color: red;">${row.tinhtrang }</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <h5 style="text-align: center;color: red;">Lưu ý: Học phần chưa hoàn thành học phí sau khi hết hạn đóng sẽ không được cấp
                giấy chứng nhận!</h5>
            </div>

            <!--Thời khóa biểu-->
            <div id="thoi-khoa-bieu" class="w3-container city w3-animate-opacity " style="display:none">
                <h2 style="text-align: center;color: red;">Thời Khóa Biểu</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr class="success">
                            <th>Cơ sở</th>
                            <th>Thứ 2</th>
                            <th>Thứ 3</th>
                            <th>Thứ 4</th>
                            <th>Thứ 5</th>
                            <th>Thứ 6</th>
                            <th>Thứ 7</th>
                            <th>Chủ Nhật</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Cơ sở 1</td>
                            <td class="warning">Kỹ thuật viên thiết kế web <br />
                                13h30 - 16h45 <br />
                                GV: Cô Đặng Thị Kim Giao
                            </td>
                            <td></td>
                            <td class="danger">Kỹ thuật viên thiết kế web <br />
                                13h30 - 16h45 <br />
                                GV: Cô Đặng Thị Kim Giao</td>
                            <td></td>
                            <td class="info">Kỹ thuật viên thiết kế web <br />
                                13h30 - 16h45 <br />
                                GV: Cô Đặng Thị Kim Giao</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Cơ sở 1</td>
                            <td class="info">Thiết kế giao diện web <br />
                                08h00 - 11h00 <br />
                                GV: Thầy Nguyễn Minh Đạo</td>
                            <td></td>
                            <td class="warning">Thiết kế giao diện web <br />
                                08h00 - 11h00 <br />
                                GV: Thầy Nguyễn Minh Đạo</td>
                            <td></td>
                            <td class="success">Thiết kế giao diện web <br />
                                08h00 - 11h00 <br />
                                GV: Thầy Nguyễn Minh Đạo</td>
                            <td></td>
                            <td></td>
                        </tr>
                         <tr>
                            <td>Cơ sở 1</td>
                            <td></td>
                            <td class="danger">Kỹ thuật viên đồ họa 2D <br />
                                13h30 - 16h45 <br />
                                GV: Thầy Mai Tuấn Khôi</td>
                            <td></td>
                            <td class="success">Kỹ thuật viên đồ họa 2D <br />
                                13h30 - 16h45 <br />
                                GV: Thầy Mai Tuấn Khôi</td>
                            <td></td>
                            <td class="warning">Kỹ thuật viên đồ họa 2D <br />
                                13h30 - 16h45 <br />
                                GV: Thầy Mai Tuấn Khôi</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!--Xem Điểm-->
            
            <sql:query dataSource="${data}" var="result">
                select class.ID, coures.Name, teach.GiuaKy, teach.CuoiKy, teach.total
 from class, coures, room, student, teach where class.Student_ID = student.ID 
and class.Coures_ID = coures.ID and class.Room_ID = room.ID and class.ID = teach.Class_ID and student.ID =?;
                <sql:param value="${id}" />
            </sql:query>
            <div id="diem" class="w3-container city w3-animate-opacity " style="display:none">
                <h2 style="text-align: center;color: red;">Điểm thi</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr class="success">
                            <th>Mã MH</th>
                            <th>Tên MH</th>
                            <th>Điểm giữa kỳ</th>
                            <th>Điểm cuối kỳ</th>
                            <th>Điểm tổng kết</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td>${row.ID }</td>
                            <td>${row.Name }</td>
                            <td>${row.GiuaKy }</td>
                            <td>${row.CuoiKy }</td> 
                            <td>${row.total }</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Chú ý!</h4>
          </div>
          <div class="modal-body">
              <p>Cập nhật thành công</p>
          </div>
          <div class="modal-footer">
              <a href="TrangSinhVien"><button type="button" class="btn btn-default">Đồng ý</button></a>
          </div>
      </div>
  </div>
</div>

        <script>
            function openTab(evt, cityName) {
              var i, x, tablinks;
              x = document.getElementsByClassName("city");
              for (i = 0; i < x.length; i++) {
               x[i].style.display = "none";
           }
           tablinks = document.getElementsByClassName("tablink");
           for (i = 0; i < x.length; i++) {
              tablinks[i].className = tablinks[i].className.replace(" w3-red", ""); 
          }
          document.getElementById(cityName).style.display = "block";
          evt.currentTarget.className += " w3-red";
      }
  </script>
</div>

<!--Modal-->
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

<!--button scroll to top-->
<button onclick="page_scroll2top()" class="button_scroll2top" title="Go to top"><i class="fa fa-chevron-up"></i></button>
<script type="text/javascript">

  $(window).scroll(function(){
    if($(window).scrollTop() >= 10) {
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
</footer>
</div>
</body>

</html>
