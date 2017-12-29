
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
  <title>Trang Admin</title>
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

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'tai-khoan')"><img class="hinh-cnsv" src="image/chuong-trinhdao-tao.png" alt="ttcn">Quản Lý Tài Khoản</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'lop-hoc')"><img class="hinh-cnsv" src="image/hoc-phi.png" alt="ttcn" style="width: 11%;">Quản Lý Khóa Học</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'ds-hv')"><img class="hinh-cnsv" src="image/thoi khoa bieu.png" alt="ttcn">Danh Sách Học Viên</button>

            <button class="w3-bar-item w3-button tablink" onclick="openTab(event, 'ds-gv')"><img class="hinh-cnsv" src="image/thoi khoa bieu.png" alt="ttcn">Danh Sách Giảng Viên</button>

        </div>
    </div>

    <div class="col-md-9 col-sm-9 nopadding w3-border w3-border-teal">
        <div class="col-md-4"></div>
            <div class="col-md-4 col-sm-4" style="margin-bottom: 20px;margin-left: 70px;margin-top: 10px;">
                <img src="image/avt-3.png" alt="hinh" style="width: 40%;">
                <h4 style="padding-left: 18px;">GV: ABC</h4>
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
                        <td>GV001</td>
                    </tr>
                    <tr class="active">
                        <td>Họ và tên:</td>
                        <td>ABC</td>
                    </tr>
                    <tr class="active">
                        <td>Ngày sinh:</td>
                        <td>08/08/1997</td>
                    </tr>
                    <tr class="active">
                        <td>Nơi sinh:</td>
                        <td>Hà Nội</td>
                    </tr>
                    <tr class="active">
                        <td>Giới tính:</td>
                        <td>Nam</td>
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

	<c:if test="${thongbao eq 1 }">
		<script type="text/javascript">
		alert("Thêm tài khoản thành công");
		</script>
	</c:if>	
	<c:if test="${thongbao eq 0 }">
		<script type="text/javascript">
		alert("Tên đăng nhập hoặc mật khẩu đã tồn tại");
		</script>
	</c:if>	
	<c:if test="${thongbao eq 3 }">
		<script type="text/javascript">
		alert("Xóa tài khoản thành công");
		</script>
	</c:if>	
	<c:if test="${thongbao eq 4 }">
		<script type="text/javascript">
		alert("Tên đăng nhập không tồn tại");
		</script>
	</c:if>	
	<c:if test="${thongbao eq 5 }">
		<script type="text/javascript">
		alert("Đây là tài khoản của bạn");
		</script>
	</c:if>	
	
	<c:if test="${thongbao eq 6 }">
		<script type="text/javascript">
		alert("Thêm Khóa học Thành Công!");
		</script>
	</c:if>
	
	<c:if test="${thongbao eq 7 }">
		<script type="text/javascript">
		alert("Thêm Khóa học thất bại");
		</script>
	</c:if>		
	
	<c:if test="${thongbao eq 8 }">
		<script type="text/javascript">
		alert("Xóa khóa học thành công");
		</script>
	</c:if>
    
    <c:if test="${thongbao eq 9 }">
		<script type="text/javascript">
		alert("Xóa khóa học thất bại");
		</script>
	</c:if>
	
	<c:if test="${thongbao eq 10 }">
		<script type="text/javascript">
		alert("Thành công");
		</script>
	</c:if>
	
	<c:if test="${thongbao eq 11 }">
		<script type="text/javascript">
		alert("Thất bại");
		</script>
	</c:if>
     <!--Tài Khoản-->
            <div id="tai-khoan" class="w3-container city w3-animate-opacity " style="display:none">
                  <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#them-tk">Thêm tài Khoản</a></li>
                    <li><a data-toggle="tab" href="#xoa-tk">Xóa tài Khoản</a></li>
                </ul>

                <div class="tab-content">
                    <div id="them-tk" class="tab-pane fade in active">
                        <div class="w3-card-4">
                            <div class="w3-container w3-blue">
                              <h2>Vui lòng nhập thông tin</h2>
                          </div>
					
                          <form class="w3-container" action="TrangQuanTri" method="post">
                              <p>
                                  <input class="w3-input" type="text" name="username">
                                  <label>Tên đăng nhập</label></p>
                                  <p>     
                                      <input class="w3-input" type="text" name="pass" >
                                      <label>Mật Khẩu</label></p>
                                      <p>
                                          <input class="w3-radio" type="radio" name="gender" value="male" checked>
                                          <label>Nam</label></p>
                                          <p>
                                              <input class="w3-radio" type="radio" name="gender" value="female">
                                              <label>Nữ</label></p>
                                              <p>
                                                  <input class="w3-radio" type="radio" name="gender" value="">
                                                  <label>Khác</label></p>
                                                  <select class="w3-select" name="option">
                                                      <option value="" disabled selected>Phân quyền</option>
                                                      <option value="1">Admin</option>
                                                      <option value="2">Giảng Viên</option>
                                                      <option value="3">Học viên</option>
                                                  </select>
                                                  <hr/>
                                                  <button class="w3-btn w3-blue-grey" type="submit">Tạo tài khoản</button>
                                              </form>
                                          </div>
                  </div>
                  <div id="xoa-tk" class="tab-pane fade">
                   <div class="w3-card-4">
                    <div class="w3-container w3-blue">
                      <h2>Vui lòng nhập tên đăng nhập để xóa tài khoản</h2>
                  </div>

                  <form class="w3-container" action="xoataikhoan" method="post">
                    <input class="w3-input" type="text" name="username">
                    <p>
                      <label>Tên Đăng Nhập</label></p>
                      <select class="w3-select" name="option">
                          <option value="" disabled selected>Chọn Phân quyền</option>
                          <option value="1">Admin</option>
                          <option value="2">Giảng Viên</option>
                          <option value="3">Học viên</option>
                      </select>
                      <p></p>
                      <button class="w3-btn w3-blue-grey" type="submit">Xóa tài khoản</button>
                  </form>
              </div>
                  </div>
              </div>
            </div>
    <!--Lớp học-->
            <div id="lop-hoc" class="w3-container city w3-animate-opacity " style="display:none">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#them-kh">Tạo Khóa học</a></li>
                    <li><a data-toggle="tab" href="#xoa-kh">Xóa Khóa học</a></li>
                    <li><a data-toggle="tab" href="#sua-kh">Sửa Khóa học</a></li>
                </ul>

                <div class="tab-content">
                    <div id="them-kh" class="tab-pane fade in active">
                        <div class="w3-card-4">
                            <div class="w3-container w3-blue">
                              <h2>Vui lòng nhập thông tin</h2>
                          </div>

                          <form class="w3-container" action="themkhoahoc" method="post">
                            <p>     
                                      <input class="w3-input" type="text" name="makh">
                                      <label>Mã Khóa học</label></p>
                              <p>
                                  <input class="w3-input" type="text" name="tenkh">
                                  <label>Tên Khóa học</label></p>
                                      <p>     
                                      <input class="w3-input" type="text" name="begindate">
                                      <label>Ngày bắt đầu</label></p>
                                      <p>     
                                      <input class="w3-input" type="text" name="enddate">
                                      <label>Ngày Kết thúc</label></p>
                                      <p>     
                                      <input class="w3-input" type="text" name="fee">
                                      <label>Học phí</label></p>
                                                  <hr/>
                                                  <button class="w3-btn w3-blue-grey" type="submit">Tạo khóa học</button>
                                              </form>
                                          </div>
                    </div>
                    <div id="xoa-kh" class="tab-pane fade in">
                        <div class="w3-card-4">
                            <div class="w3-container w3-blue">
                              <h2>Vui lòng nhập thông tin</h2>
                          </div>

                          <form class="w3-container" action="Xoakhoahoc" method="post">
                            <p>     
                                      <input class="w3-input" type="text" name="makh">
                                      <label>Mã Khóa học</label></p>
                                                  <hr/>
                                      <button class="w3-btn w3-blue-grey" type="submit">Xóa khóa học</button>
                            </form>
                        </div>

                    </div>
                    <div id="sua-kh" class="tab-pane fade in">
                        <div class="w3-card-4">
                            <div class="w3-container w3-blue">
                              <h2>Vui lòng nhập thông tin</h2>
                          </div>

                          <form class="w3-container" action="suakhoahoc" method="post">
                            <p>     
                                      <input class="w3-input" type="text" name="makh">
                                      <label>Mã Khóa học</label></p>
                              <p>
                                  <input class="w3-input" type="text" name="tenkh">
                                  <label>Tên Khóa học</label></p>
                                      <p>     
                                      <input class="w3-input" type="text" name="begindate">
                                      <label>Ngày bắt đầu</label></p>
                                      <p>     
                                      <input class="w3-input" type="text" name="enddate">
                                      <label>Ngày Kết thúc</label></p>
                                      <p>     
                                      <input class="w3-input" type="text" name="fee">
                                      <label>Học phí</label></p>
                                                  <hr/>
                                                  <button class="w3-btn w3-blue-grey" type="submit">Sửa khóa học</button>
                                              </form>
                                          </div>

                    </div>
                </div>
            </div>

            <!--Danh sách gv-->
            <div id="ds-gv" class="w3-container city w3-animate-opacity " style="display:none">
                <a href="https://drive.google.com/file/d/1-UQNkF5vHcQlMc8XKQwNbHYfGdj9owTg/view?usp=sharing">Danh sách giảng viên trung tâm</a>
            </div>
            <!--Danh sách hv-->
            <div id="ds-hv" class="w3-container city w3-animate-opacity " style="display:none">
                <a href="https://drive.google.com/file/d/1wXqAPqVLQZxerKTnLWQYBxRCuwT_l7Lb/view?usp=sharing">Danh sách học viên trung tâm</a>
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
 