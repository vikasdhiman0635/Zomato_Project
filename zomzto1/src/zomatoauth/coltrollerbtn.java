package zomatoauth;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.swing.text.html.HTMLDocument.HTMLReader.HiddenAction;

import com.sun.net.httpserver.HttpsConfigurator;

import Zomatofile.AdminManu;
import Zomatofile.Userprofilerew;
import Zomatofile.Zomatocity;
import Zomatofile.Zomatofile;
import Zomatofile.Zomatoforget;
import Zomatofile.Zomatoregistration;
import Zomatofile.cart;
import controller.Zomatocontroller;
import javafx.scene.control.Alert;
import oracle.jdbc.pool.OracleDataSource;

/**
 * Servlet implementation class coltrollerbtn
 */
@WebServlet("/coltrollerbtn")
public class coltrollerbtn extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Connection con=null;
	PreparedStatement stmt=null;
	ResultSet rset=null;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	
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
	
	
    public coltrollerbtn() {
        super();
        // TODO Auto-generated constructor stub
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
		try {
			stmt=con.prepareStatement("select * from userRegistration where USERNAME=? and PASSWORD=?");
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
		String strbtn=request.getParameter("btn");
		if(strbtn.equals("Login"))
		{
			String strunm,strpwd;
			strunm=request.getParameter("txtusername");
			strpwd=request.getParameter("txtpwd");
			try
			{
				stmt.setString(1, strunm);
				stmt.setString(2, strpwd);
				rset=stmt.executeQuery();
				if(rset.next())
				{					
					if(strunm.equals("sweety") && strpwd.equals("icsd"))
					{
						HttpSession session=request.getSession();
						session.setAttribute("unm", strunm);
						response.sendRedirect(request.getContextPath()+"/AdminHomepage.jsp?unm="+strunm+"&pwd="+strpwd);
					}
					else
					{
						HttpSession session=request.getSession();
						session.setAttribute("unm", strunm);
						
						System.out.println("connection insert");
						response.sendRedirect(request.getContextPath()+"/User.jsp?unm="+strunm+"&pwd="+strpwd);
						System.out.println("connection got");
					}
				}
				else
				{
					response.sendRedirect(request.getContextPath()+"/Errorpage");
				}
			}catch(SQLException e)
			
			{
				e.printStackTrace();
			}
		}
		else if(strbtn.equals("Registration"))
		{
			response.sendRedirect(request.getContextPath()+"/Registration.jsp");
		}
		else if(strbtn.equals("Id Created"))
		{
			String strfirstname,strlastname,strmobileno,stremailid,strusername,strpassword;
			strfirstname=request.getParameter("txtfirstname");
			strlastname=request.getParameter("txtLastname");
			strmobileno=request.getParameter("txtMobileno");
			stremailid=request.getParameter("txtEmailid");
			strusername=request.getParameter("txtusername");
			strpassword=request.getParameter("txtpassword");
			Zomatocontroller objDao=new Zomatocontroller();
			Zomatoregistration e3=new Zomatoregistration(strfirstname,strlastname,strmobileno,stremailid,strusername,strpassword);
			int res=objDao.UserRegisterhear(e3);
			System.out.println(e3+"hhhhhhhhhhhhhhhhhh");
			if(res!=0)
			{
				response.sendRedirect(request.getContextPath()+"/Login.jsp?unm="+strusername+"&pwd="+strpassword);
			}
			else
			{
				out.println("id not created");
			}
		}
		else if(strbtn.equals("Food Inserted"))
		{
			int intfoodcost;
			String strfoodid,strfoodname,strfoodmessage,strfoodtime,strcostmessage,strrating,strimage;
			strfoodid=request.getParameter("txtid");
			strfoodname=request.getParameter("txtname");
			strfoodmessage=request.getParameter("txtmessage");
			intfoodcost=Integer.parseInt(request.getParameter("txtcost"));
			strfoodtime=request.getParameter("txttime");
			strcostmessage=request.getParameter("txtcostmessage");
			strrating=request.getParameter("txtfoodrating");
			strimage=request.getParameter("txtfoodimage");
			Zomatocontroller objDao=new Zomatocontroller();
			AdminManu e2=new AdminManu(strfoodid,strfoodname,strfoodmessage,strimage,strfoodtime,strcostmessage,strrating,intfoodcost);
			int res=objDao.Admininsert(e2);
			System.out.println(e2+"hhhhhhhhhhhhhhhhhh");
			if(res!=0)
			{
				out.println("data inserted");
			}
			else
			{
				out.println("data not inserted");
			}
		}
		else if(strbtn.equals("Food Deleted"))
		{
			String strfoodid;
			strfoodid=request.getParameter("txtid");
			System.out.println("the empno"+strfoodid);
			Zomatocontroller objdao=new Zomatocontroller();
			int res=objdao.deleteintotblfood(strfoodid);
			if(res!=0)
			{
				out.println("data deleted");
			}
			else
			{
				out.println("data not deleted");
			}
		}
		else if(strbtn.equals("Food Updated"))
		{
			int intfoodcost;
			String strfoodid,strfoodname,strfoodmessage,strfoodtime,strcostmessage,strrating,strimage;
			strfoodid=request.getParameter("txtid");
			strfoodname=request.getParameter("txtname");
			strfoodmessage=request.getParameter("txtmessage");
			intfoodcost=Integer.parseInt(request.getParameter("txtcost"));
			strfoodtime=request.getParameter("txttime");
			strcostmessage=request.getParameter("txtcostmessage");
			strrating=request.getParameter("txtfoodrating");
			strimage=request.getParameter("txtfoodimage");
			Zomatocontroller objDao=new Zomatocontroller();
			AdminManu e4=new AdminManu(strfoodid,strfoodname,strfoodmessage,strimage,strfoodtime,strcostmessage,strrating,intfoodcost);
			int res=objDao.Adminupdate(e4);
			System.out.println(e4+"hhhhhhhhhhhhhhhhhh");
			if(res!=0)
			{
				out.println("data updated");				
			}
			else
			{
				out.println("data not updated");
			}
		}
		
		else if(strbtn.equals("search"))
		{
			String strsearch;
			strsearch=request.getParameter("txtsearch");
			String strunm=request.getParameter("unm");
			try
			{
				Connection con=getDBCon();
				PreparedStatement stmt=con.prepareStatement("select * from CITY where CITY=?");
				stmt.setString(1, strsearch);
				rset=stmt.executeQuery();
				if(rset.next())
				{
//					out.println("data in database");
					Zomatocontroller objdao=new Zomatocontroller();
					LinkedList<AdminManu> lst=objdao.getfoodid();
					ServletContext context=getServletContext();
					context.setAttribute("lst1", lst);
					HttpSession session=request.getSession();
					session.setAttribute("unm", strunm);
					RequestDispatcher rd=request.getRequestDispatcher("/userpage.jsp");
					rd.forward(request, response);
				}
				else
				{
					out.println("data not in database");
				}
				//con.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		else if(strbtn.equals("Change Password"))
		{
			String strunm,strcpwd;
			strunm=request.getParameter("txtusername");
			strcpwd=request.getParameter("txtcpwd");
			Zomatocontroller objDao=new Zomatocontroller();
			Zomatoforget e7=new Zomatoforget(strunm,strcpwd);
			int res=objDao.forgetpassword(e7);
			System.out.println(e7+"hhhhhhhhhhhhhhhhhh");
			if(res!=0)
			{
				out.println("password change");
//				JOptionPane.showMessageDialog(null, "Password changed");
			}
			else
			{
				out.println("password not changed");
			}
		}
		else if(strbtn.equals("Payment"))
		{
			response.sendRedirect(request.getContextPath()+"/paymentmethod.jsp");
		}
		else if(strbtn.equals("Credit/Debit Card"))
		{
			response.sendRedirect(request.getContextPath()+"/Creditbtn.jsp");
		}
		else if(strbtn.equals("Net Banking"))
		{
			response.sendRedirect(request.getContextPath()+"/netbanking.jsp");
		}
		else if(strbtn.equals("Payment by Transfer"))
		{
			response.sendRedirect(request.getContextPath()+"/dontpayment.jsp");
		}
		else if(strbtn.equals("Proceed"))
		{
			response.sendRedirect(request.getContextPath()+"/Bill.jsp");
		}
		else if(strbtn.equals("Pay"))
		{
			String strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcard,strdate,strcvv,strpwd;
			int intcost,intqty;
			
			strid=request.getParameter("id");	
			strname=request.getParameter("name");
			strimage=request.getParameter("image");
			strfmessage=request.getParameter("fmessage");
			strcmessage=request.getParameter("cmessage");
			intcost=Integer.parseInt(request.getParameter("cost"));
			strtime=request.getParameter("time");
			intqty=Integer.parseInt(request.getParameter("qty"));
			strcardname=request.getParameter("cardname");
			strcard=request.getParameter("cardno");
			strdate=request.getParameter("date");
			strcvv=request.getParameter("cvv");
			strpwd=request.getParameter("pwd");
			String strunm=request.getParameter("unm");
			System.out.println("hello world");
			Zomatocontroller objDao=new Zomatocontroller();
			cart e11=new cart(strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcard,strdate,strcvv,strpwd,intcost,intqty,strunm);
			System.out.println(e11);
			int res=objDao.cart(e11);
			System.out.println(res);
			if(res!=0)
			{	
				HttpSession session=request.getSession();
				session.setAttribute("id", strid);
				System.out.println(strid);
				session.setAttribute("foodname", strname);
				System.out.println(strname);
				session.setAttribute("image", strimage);
				System.out.println(strimage);
				session.setAttribute("foodmessage", strfmessage);
				session.setAttribute("costmessage", strcmessage);
				session.setAttribute("cost", intcost);
				session.setAttribute("time", strtime);
				session.setAttribute("qty", intqty);
				session.setAttribute("cardname", strcardname);
				session.setAttribute("cardno", strcard);
				session.setAttribute("date", strdate);
				session.setAttribute("cvv", strcvv);
				session.setAttribute("pwd", strpwd);
				session.setAttribute("unm", strunm);
				response.sendRedirect(request.getContextPath()+"/Bill.jsp?id="+strid+"&foodname="+strname+"&image="+strimage+"&foodmessage="+strfmessage+"&costmessage="+strcmessage+"&cost="+intcost+"&time="+strtime+"&qty="+intqty+"&cardname="+strcardname+"&cardno="+strcard+"&date="+strdate+"&cvv="+strcvv+"&pwd="+strpwd+"&unm="+strunm);
			}
			else
			{
				out.println("data not inserted");
			}
		}
		else if(strbtn.equals("searchh"))
		{
			String strsearch;
			strsearch=request.getParameter("txtsearch");
			
			try
			{
				Connection con=getDBCon();
				PreparedStatement stmt=con.prepareStatement("select * from city where CITY=?");
				stmt.setString(1, strsearch);
				rset=stmt.executeQuery();
				if(rset.next())
				{
//					out.println("data in database");
					Zomatocontroller objdao=new Zomatocontroller();
					LinkedList<AdminManu> lst=objdao.getfoodid();
					ServletContext context=getServletContext();
					context.setAttribute("lst1", lst);
					RequestDispatcher rd=request.getRequestDispatcher("/userhomepage.jsp");
					rd.forward(request, response);
				}
				else
				{
					out.println("data not in database");
				}
				//con.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		else if(strbtn.equals("Login Here"))
		{
			response.sendRedirect(request.getContextPath()+"/Login.jsp");
		}
	}
}