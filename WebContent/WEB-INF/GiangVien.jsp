<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!-- connect databse -->
			<sql:setDataSource var="data"
				driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://node6011-daviki.ocs.opusinteractive.io/doancuoiky01?useUnicode=true&characterEncoding=UTF-8" user = "root"  password = "NYRmri34671" />


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Trang Giảng Viên</title>
  <link rel="shortcut icon" href="image/Untitled-2.ico" />
  <%@ page contentType="text/html; charset=UTF-8" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <script src="ckeditor/ckeditor.js"></script>

</head>
<body>
  <div class="row">
    <header>
      <div class="container">
        <div class="col-md-8 col-sm-8">
          <img src="image/login-active.png" style="width: 500px;">
      </div>
      <div class="col-md-4 col-sm-4" style="margin-top: 16px;">
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
        <li data-toggle="modal" data-target="#myModal3"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Log out</a></li>
    </ul>
</div>
</nav>
</div>
</header>

<div class="container" id="main-content" style="margin-top: 10px;">
    <div class="col-md-3 col-sm-3">
        <div class="w3-bar-block w3-cyan w3-card" style="width: 100%;">
            <h5 class="w3-bar-item w3-blue" style="margin:0px;">Trang của bạn</h5>
            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'thong-tin-ca-nhan')"><img class="hinh-cnsv" src="image/thong-tin-ca-nhan.png" alt="ttcn">Thông tin cá nhân</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'khoa-hoc')"><img class="hinh-cnsv" src="image/chuong-trinhdao-tao.png" alt="ttcn">Khóa học</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'lop-hoc')"><img class="hinh-cnsv" src="image/hoc-phi.png" alt="ttcn" style="width: 11%;">Lớp Học</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'lich-day')"><img class="hinh-cnsv" src="image/thoi khoa bieu.png" alt="ttcn">Lịch giảng dạy</button>

        </div>
    </div>

			<!--get teacher information-->
			<sql:query dataSource="${data}" var="result">
         		select * from teacher where ID =?;
         		<sql:param value="${id}" />
			</sql:query>

	<c:forEach var="row" items="${result.rows}">
		<div class="col-md-9 col-sm-9 nopadding w3-border w3-border-teal">
        <div class="col-md-4"></div>
            <div class="col-md-4 col-sm-4" style="margin-bottom: 20px;margin-left: 70px;margin-top: 10px;">
                <img src="image/avt-3.png" alt="hinh" style="width: 40%;">
                <h4 style="padding-left: 18px;">GV: ${row.Name}</h4>
            </div>
       <div id="thong-tin-ca-nhan" class="w3-container city w3-animate-opacity ">
        <div class="col-md-6 col-sm-6">
            <div class="col-md-12 col-sm-12 nopadding">
                <div class="w3-border-left w3-pale-red w3-border-red w3-panel" style="margin: 0;">
                <b style="color: green;">Thông tin cá nhân</b>
                </div>
            </div>

            <table class="table">
                <thead>

                </thead>
                <tbody>
                    <tr class="active">
                        <td>MSGV:</td>
                        <td>${row.ID}</td>
                    </tr>
                    <tr class="active">
                        <td>Họ và tên:</td>
                        <td>${row.Name}</td>
                    </tr>
                    <tr class="active">
                        <td>Ngày sinh:</td>
                        <td>${row.Dob}</td>
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
        </div>

        <div class="col-md-6 col-sm-6" >
            <div class="col-md-12 nopadding">
                <div class="w3-border-left w3-pale-red w3-border-red w3-panel" style="margin: 0;">
                    <b style="color: green;">Thông tin liên lạc</b>
                </div>
                <table class="table">
                    <thead></thead>
                    <tbody>
                        <tr class="active">
                            <td>Di động:</td>
                            <td>${row.Phonenumber}</td>
                        </tr>
                        <tr class="active">
                            <td>Email:</td>
                            <td>${row.email}</td>
                        </tr>
                        <tr class="active">
                            <td>Địa chỉ:</td>
                            <td>${row.Address}</td>
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
    </div>
	</c:forEach>

    

		<!--get teacher information-->
			<sql:query dataSource="${data}" var="result">
         		select coures.Name, class.ID, class.tuition_time, class.Begin_time, room.location from coures, teacher, room, class 
where class.Coures_ID = coures.ID and class.Room_ID = room.ID and class.Teacher_ID = teacher.ID and teacher.ID =?;
         		<sql:param value="${id}" />
			</sql:query>
     <!--Khóa Học-->
     	<div id="khoa-hoc" class="w3-container city w3-animate-opacity " style="display:none">
                <h2 style="text-align: center;color: red;">CÁC KHÓA HỌC GIẢNG DẠY</h2>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr class="success">
                            <th>Khóa</th>
                            <th>Lớp</th>
                            <th>Thời Gian</th>
                            <th>Ngày Khai Giảng</th>
                            <th>Địa Điểm</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="row" items="${result.rows}">
                    <tr class="active">
                        <td>${row.Name }</td> 
                        <td title="click để xem thông tin lớp"><a href="#">${row.ID}</a></td>
                        <td>${row.tuition_time }</td>
                        <td>${row.Begin_time }</td>
                        <td>${row.location}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
          
          
        <c:if test="${thongbao eq 1 }">
		<script type="text/javascript">
		alert("Thành công");
		</script>
		</c:if>
		
		<c:if test="${thongbao eq 0 }">
		<script type="text/javascript">
		alert("Thất bại");
		</script>
		</c:if>
          
    <!--Lớp học-->
            <div id="lop-hoc" class="w3-container city w3-animate-opacity " style="display:none">
                <div class="col-md-8" style="height: 550px;">
                    <form >
                      <textarea name="ten" id="ten"></textarea>
                      <script>CKEDITOR.replace('ten');</script>
                  </form>
                  <button class="btn btn-info" style="float: right;" data-toggle="modal" data-target="#md-thong-bao">Post</button>
                </div>
                <div class="col-md-4">
                    <form action="capnhatdiem" method="post">
                        <div class="form-group">
                          <label for="sel1">Chọn lớp học:</label>
                          <select class="form-control" id="sel1" name="makh">
                            <option>KTVW1</option>
                            <option>KTVW2</option>
                            <option>KTVW3</option>
                        </select>
                        <br />
                    </div>
       
                <br />
                <div class="w3-row-padding">
                    <label for="nd1">Nhập Điểm:</label>
                    <input id="nd1" class="w3-input w3-border" type="text" placeholder="MSSV" name="mssv"><br>
                    <input class="w3-input w3-border" type="text" placeholder="Điểm giữa kỳ" name="giuaky"><br>
                    <input class="w3-input w3-border" type="text" placeholder="Điểm cuối kỳ" name="cuoiky"><br>
                    <button class="btn btn-info" style="float: right;" type="submit">Cập nhật</button>
                </div>
                </form>
                </div>
            </div>

            <!--Lịch giảng dạy-->
            <div id="lich-day" class="w3-container city w3-animate-opacity " style="display:none">
                <h2 style="text-align: center;color: red;">LỊCH GIẢNG DẠY</h2>
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
                            <td class="warning">Khóa: Kỹ thuật viên thiết kế web <br />
                                Lớp: KTVW - 01 <br />
                                Giờ: 13h30 - 16h45</td>
                            <td></td>
                            <td class="danger">Khóa: Kỹ thuật viên thiết kế web <br />
                                13h30 - 16h45Lớp: KTVW - 01 <br />
                                Giờ: 13h30 - 16h45</td>
                            <td></td>
                            <td class="info">Khóa: Kỹ thuật viên thiết kế web <br />
                                Lớp: KTVW - 01 <br />
                                Giờ: 13h30 - 16h45</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Cơ sở 1</td>
                            <td class="info">Khóa :Thiết kế giao diện web <br />
                                Lớp: MTWCC_235S246 <br />
                                Giờ: 08h00 - 11h00 </td>
                            <td></td>
                            <td class="warning">Khóa :Thiết kế giao diện web <br />
                                Lớp: MTWCC_235S246 <br />
                                Giờ: 08h00 - 11h00 </td>
                            <td></td>
                            <td class="success">Khóa :Thiết kế giao diện web <br />
                                Lớp: MTWCC_235S246 <br />
                                Giờ: 08h00 - 11h00 </td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
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

<!-- Modal2 -->
    <div class="modal fade" id="md-thong-bao" role="dialog">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Thông báo</h4>
          </div>
          <div class="modal-body">
              <p>Đăng thành công!</p>
          </div>
          <div class="modal-footer">
              <a href="TrangChu"><button type="button" class="btn btn-default" data-dismiss="modal">close</button></a>
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
 