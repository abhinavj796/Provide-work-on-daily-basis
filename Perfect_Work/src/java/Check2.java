import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Check2 extends HttpServlet
{
public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException,ServletException
{
response.setContentType("text/HTML");
PrintWriter out = response.getWriter();
String nm1=request.getParameter("nm");
String pass1=request.getParameter("pass");
if(nm1.equals("Mgnrega") && pass1.equals("system"))
response.sendRedirect("AdminHome.jsp");
else
response.sendRedirect("index.html");
}
}