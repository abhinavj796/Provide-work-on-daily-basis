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
A {
     width: 12%;
    background-color: #00cccc;
    color: white;
    padding: 4px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

A:hover {
    background-color: #009999;
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
    </style>   
    
<TITLE>Candidate Detail</TITLE>
</HEAD>

<Body Bgcolor = "#C0C0C0" Text ='#666699'>
    
  <div id="header">
    <div class="left"><br> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b> The Perfect Work </b></div>
                <div class="right">
            
                &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <div class="dropdown">
                    <button class="dropbtn">UserId:&nbsp Mgnrega Admin</BUTTON>
                        <div class="dropdown-content">
                        <a href="index.html">Logout</a>
                        </div>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
            
        </div>
    </div>
           <div style="background-image:url('acd.jpg');background-size:100% 100%;" >
            <br/> 
    
<CENTER><img src="ab.jpg">
<BR>
     <CENTER><H1>MGNREGA JOB WORK CLASSIFICATION </H1>
     <BR><BR> 
<%
     Connection con;
ResultSet rs =null;
Statement stmt;
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
stmt = con.createStatement();
    String r=request.getParameter("Option");
if(r.equals("labour"))
{
%>
<FONT COLOR="red"> <H2> List of Labour Avaliable</H2></FONT>
   <TABLE id="mytable">
   <TR>
   <TH BGCOLOR="orange">Userid</TH>
   <TH BGCOLOR="orange">Name</TH>
   <TH BGCOLOR="orange">Location</TH>
   <TH BGCOLOR="orange">Pno</TH>
   <TH BGCOLOR="orange">Skills</TH>
   <TH BGCOLOR="orange">Pay</TH>
   <TH BGCOLOR="orange">Per</TH>
   <TH BGCOLOR="orange">Username</TH>
   <TH BGCOLOR="orange">Password</TH>
   <TH BGCOLOR="orange">FavPlayer</TH>
   </TR>
   <%
rs = stmt.executeQuery("SELECT * FROM Labour ");
while(rs.next())
{

%>
  <TR>
  <TD><%= rs.getString(1) %></TD>
  <TD><%= rs.getString(2) %></TD>
  <TD><%= rs.getString(3) %></TD>
  <TD><%= rs.getString(4) %></TD>

  <TD><%= rs.getString(5) %></TD>
  <TD><%= rs.getString(6) %></TD>  
   <TD><%= rs.getString(7) %></TD>
   <TD><%= rs.getString(8) %></TD>
  <TD><%= rs.getString(9) %></TD>
   <TD><%= rs.getString(10) %></TD>
</TR>
  <%
  }}
else if(r.equals("customers"))
{
%>
<FONT COLOR="red"> <H2> List of Customers</H2></FONT>
   <TABLE id="mytable">
   <TR>
   <TH BGCOLOR="orange">Userid</TH>
   <TH BGCOLOR="orange">Name</TH>
   <TH BGCOLOR="orange">Location</TH>
   <TH BGCOLOR="orange">Ciry</TH>
   <TH BGCOLOR="orange">Pno</TH>
   <TH BGCOLOR="orange">Username</TH>
   <TH BGCOLOR="orange">Password</TH>
   <TH BGCOLOR="orange">FavPlayer</TH>
   </TR>
   <%
rs = stmt.executeQuery("SELECT * FROM Needer ");
while(rs.next())
{

%>
  <TR>
  <TD><%= rs.getString(1) %></TD>
  <TD><%= rs.getString(2) %></TD>
  <TD><%= rs.getString(3) %></TD>
  <TD><%= rs.getString(4) %></TD>
  <TD><%= rs.getString(5) %></TD>
  <TD><%= rs.getString(6) %></TD>  
   <TD><%= rs.getString(7) %></TD>
   <TD><%= rs.getString(8) %></TD>
</TR>
  <%
  }}

  %>
  </TABLE>
<BR><BR>
<Form Method = POST Action = "AdminHome.html" >
<center> <A HREF = 'AdminHome.jsp'>Back </A> </center>;
</Form>
     </CENTER></div> 
<div id="footer">
Copyright ©ORS_corp.inc
</div>    
</BODY>
</HTML>
