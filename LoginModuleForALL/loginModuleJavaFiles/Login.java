package loginModuleJavaFiles;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginDemo")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		PrintWriter out = response.getWriter();
		// Note: you may add here the username and password
		// Fetched from the database, i'm using my name for
		// the demo purpose
		if(uname.equals("ram") && pass.equals("mohan")){
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			RequestDispatcher rd = request.getRequestDispatcher("/LoginModule/home.jsp");
			request.setAttribute("username", uname);
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("/From_Telesko/LoginModule/login.html");
		}
	}

}
