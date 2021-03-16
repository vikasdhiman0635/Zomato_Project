package zomatoauth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.pool.OracleDataSource;

/**
 * Servlet implementation class manucontroller
 */
@WebServlet("/manucontroller")
public class manucontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con;
	PreparedStatement stmt;
	ResultSet rset;
	
	
	public Connection getDBCon()
	{
		Connection con=null;
		try
		{
			OracleDataSource ods=new OracleDataSource();
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
     * @see HttpServlet#HttpServlet()
     */
    public manucontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		con=getDBCon();
//		try
//		{
////			stmt=con.prepareStatement("select * from ZomatoManu where foodid=?");
//			System.out.println("init internal fired");		
//		}
//		catch(SQLException e)
//		{
//			e.printStackTrace();
//		}
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		try
		{
			if(con!=null)
			{
				con.close();
			}
			if(stmt!=null)
			{
				stmt.close();
			}
			if(rset!=null)
			{
				rset.close();
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String strfoodid,strfoodimage,strfoodname,strfoodcost;
		strfoodid=request.getParameter("foodid");
		strfoodimage=request.getParameter("foodimage");
		strfoodname=request.getParameter("foodname");
		strfoodcost=request.getParameter("foodcost");
		out.println(strfoodid);
		out.println(strfoodimage);
		out.println(strfoodname);
		out.println(strfoodcost);
		System.out.println(strfoodid);
	}

}
