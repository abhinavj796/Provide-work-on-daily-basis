import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Forgot extends HttpServlet
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
public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException,ServletException
{
response.setContentType("text/HTML");
PrintWriter out = response.getWriter();
HttpSession hs=request.getSession();
String nm=request.getParameter("nm");
String pnm=request.getParameter("pnm");
int flag=0;
try{
rs = stmt.executeQuery("Select * from Login");
while(rs.next())
{
String n=rs.getString("username");
String p=rs.getString("favplayer");
String pass=rs.getString("password");

if(nm.equals(n) && pnm.equals(p))
{
    flag=1;
    
out.println("<HTML>");
out.println("<HEAD>");
out.println("<TITLE>Login Message</TITLE>");
out.println("</HEAD>");
out.println("<Body Bgcolor = '#C0C0C0' Text ='#ffffcc' style=\"background-image:url('forgot-bg.jpg');background-size:100% 100%;\" >");
out.println("<CENTER><img src='Cpage.jpg'>");
out.println("<BR><BR><BR>");
out.println("<CENTER><H1> User Name and Favourite Player is Valid. <BR>"); 
out.println(" Your Password is " + pass);
out.println(" </H1>");
out.println("<A HREF = 'index.html' > Login Page </A>");
out.println("</CENTER>");
out.println("<marquee><font size =6 color = brown ><i>Click on login page to login</i></font></marquee>");
out.println("</BODY>");
out.println("</HTML>");
out.flush();
    
}
}
if(flag==0)
{
out.println("<HTML>");
out.println("<HEAD>");
out.println("<TITLE>Login Denied</TITLE>");
out.println("</HEAD>");
out.println("<Body Bgcolor = '#C0C0C0' Text ='#ffffcc' style=\"background-image:url('forgot-bg.jpg');background-size:100% 100%;\" >");
out.println("<CENTER><img src='Cpage.jpg'>");
out.println("<BR><BR>");
out.println("<H1> User Name or Fav Player Name is invalid. <BR>"); 
out.println(" </H1>");
out.println("<A HREF = 'index.html' > New User </A>");
out.println("<Br> <Form method = get Action = 'Forgot.html'>");
out.println("<Br> <Input Type='Submit' Value='Try Again'>");
out.println("</Form></CENTER>");
out.println("<marquee><font size =6 color = brown ><i>Try Again</i></font></marquee>");
out.println("</BODY>");
out.println("</HTML>");
out.flush();
}
}catch(Exception e)
{
out.println("Unable to make Connection"); 
return;
}
}
}