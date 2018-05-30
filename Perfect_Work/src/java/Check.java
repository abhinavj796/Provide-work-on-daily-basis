import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Check extends HttpServlet
{
Connection con;
Statement stmt;
ResultSet rs;
public void init() throws ServletException
{
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
stmt = con.createStatement();
}catch(Exception e)
{
System.out.println("Error");
}
}
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws IOException,ServletException
{
response.setContentType("text/HTML");
PrintWriter out = response.getWriter();
String nm=request.getParameter("nm");
String pass=request.getParameter("pass");
try{
rs = stmt.executeQuery("Select * from Login");
while(rs.next())
{
String n=rs.getString("username");
String p=rs.getString("password");
int a=rs.getInt("Userid");
String b=rs.getString("type");
   
String c=Integer.toString(a);

if(nm.equals(n) && pass.equals(p))
{
HttpSession hs=request.getSession();
hs.setAttribute("code",c);
hs.setAttribute("nm",n);
hs.setAttribute("type",b);
if(b.equals("Labour"))
{
 
response.sendRedirect("Status.jsp");
return;
}
else if(b.equals("Needer"))
{
 hs.setAttribute("flag","0");
response.sendRedirect("Neederwindow.jsp");
return;
}
}
}
}catch(Exception e)
{
out.println("Unable to make Connection " + e); 
return;
}
out.println("<script>alert('Invalid Username Or Password')</script>");
out.println("<center><marquee><font size =6 color = brown ><i><a href='index.html'>Visit Login Page</a></i></font></marquee></center>");
out.flush();
}
}
