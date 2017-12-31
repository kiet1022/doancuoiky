package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Coures;
import Bean.sinhvien;
import DAO.DBCoures;
import DAO.DBSinhvien;


@WebServlet("/suathongtin")
public class suathongtin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public suathongtin() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("thongbao", -1);
		request.getRequestDispatcher("/WEB-INF/sinhvien.jsp").forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String id = (String) request.getParameter("mssv");
		String hoten = (String) request.getParameter("hoten");
		String ngaysinh = (String) request.getParameter("ngaysinh");
		String noisinh = (String) request.getParameter("noisinh");
		String sdt = (String) request.getParameter("sdt");
		//gán dữ liệu từ web
		sinhvien sv = new sinhvien();
		sv.setID(id);
		sv.setName(hoten);
		sv.setDob(ngaysinh);
		sv.setAddress(noisinh);
		sv.setPhonenumber(sdt);
	
		DBSinhvien db = new DBSinhvien();
		try {
			if (db.suathongtin(sv)) {
			} else
				request.getSession().setAttribute("thongbao", 0);
				request.getRequestDispatcher("/WEB-INF/sinhvien.jsp").forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
