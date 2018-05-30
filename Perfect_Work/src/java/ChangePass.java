import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ChangePass extends HttpServlet
{
Connection con;
Statement stmt;
ResultSet rs;
PreparedStatement ps;
public void init() throws ServletException
{
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
stmt = con.createStatement();
ps = con.prepareStatement( "Update Login set password=? where Userid=?");
}catch(Exception e)
{
System.out.println("Error");
}
}

public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException,ServletException
{
response.setContentType("text/HTML");
PrintWriter out = response.getWriter();

HttpSession hs=request.getSession();
String cc=(String) hs.getAttribute("code");
String nm=(String) hs.getAttribute("nm");
String pas=request.getParameter("pas");
String pass=request.getParameter("pass");
System.out.println(cc);
try{
    System.out.println("1");
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
stmt = con.createStatement();
rs = stmt.executeQuery("Select * from Login where Userid='" + cc+"'");
System.out.println("2");
while(rs.next())
{
    System.out.println(cc);
if(rs.getString("password").equals(pas))
{ps.setString(1, pass);
ps.setString(2, cc);
ps.executeUpdate();

response.sendRedirect("Logout.jsp");}
else
{
out.println("<script>alert('Wrong Password ')</script>");
out.println("<body><center><marquee><font size =6 color = brown ><i><a href='index.html'>This was a invalid Login PLease Lodin Again</a></i></font></marquee></center></body>");
out.flush();
}
}


}catch(Exception e)
{
System.out.println(e); 
out.println("Unable to make Connection"); 
return;
}

}
}
