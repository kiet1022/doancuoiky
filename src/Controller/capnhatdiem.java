package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.teach;
import DAO.DBTeach;

@WebServlet("/capnhatdiem")
public class capnhatdiem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public capnhatdiem() {
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
		String mssv = (String) request.getParameter("mssv");
		float giuaky = Float.parseFloat(request.getParameter("giuaky"));
		float cuoiky = Float.parseFloat(request.getParameter("cuoiky"));
		
		teach tc = new teach();
		tc.setCoures_ID(makh);
		tc.setStudent_ID(mssv);
		tc.setGiuaKy(giuaky);
		tc.setCuoiKy(cuoiky);
		
		DBTeach db = new DBTeach();
		try {
			if (db.capnhatdiem(tc)) {
				request.getSession().setAttribute("thongbao", 1);
			} else
				request.getSession().setAttribute("thongbao", 0);
			request.getRequestDispatcher("/WEB-INF/GiangVien.jsp").forward(request,response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
