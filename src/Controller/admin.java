package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Account;
import DAO.DBAccount;

/**
 * Servlet implementation class admin
 */
@WebServlet("/TrangQuanTri")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("thongbao", -1);
		request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,
				response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username = (String) request.getParameter("username");
		String pass = (String) request.getParameter("pass");
		String option = (String) request.getParameter("option");

		Account ac = new Account();
		ac.setID(username);
		ac.setPass(pass);
		if (option.equals("1")) {
			ac.setType("Admin");
		}
		else if(option.equals("2")){
			ac.setType("GiangVien");
		}
		else if(option.equals("3")){
			ac.setType("HocVien");
		}
		DBAccount db = new DBAccount();
		try {
			if (db.themtaikhoan(ac)) {
				request.getSession().setAttribute("thongbao", 1);
			} else
				request.getSession().setAttribute("thongbao", 0);
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
