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

@WebServlet("/xoataikhoan")
public class xoataikhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public xoataikhoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username = (String) request.getParameter("username");
		
		//không được xóa tài khỏan đang được đăng nhập
		if(request.getSession().getAttribute("id").equals(username))
		{
			request.getSession().setAttribute("thongbao", 5);
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,
					response);
			return;
		}
		
		Account ac = new Account();
		ac.setID(username);
		
		DBAccount db = new DBAccount();
		try {
			if (db.xoataikhoan(ac)) {
				request.getSession().setAttribute("thongbao", 3);
			} else
				request.getSession().setAttribute("thongbao", 4);
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,
					response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
