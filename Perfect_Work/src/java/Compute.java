import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
public class Compute extends HttpServlet
{
Connection con;
PreparedStatement ps1, ps2, ps3;
Statement stmt;
ResultSet rs;

public void init() throws ServletException
{
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
ps1 = con.prepareStatement( "Insert into work values (?, ?, ?, ?, ?, ?, ?, ?)");
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
        HttpSession session=request.getSession(false);    
    String add = null,mno = null,lid = null;
    int Pay,Wage = 0;
    
String nid=(String)session.getAttribute("code");
try{
 
    
rs=stmt.executeQuery("Select * from Needer where Userid='"+nid+"'"); 
while(rs.next())
{
add=rs.getString("Address");
mno=rs.getString("Pno");
}

    lid=request.getParameter("cb");
rs=stmt.executeQuery("Select * from Labour where Userid='"+lid+"'"); 
while(rs.next())
{
Pay=Integer.parseInt(rs.getString("Pay"));
Wage=Pay*Integer.parseInt(request.getParameter("nod"));
}

ps1.setString(1, lid);
ps1.setString(2, nid);
ps1.setString(3, (String)session.getAttribute("nm"));
ps1.setString(4, add);
ps1.setString(5, request.getParameter("doj"));
ps1.setString(6, request.getParameter("nod"));
ps1.setString(7, Integer.toString(Wage));
ps1.setString(8, mno);

ps1.executeUpdate();
}
catch(Exception e)
{
    
}
response.setContentType("text/HTML");
PrintWriter out = response.getWriter();
out.println("<HTML>");
out.println("<HEAD>");

out.println("     <style>\n" +
"        \n" +
"        \n" +
"  .dropbtn {\n" +
"    background-color: #0059b3;\n" +
"    color: white;\n" +
"    padding: 7px;\n" +
"    font-size: 15px;\n" +
"    border: none;\n" +
"    cursor: pointer;\n" +
"}\n" +
"\n" +
".dropdown {\n" +
"    position: relative;\n" +
"    display: inline-block;\n" +
"}\n" +
"\n" +
".dropdown-content {\n" +
"    display: none;\n" +
"    position: absolute;\n" +
"    background-color: #f9f9f9;\n" +
"    min-width: 160px;\n" +
"    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n" +
"}\n" +
"\n" +
".dropdown-content a {\n" +
"    color: black;\n" +
"    padding: 12px 16px;\n" +
"    text-decoration: none;\n" +
"    display: block;\n" +
"}\n" +
"\n" +
".dropdown-content a:hover {background-color: #f1f1f1}\n" +
"\n" +
".dropdown:hover .dropdown-content {\n" +
"    display: block;\n" +
"}\n" +
"\n" +
".dropdown:hover .dropbtn {\n" +
"    background-color: #0080ff;\n" +
"\n" +
"}\n" +
"\n" +
"\n" +
"#myTable {\n" +
"  border-collapse: collapse;\n" +
"  \n" +
"  border: 5px solid #ddd;\n" +
"  font-size: 18px;\n" +
"}\n" +
"\n" +
"#myTable th, #myTable td {\n" +
"  text-align: left;\n" +
"  padding: 12px;\n" +
"}\n" +
"\n" +
"#myTable tr {\n" +
"  border-bottom: 3px solid #ddd;\n" +
"}\n" +
"\n" +
"#myTable tr.header, #myTable tr:hover {\n" +
"  background-color: #f1f1f1;\n" +
"}        \n" +
"        \n" +
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
"\n" +
"input[type=submit] {\n" +
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
"}\n" +
"\n" +
"    </style>");

out.println("<TITLE>Task Successful</TITLE>");
out.println("</HEAD>");

out.println("<Body Bgcolor = \"#C0C0C0\" text=\"#ffffcc\">");

out.println("    <div id=\"header\">\n" +
"            <div class=\"left\"><br> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b> The Perfect Work </b></div>\n" +
"<div class=\"right\">\n" +
"            \n" +
"                &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp\n" +
"                \n" +
"                <div class=\"dropdown\">\n" +
"                    <button class=\"dropbtn\">UserId:&nbsp"+nid+"</BUTTON>\n" +
"                        <div class=\"dropdown-content\">\n" +
"                        <a href=\"selection.jsp\">Home</a>\n" +
"                        </div>\n" +
"                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp \n" +
"                \n" +
"                <div class=\"dropdown\">\n" +
"                    <button class=\"dropbtn\">Name:&nbsp"+(String)session.getAttribute("nm")+"</BUTTON>\n" +
"                        <div class=\"dropdown-content\">\n" +
"                        <a href=\"#\">Profile</a>\n" +
"                        <a href=\"#\">Change Pass</a>\n" +
"                        <a href=\"Logout.jsp\">Logout</a>\n" +
"                        </div>\n" +
"                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp \n" +
"            \n" +
"        </div>\n" +
"    </div>");

out.println("   <div style=\"background-image:url('k.jpg');background-size:100% 100%;\" >");
out.println("<CENTER><br><img src='Cpage.jpg'>");

out.println("<Br>  &nbsp&nbsp&nbsp&nbsp&nbsp <A HREF = 'Contactus.html'> Contact us </A>");
out.println(" &nbsp&nbsp&nbsp&nbsp&nbsp <A HREF = 'Logout.jsp'> Logout </A>");     

out.println("<BR>");
out.println("<H1> Thank you for Appointment. <BR>"); 
out.println(" Your current Appointment detail is <BR><BR><Font Size = 3 Color = 'Red'>" );

out.println("<table id=\"mytable\">\n" +
"<tr><th>Labourid</th><th>Userid</th><th>YourName</th><th>Address</th><th>DOJ</th><th>NOD</th><th>Wage</th><th>Mno.</th></tr>\n" +
"<tr><td>"+lid+"</td><td>"+nid+"</td><td>"+(String)session.getAttribute("nm")+"</td><td>"+add+"</td><td>"+request.getParameter("doj")+"</td><td>"+request.getParameter("nod")+"</td><td>"+Wage+"</td><td>"+mno+"</td></tr></table>");
out.println(" <H3><CENTER><Font Color = 'Green'>Click More to make more Appointment </H3></CENTER>");
out.println("</CENTER>");
out.println("<center> <A HREF = 'Neederwindow.jsp'> MORE </A> </center>");
out.println("</Form></Font>");

out.println("</BODY>");
out.println("<marquee><font size =6 color = brown ><i>Thank You for Appointment</i></font></marquee></div>");

out.println("</HTML>");
out.flush();
}
}
