package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Account;
import DAO.DBAccount;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		String id = (String)request.getParameter("id");
		String psw = (String)request.getParameter("psw");
		
		Account sv = new Account();
		sv.setID(id);
		sv.setPass(psw);
		
		DBAccount db = new DBAccount();
		try {
			if(sv.getPass().equals(db.GetPass(sv))){
				request.getSession().setAttribute("id", sv.getID());
				if(db.GetType(sv).equals("HocVien"))
				request.getRequestDispatcher("/WEB-INF/sinhvien.jsp").forward(request, response);
				else if(db.GetType(sv).equals("GiangVien"))
					request.getRequestDispatcher("/WEB-INF/GiangVien.jsp").forward(request, response);
				else
					request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
			}
			else
			{  request.getSession().setAttribute("thongbao", 0);
				request.getRequestDispatcher("/WEB-INF/TrangChu.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
