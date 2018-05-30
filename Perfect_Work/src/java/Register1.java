import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Register1 extends HttpServlet
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
 String cn=new String();   
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
ps1 = con.prepareStatement( "Insert into Labour values (?,?,?,?,?,?,?,?,?,?)");
ps2 = con.prepareStatement( "Insert into Login values (?,?,?,?,?)");

stmt = con.createStatement();

rs = stmt.executeQuery ("Select Max(Userid) + 1 from Labour");
if(rs.next())
{
cn = rs.getString(1);
System.out.println(cn);
if(cn.equals(0))
cn=""+101;
}
}catch(Exception e)
{
System.out.println("Error");
}
response.setContentType("text/HTML");
PrintWriter out = response.getWriter();

String cnm=request.getParameter("cnm");

String add=request.getParameter("add");
String ph=request.getParameter("ph");

String skill=request.getParameter("skill");
String pay=request.getParameter("pay");
String per=request.getParameter("per");


String nm=request.getParameter("nm");
String pass=request.getParameter("pass");
String fav=request.getParameter("fav");

try{
ps1.setString(1, cn);
ps1.setString(2, cnm);
ps1.setString(3, add);
ps1.setString(4, ph);
ps1.setString(5, skill);
ps1.setString(6, pay);
ps1.setString(7, per);
ps1.setString(8,nm);
ps1.setString(9,pass);
ps1.setString(10,fav);
ps1.executeUpdate();

ps2.setString(1, cn);
ps2.setString(2, nm);
ps2.setString(3, pass);
ps2.setString(4, fav);
ps2.setString(5, "Labour");

ps2.executeUpdate();

}catch(Exception e)
{
out.println("Unable to store information"+e); 

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
"    </style>\n" +
"    ");

out.println("<TITLE>Successful</TITLE>");
out.println("</HEAD>");
out.println("<Body Bgcolor = \"#C0C0C0\" text=\"#ffffcc\">");

out.println("  <div id=\"header\">\n" +
"        <div class=\"left\"><br> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b> The Perfect Work </b></div>\n" +
"<div class=\"right\">\n" +
"            \n" +
"        </div>\n" +
"    </div>\n");

out.println(" <div style=\"background-image:url('k.jpg');background-size:100% 100%;\" >\n" +
"          <br/>");
out.println("<CENTER><img src='company-registration.jpg'>");
out.println("<BR><BR><BR>");
out.println("<H1> Thank you for Registration. <BR>"); 
out.println(" your Registration no. is " + cn +" </H1>");
out.println("<Br><Br> <Form method = get Action = 'index.html'>");
out.println("<Br><Br><Input Type='Submit' Value='Goto Login Screen'></CENTER>");
out.println("</Form>");
out.println("<marquee><font size =6 color = brown ><i>Thank You</i></font></marquee></div>");

out.println("  <div id=\"footer\">\n" +
"Copyright ©Perfect Work\n" +
"</div>  ");

out.println("</BODY>");
out.println("</HTML>");
out.flush();
}
}
