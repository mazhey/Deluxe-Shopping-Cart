package shoppingCartLogin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Shoppinguser;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LogoutServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException
	{
		HttpSession session = request.getSession();
		Shoppinguser u = (Shoppinguser) session.getAttribute("myUser");
		//System.out.println(u.getFullname());
		u = null;
		//session.setAttribute("loginFlag", false);
		
		session.setAttribute("myUser", u);
		//session.invalidate();
		try {
//			getServletContext().getRequestDispatcher("/Index.html").forward(request, response);
			response.sendRedirect("http://localhost:8080/ShoppingCartLogin/Index.html");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
