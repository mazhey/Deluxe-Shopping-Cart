package shoppingCartLogin;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Lineitem;
import model.Product;

/**
 * Servlet implementation class adminServlet
 */
@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public adminServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAdmin(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAdmin(request,response);
	}

	public void processAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = shoppingCartLogin.DBUtil.getEmFactory().createEntityManager();
		String qString = "select q from Lineitem q ";
		TypedQuery<Lineitem> q = em.createQuery(qString, Lineitem.class);
	
		
		List<Lineitem> lineitemList = null;
		
		String tableinfo  = "";
		try{
			lineitemList =q.getResultList();

			
			for(int i=0;i<lineitemList.size();i++){
			
			
		tableinfo += "<tr><td>" + lineitemList.get(i).getProductDate()+"</td><td>" + lineitemList.get(i).getProductName() + "</td><td>" +lineitemList.get(i).getProductQuantity() +"</td><td>"+lineitemList.get(i).getUserId() +"</td></tr>";
		
			
			}
			}
			catch (Exception e)
			{
				System.out.println(e);
			}
			finally{
				em.close();
				System.out.println("end of product pools");
			}
		request.setAttribute("tableinfo", tableinfo);
		
	     getServletContext()
	     	.getRequestDispatcher("/Admin.jsp")
	     		.forward(request, response);

		}
		
	}
