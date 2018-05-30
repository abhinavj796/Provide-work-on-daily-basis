<%@ page language="java" contentType="text/html"
import="java.util.*" 
import="java.sql.*" %>
<HTML>
<HEAD>
    
      <style>
        
        
  .dropbtn {
    background-color: #0059b3;
    color: white;
    padding: 7px;
    font-size: 15px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #0080ff;

}


#myTable {
  border-collapse: collapse;
  
  border: 5px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 3px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}        
        
#header {
    background-color:#0073e6;
    color:white;
    padding:15px;
    height:50px;
}    
 .right {
    position: absolute;
    right: 0px;
    width: 700px;
    padding:23px;
   text-align:center;
}
.left {
    float:left;
    position: absolute;
    left: 0px;
    width: 700px;
    }
    
   #footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
input[type=submit] {
     width: 12%;
    background-color: #00cccc;
    color: white;
    padding: 4px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #009999;
}

input[type=text], input[type=password],Select, textarea {
    
    padding: 0px;
    border: 3px solid #ccc;
    border-radius: 2px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: horizontal;
}



    </style>
             
        
    
<TITLE>Company Page</TITLE>
</HEAD>
<Body Bgcolor = "#C0C0C0" text="#ffffcc">
  <%
String cc=(String) session.getAttribute("code");
String n=(String) session.getAttribute("nm");%>
    
    <div id="header">
    <div class="left"><br> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b> The Perfect Work </b></div>
                <div class="right">
            
                &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                
                <div class="dropdown">
                    <button class="dropbtn">UserId:&nbsp<%= cc %></BUTTON>
                        <div class="dropdown-content">
                        <a href="#page-top">Home</a>
                        </div>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                
                <div class="dropdown">
                    <button class="dropbtn">Name:&nbsp<%= n %></BUTTON>
                        <div class="dropdown-content">
                        <a href="NeederProfile.jsp">Profile</a>
                        <a href="ChangePass.jsp">Change Pass</a>
                        <a href="Logout.jsp">Logout</a>
                        </div>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
            
        </div>
    </div>
  


 <div style="background-image:url('slide_04.jpg');background-size:100% 100%;" >
            <br>
 <Center>            
            <img src="13.jpg">

 
   <%
Connection con;
ResultSet rs =null;
Statement stmt;
int i=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
stmt = con.createStatement( );
rs = stmt.executeQuery("SELECT * FROM Labour where Userid='"+cc+"'");
while(rs.next())
{
    %>
    <form action="EditNeeder" method="post">
      <BR><Br>&nbsp&nbsp&nbsp&nbsp Address &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type='Text' Name = 'add' Value = "<%= rs.getString("Location") %>"> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <BR><Br>&nbsp&nbsp&nbsp&nbsp Skills &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type='Text' Name = 'city' Value = "<%= rs.getString("Skills") %>"> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <BR><Br>&nbsp&nbsp&nbsp&nbsp PhoneNo. &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type='Text' Name = 'pno' Value = "<%= rs.getString("Pno") %>"> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <BR><Br>&nbsp&nbsp&nbsp&nbsp Pay &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type='Text' Name = 'pno' Value = "<%= rs.getString("Pay") %>"> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <BR><Br>&nbsp&nbsp&nbsp&nbsp Per &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type='Text' Name = 'pno' Value = "<%= rs.getString("Per") %>"> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <BR><Br>&nbsp&nbsp&nbsp&nbsp Username &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type='Text' Name = 'uname' Value = "<%= rs.getString("Username") %>"> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <BR><Br>&nbsp&nbsp&nbsp&nbsp Fav.Player &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type='Text' Name = 'fav' Value = "<%= rs.getString("Favplayer") %>"> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    </form>        
     <%
   }
  %>
  </CENTER>
<BR><BR>
<marquee><font size =6 color = brown ><i>Specify Appointment information</i></font></marquee><br/>
</DIV>
</BODY>

  <div id="footer">
Copyright ©MGNREGA
</div>

</HTML>
