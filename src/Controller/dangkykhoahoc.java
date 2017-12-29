package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Coures;
import Bean.lophoc;
import DAO.DBCoures;
import DAO.DBLophoc;


@WebServlet("/dangkykhoahoc")
public class dangkykhoahoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public dangkykhoahoc() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("thongbao", -1);
		request.getRequestDispatcher("/WEB-INF/dkmh.jsp").forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String makh = (String) request.getParameter("makh");
		String begintime = (String) request.getParameter("begin_time");
		String teacherid = (String) request.getParameter("teacherid");
		String couresid = (String) request.getParameter("couresid");
		String roomid = (String) request.getParameter("roomid");
		String tuition_time = (String) request.getParameter("tuition_time");
		String studentid = (String) request.getParameter("studentid");
		
		//bước gán dữ liệu từ web
		lophoc lh = new lophoc();
		lh.setCoures_ID(makh);
		lh.setBegin_time(begintime);
		lh.setTeacher_ID(teacherid);
		lh.setCoures_ID(couresid);
		lh.setRoom_ID(roomid);
		lh.setTuition_time(tuition_time);
		lh.setStudent_ID(studentid);
		DBLophoc db = new DBLophoc();
		try {
			if (db.themkhoahoc(lh)) {
				request.getSession().setAttribute("thongbao", 1);
			} else
				request.getSession().setAttribute("thongbao", 0);
			request.getRequestDispatcher("/WEB-INF/dkmh.jsp").forward(request,
					response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
