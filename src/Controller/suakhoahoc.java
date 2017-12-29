package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Coures;
import DAO.DBCoures;


@WebServlet("/suakhoahoc")
public class suakhoahoc extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public suakhoahoc() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("thongbao", -1);
		request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String makh = (String) request.getParameter("makh");
		String tenkh = (String) request.getParameter("tenkh");
		String begindate = (String) request.getParameter("begindate");
		String enddate = (String) request.getParameter("enddate");
		float fee = Float.parseFloat(request.getParameter("fee"));
		
		//gán dữ liệu từ web
		Coures cs = new Coures();
		cs.setID(makh);
		cs.setName(tenkh);
		cs.setBegin_Time(begindate);
		cs.setEnd_time(enddate);
		cs.setTuition_fee(fee);
		DBCoures db = new DBCoures();
		try {
			if (db.suakhoahoc(cs)) {
				request.getSession().setAttribute("thongbao", 10);
			} else
				request.getSession().setAttribute("thongbao", 11);
				request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
