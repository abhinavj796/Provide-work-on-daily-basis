import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Register extends HttpServlet
{
Connection con;
PreparedStatement ps1,ps2;
Statement stmt;
ResultSet rs;

public void init() throws ServletException
{

}

public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException,ServletException
{
String cm = new String();
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
ps1 = con.prepareStatement( "Insert into Needer values (?,?,?,?,?,?,?,?)");
ps2 = con.prepareStatement( "Insert into Login values (?,?,?,?,?)");

stmt = con.createStatement();

rs = stmt.executeQuery ("Select Max(Userid) + 1 from Needer");
if(rs.next( ))
{

cm = rs.getString(1);
System.out.println(cm);
if(cm.equals(0))
cm=""+1;
}
}catch(Exception e)
{
System.out.println("Error");
}
response.setContentType("text/HTML");
PrintWriter out = response.getWriter();

String cnm=request.getParameter("cnm");

String add=request.getParameter("add");
String city=request.getParameter("city");
String ph=request.getParameter("ph");

String nm=request.getParameter("nm");
String pass=request.getParameter("pass");
String fav=request.getParameter("pnm");
System.out.println(fav);
    
try{
ps1.setString(1, cm);
ps1.setString(2, cnm);
ps1.setString(3, add);
ps1.setString(4, city);
ps1.setString(5, ph);
ps1.setString(6, nm);
ps1.setString(7, pass);
ps1.setString(8, fav);
ps1.executeUpdate();

ps2.setString(1, cm);
ps2.setString(2, nm);
ps2.setString(3, pass);
ps2.setString(4, fav);
ps2.setString(5, "Needer");


ps2.executeUpdate();

}catch(Exception e)
{
out.println("Unable to store information " + e); 

return;
}
out.println("<HTML>");
out.println("<HEAD>");
out.println("     <style>\n" +
"#header {\n" +
"    background-color:#0073e6;\n" +
"    color:white;\n" +
"    padding:15px;\n" +
"    height:50px;\n" +
"}    \n" +
" .right {\n" +
"    position: absolute;\n" +
"    right: 0px;\n" +
"    width: 700px;\n" +
"    padding:23px;\n" +
"   text-align:center;\n" +
"}\n" +
".left {\n" +
"    float:left;\n" +
"    position: absolute;\n" +
"    left: 0px;\n" +
"    width: 700px;\n" +
"    }\n" +
"    \n" +
"   #footer {\n" +
"    background-color:black;\n" +
"    color:white;\n" +
"    clear:both;\n" +
"    text-align:center;\n" +
"   padding:5px;	 	 \n" +
"}\n" +
"        input[type=submit] {\n" +
"     width: 12%;\n" +
"    background-color: #00cccc;\n" +
"    color: white;\n" +
"    padding: 4px;\n" +
"    border: none;\n" +
"    border-radius: 4px;\n" +
"    cursor: pointer;\n" +
"}\n" +
"\n" +
"input[type=submit]:hover {\n" +
"    background-color: #009999;\n" +
"}</style>\n" +
"    ");

out.println("<TITLE>Successful</TITLE>");
out.println("</HEAD>");
out.println("<Body Bgcolor = \"#C0C0C0\" text=\"#ffffcc\">");

out.println("  <div id=\"header\">\n" +
"    <div class=\"left\">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"index.html\"><img src=\"mgnrega.gif\" width=\"600\" height=\"50\" alt=\"c6\"/></a></div>\n" +
"        <div class=\"right\">\n" +
"            \n" +
"        </div>\n" +
"    </div>\n");

out.println(" <div style=\"background-image:url('k.jpg');background-size:100% 100%;\" >\n" +
"          <br/>");
out.println("<CENTER><img src='company-registration.jpg'>");
out.println("<BR><BR><BR>");
out.println("<H1> Thank you for Registration. <BR>"); 
out.println(" your Registration no. is " + cm +" </H1>");
out.println("<Br><Br> <Form method = get Action = 'index.html'>");
out.println("<Br><Br><Input Type='Submit' Value='Goto Login Screen'></CENTER>");
out.println("</Form>");
out.println("<marquee><font size =6 color = brown ><i>Thank You</i></font></marquee></div>");

out.println("  <div id=\"footer\">\n" +
"Copyright ©Mgnrega\n" +
"</div>  ");

out.println("</BODY>");
out.println("</HTML>");
out.flush();
}
}
