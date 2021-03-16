package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.omg.CORBA.Request;

import oracle.jdbc.pool.OracleDataSource;

/**
 * Servlet implementation class authLogin
 */
@WebServlet("/authLogin")
public class authLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	PreparedStatement stmt;
	Connection con;
	ResultSet rset;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public authLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public Connection getDBCon()
    {
    	Connection con=null;
    	OracleDataSource ods;
    	try
    	{
    		ods=new OracleDataSource();
    		ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
    		con=ods.getConnection("zomato","zomato");
    		System.out.println("connection established");
    		
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    	}
    	
    	return con;
    }
    

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException 
	{
		// TODO Auto-generated method stub
		super.init(config);
		con=getDBCon();
		System.out.println("init auth fired");
//		desc reg
//		Name      Null Type         
//		--------- ---- ------------ 
//		FIRSTNAME      VARCHAR2(50) 
//		LASTNAME       VARCHAR2(50) 
//		PASSWORD       VARCHAR2(30) 
//		PHONENO        VARCHAR2(10) 
//

		try {
			con=getDBCon();
			stmt=con.prepareStatement("select * from registration where FIRSTNAME=? and PASSWORD=?");
			System.out.println("init internal fired");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		try{
			if(con!=null)
			{
//				con.close();
			}
			if(stmt!=null)
			{
				stmt.close();
			}
			if(rset!=null)
			{
				rset.close();
			}
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
//		if(strbtn.equals("Login"))
//		{
		String strunm,strpwd;
		strunm=request.getParameter("txtusername");
		strpwd=request.getParameter("txtpwd");
		try{
			stmt.setString(1,strunm);
			stmt.setString(2,strpwd);
			rset=stmt.executeQuery();
			if(rset.next())
			{
				System.out.println("valid users");
				out.println("valid user");
				response.sendRedirect(request.getContextPath()+"/Homepage.jsp");
			}
			else
			{
				System.out.println(strunm+" "+strpwd);
				System.out.println("invalid user");
//				response.sendRedirect(request.getContextPath()+"/ErrorPage");
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}