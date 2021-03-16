package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import com.sun.xml.internal.ws.api.addressing.AddressingVersion.EPR;

import Zomatofile.AdminManu;
import Zomatofile.Zomatofile;
import Zomatofile.Zomatoforget;
import Zomatofile.Zomatoregistration;
import Zomatofile.cart;
import Zomatofile.Userprofile;
import Zomatofile.Userprofilerew;
import Zomatofile.Zomatocity;
import oracle.jdbc.pool.OracleDataSource;

public class Zomatocontroller 
{
	public Connection getDBCon()
	 {
		 Connection con=null;
		 try
		 {
			 OracleDataSource ods=new OracleDataSource();
			 ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			 con=ods.getConnection("zomato","zomato");
			 System.out.println("Connection established");
		 }
		 catch(SQLException e)
		 {
			 e.printStackTrace();
		 }
		 
		 return con;
	 }

	public int Loginhear(Zomatofile e1) 
	{
		// TODO Auto-generated method stub
		int res=0;
		Connection con=getDBCon();
		try
		{
//			desc userRegistration
//			Name      Null     Type         
//			--------- -------- ------------ 
//			FIRSTNAME NOT NULL VARCHAR2(50) 
//			LASTNAME  NOT NULL VARCHAR2(50) 
//			MOBILENO  NOT NULL VARCHAR2(50) 
//			EMAILID   NOT NULL VARCHAR2(55) 
//			USERNAME  NOT NULL VARCHAR2(50) 
//			PASSWORD  NOT NULL VARCHAR2(50) 

			PreparedStatement stmt=con.prepareStatement("select * from userRegistration where USERNAME=? and PASSWORD=?");
			stmt.setString(1, e1.getStrunm());
			stmt.setString(2, e1.getStrpwd());
			stmt.executeQuery();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return res;
	}
	
	

	public int Admininsert(AdminManu e2) 
	{
		// TODO Auto-generated method stub
		Connection con=getDBCon();
		int res=0;
		System.out.println("data insert process");
		try
		{
//			desc ZomatoManu
//			Name        Null     Type           
//			----------- -------- -------------- 
//			FOODID      NOT NULL VARCHAR2(50)   
//			FOODNAME             VARCHAR2(50)   
//			FOODMESSAGE          VARCHAR2(80)   
//			FOODCOST             VARCHAR2(50)   
//			FOODTIME             VARCHAR2(50)   
//			COSTMESSAGE          VARCHAR2(650)  
//			RATING               VARCHAR2(50)   
//			IMAGE                VARCHAR2(1000) 

			
			PreparedStatement stmt=con.prepareStatement("insert into ZomatoManu values (?,?,?,?,?,?,?,?)");
			stmt.setString(1, e2.getStrfoodid());
			stmt.setString(2, e2.getStrfoodname());
			stmt.setString(3, e2.getStrfoodmessage());
			stmt.setInt(4, e2.getIntfoodcost());
			stmt.setString(5, e2.getStrfoodtime());
			stmt.setString(6, e2.getStrcostmessage());
			stmt.setString(7, e2.getStrrating());
			stmt.setString(8, e2.getStrimage());
			res=stmt.executeUpdate();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return res;
	}

	public int UserRegisterhear(Zomatoregistration e3) 
	{
		int res=0;
		Connection con=getDBCon();
		try
		{
			PreparedStatement stmt=con.prepareStatement("insert into userRegistration values(?,?,?,?,?,?)");
			stmt.setString(1, e3.getStrfirstname());
			stmt.setString(2, e3.getStrlastname());
			stmt.setString(3, e3.getStrmobileno());
			stmt.setString(4, e3.getStremailid());
			stmt.setString(5, e3.getStrusername());
			stmt.setString(6, e3.getStrpassword());
			res=stmt.executeUpdate();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return res;
	}

	public int deleteintotblfood(String strfoodid) 
	{
		// TODO Auto-generated method stub
		int res=0;
		Connection con=getDBCon();
		try
		{
			PreparedStatement stmt=con.prepareStatement("delete from ZomatoManu where foodid=?");
			stmt.setString(1, strfoodid);
			res=stmt.executeUpdate();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return res;
	}

	public int Adminupdate(AdminManu e4) 
	{
		// TODO Auto-generated method stub 
		Connection con=getDBCon();
		int res=0;
		try{
			PreparedStatement stmt=con.prepareStatement("update ZomatoManu set foodname=?,Foodmessage=?,foodcost=?,foodtime=?,costmessage=?,rating=?,image=? where Foodid=?");
			stmt.setString(1, e4.getStrfoodname());
			stmt.setString(2, e4.getStrfoodmessage());
			stmt.setInt(3, e4.getIntfoodcost());
			stmt.setString(4, e4.getStrfoodtime());
			stmt.setString(5, e4.getStrcostmessage());
			stmt.setString(6, e4.getStrrating());
			stmt.setString(7, e4.getStrimage());
			stmt.setString(8, e4.getStrfoodid());
			res=stmt.executeUpdate();
			con.close();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return res;
	}

	public LinkedList<AdminManu> getfoodid() 
	{
		// TODO Auto-generated method stub
		LinkedList<AdminManu> lst=new LinkedList<>();
		Connection con=getDBCon();
		try 
		{
			PreparedStatement stmt=con.prepareStatement("select * from ZomatoManu");
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
//				desc ZomatoManu
//				Name        Null     Type          
//				----------- -------- ------------- 
//				FOODID      NOT NULL VARCHAR2(50)  
//				FOODNAME             VARCHAR2(50)  
//				FOODMESSAGE          VARCHAR2(80)  
//				FOODCOST             NUMBER(10)    
//				FOODTIME             VARCHAR2(50)  
//				COSTMESSAGE          VARCHAR2(650) 
//				RATING               VARCHAR2(50)  
//				IMAGE                VARCHAR2(100) 

				String strfoodid,strfoodname,strfoodmessage,strfoodtime,strcostmessage,strrating,strimage;
				int intfoodcost;
				strfoodid=rset.getString("FOODID");
				strfoodname=rset.getString("FOODNAME");
				strfoodmessage=rset.getString("FOODMESAGE");
				strfoodtime=rset.getString("FOODTIME");
				strcostmessage=rset.getString("COSTMESSAGE");
				strrating=rset.getString("RATING");
				strimage=rset.getString("IMAGE");
				intfoodcost=rset.getInt("FOODCOST");
				
				AdminManu e5=new AdminManu(strfoodid,strfoodname,strfoodmessage,strfoodtime,strcostmessage,strrating,strimage,intfoodcost);
				lst.add(e5);
				System.out.println(e5);
			}
			con.close();
			}catch(SQLException e)
			{
			e.printStackTrace();
			// TODO Auto-generated method stub
			}
		return lst;
	}

	public LinkedList<Userprofilerew> getloginprofile() 
	{
		// TODO Auto-generated method stub
		Connection con=getDBCon();
		LinkedList<Userprofilerew> lst1=new LinkedList<>();
		System.out.println("35vsduytykfbWFEBNWE");
		try 
		{
			System.out.println("connectiongethn");
			PreparedStatement stmt=con.prepareStatement("select * from userRegistration");
			ResultSet rset=stmt.executeQuery();
			System.out.println("conn1326454987");
			if(rset.next())
			{
//				desc userRegistration
//				Name      Null     Type         
//				--------- -------- ------------ 
//				FIRSTNAME NOT NULL VARCHAR2(50) 
//				LASTNAME  NOT NULL VARCHAR2(50) 
//				MOBILENO  NOT NULL VARCHAR2(50) 
//				EMAILID   NOT NULL VARCHAR2(55) 
//				USERNAME  NOT NULL VARCHAR2(50) 
//				PASSWORD  NOT NULL VARCHAR2(50) 


				String strusername;
				strusername=rset.getString("USERNAME");
			
				System.out.println("486532566532656852");
				Userprofilerew e6=new Userprofilerew(strusername);
				lst1.add(e6);
				System.out.println(e6);
			}
			con.close();
			}catch(SQLException e)
			{
			e.printStackTrace();
			// TODO Auto-generated method stub
			}
		return lst1;
	}

	public int forgetpassword(Zomatoforget e7) 
	{
		// TODO Auto-generated method stub
		Connection con=getDBCon();
		int res=0;
		try{
			PreparedStatement stmt=con.prepareStatement("update userRegistration set password=? where username=?");
			stmt.setString(1, e7.getStrcpwd());
			stmt.setString(2, e7.getStrunm());			
			res=stmt.executeUpdate();
			con.close();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return res;
	}

	public int cityes(Zomatocity e8) 
	{
		// TODO Auto-generated method stub
		int res=0;
		Connection con=getDBCon();
		try
		{
			PreparedStatement stmt=con.prepareStatement("select * from city where CITY=?");
			stmt.setString(1, e8.getStrsearch());
			stmt.executeQuery();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return res;
	}

	public int cart(cart e11) 
	{
		// TODO Auto-generated method stub
		int res=0;
		//System.out.println("sdfjgb");
		Connection con=getDBCon();
		try
		{
			
//			insert into zomatocart values(01,'hhds','dnbn',654,'dvjhdb','34351','sdfgdfs',165,'jhdfbkjdf','sdhfg','sdfgdsf','sdfgdsfsdf','sdfgsdfgsdf','dfgsdf');
			PreparedStatement stmt=con.prepareStatement("insert into zomatocart values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setString(1, e11.getStrid());
			stmt.setString(2, e11.getStrimage());
			stmt.setString(3, e11.getStrname());
			stmt.setInt(4, e11.getIntcost());
			stmt.setString(5, e11.getStrfmessage());
			stmt.setString(6, e11.getStrcmessage());
			stmt.setString(7, e11.getStrtime());
			stmt.setInt(8, e11.getIntqty());
			stmt.setString(9, e11.getStrcardname());
			stmt.setString(10, e11.getStrcard());
			stmt.setString(11, e11.getStrdate());
			stmt.setString(12, e11.getStrcvv());
			stmt.setString(13, e11.getStrpwd());
			stmt.setString(14, e11.getStrunm());
			
			//System.out.println("sdfjgh");
			res=stmt.executeUpdate();
			System.out.println(res);
			con.close();
		}
		catch(SQLException e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
		return res;
	}

	public LinkedList<cart> getcartid() 
	{
		// TODO Auto-generated method stub
		Connection con=getDBCon();
		LinkedList<cart> lst3=new LinkedList<>();
		try 
		{
			PreparedStatement stmt=con.prepareStatement("select * from zomatocart");
			ResultSet rset=stmt.executeQuery();
			System.out.println("conn1326454987");
			if(rset.next())
			{
//				desc zomatocart
//				Name         Null     Type          
//				------------ -------- ------------- 
//				FOODID                VARCHAR2(50)  
//				IMAGE                 VARCHAR2(100) 
//				NAME                  VARCHAR2(50)  
//				COST                  NUMBER(10)    
//				FOODMESSAGE           VARCHAR2(50)  
//				COSTMESSAGE           VARCHAR2(50)  
//				TIME                  VARCHAR2(10)  
//				QTY                   NUMBER(10)    
//				CARDHOLDERNO NOT NULL VARCHAR2(20)  
//				CARDNO                VARCHAR2(20)  
//				VALIDUPTO             VARCHAR2(10)  
//				CVV                   VARCHAR2(5)   
//				PWD                   VARCHAR2(6)   
//				USERNAME              VARCHAR2(50)  


				String strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcard,strdate,strcvv,strpwd;
				int intcost,intqty;
				strid=rset.getString("FOODID");
				strimage=rset.getString("IMAGE");
				strname=rset.getString("NAME");
				strfmessage=rset.getString("FOODMESSAGE");
				strcmessage=rset.getString("COSTMESSAGE");
				strtime=rset.getString("TIME");
				strcardname=rset.getString("CARDHOLDERNO");
				strcard=rset.getString("CARDNO");
				strdate=rset.getString("VALIDUPTO");
				strcvv=rset.getString("CVV");
				strpwd=rset.getString("PWD");
				intcost=rset.getInt("COST");
				intqty=rset.getInt("QTY");
				String strunm=rset.getString("USERNAME");
				cart e12=new cart(strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcard,strdate,strcvv,strpwd,intcost,intqty,strunm);
				lst3.add(e12);
				System.out.println(e12);
			}
			con.close();
			}catch(SQLException e)
			{
			e.printStackTrace();
			// TODO Auto-generated method stub
			}
		return lst3;
	}


	public LinkedList<cart> getstrcart() {
		// TODO Auto-generated method stub
		Connection con=getDBCon();
		LinkedList<cart> lst5=new LinkedList<>();
		try 
		{
			PreparedStatement stmt=con.prepareStatement("select * from zomatocart where username=?");
			ResultSet rset=stmt.executeQuery();
			System.out.println("conn1326454987");
			if(rset.next())
			{
//				desc zomatocart
//				Name         Null     Type          
//				------------ -------- ------------- 
//				FOODID                VARCHAR2(50)  
//				IMAGE                 VARCHAR2(100) 
//				NAME                  VARCHAR2(50)  
//				COST                  NUMBER(10)    
//				FOODMESSAGE           VARCHAR2(50)  
//				COSTMESSAGE           VARCHAR2(50)  
//				TIME                  VARCHAR2(10)  
//				QTY                   NUMBER(10)    
//				CARDHOLDERNO NOT NULL VARCHAR2(20)  
//				CARDNO                VARCHAR2(20)  
//				VALIDUPTO             VARCHAR2(10)  
//				CVV                   VARCHAR2(5)   
//				PWD                   VARCHAR2(6)   
//				USERNAME              VARCHAR2(50)  

				String strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcard,strdate,strcvv,strpwd;
				int intcost,intqty;
				strid=rset.getString("FOODID");
				strimage=rset.getString("IMAGE");
				strname=rset.getString("NAME");
				strfmessage=rset.getString("FOODMESSAGE");
				strcmessage=rset.getString("COSTMESSAGE");
				strtime=rset.getString("TIME");
				strcardname=rset.getString("CARDHOLDERNO");
				strcard=rset.getString("CARDNO");
				strdate=rset.getString("VALIDUPTO");
				strcvv=rset.getString("CVV");
				strpwd=rset.getString("PWD");
				intcost=rset.getInt("COST");
				intqty=rset.getInt("QTY");
				String strunm=rset.getString("USERNAME");
				cart e15=new cart(strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcard,strdate,strcvv,strpwd,intcost,intqty,strunm);
				lst5.add(e15);
				System.out.println(e15);
			}
			con.close();
			}catch(SQLException e)
			{
			e.printStackTrace();
			// TODO Auto-generated method stub
			}
		return lst5;
	}

}
