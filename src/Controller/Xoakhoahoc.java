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


@WebServlet("/Xoakhoahoc")
public class Xoakhoahoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Xoakhoahoc() {
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
		
		Coures cs = new Coures();
		cs.setID(makh);
		
		DBCoures db = new DBCoures();
		try {
			if (db.xoakhoahoc(cs)) {
				request.getSession().setAttribute("thongbao", 8);
			} else
				request.getSession().setAttribute("thongbao", 9);
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,
					response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
