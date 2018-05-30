<%@ page language="java" contentType="text/html"
import="java.util.*" 
import="java.sql.*"%>
   
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
  background-color: #d98cb3;
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
        
    <TITLE>Labour Window</TITLE>
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
                        <a href="Status.jsp">Home</a>
                        </div>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                
                <div class="dropdown">
                    <button class="dropbtn">Name:&nbsp<%= n %></BUTTON>
                        <div class="dropdown-content">
                        <a href="LabourProfile.jsp">Profile</a>
                        <a href="ChangePass.jsp">Change Pass</a>
                        <a href="Logout.jsp">Logout</a>
                        </div>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
            
        </div>
    </div>
           
<CENTER>   
            <div style="background-image:url('slide_04.jpg');background-size:100% 100%;" >
            <br>
            <img src="13.jpg">

<%
Connection con;
ResultSet rs =null;
Statement stmt;
Vector items= new Vector( );
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
stmt = con.createStatement( );
rs = stmt.executeQuery("SELECT count(labourid) FROM work where labourid=\'"+cc+"\'");
int a=0;
while(rs.next())
{
a=rs.getInt(1);
}
if(a==0)
{
%>
<center><h2>You Don't Have any bookings till now</h2></CENTER>
<%
}
else
{
%>

   <H1>Your Bookings</H1>
   <H2>Your appointment details are listed below:</H2>
   <BR><BR>
   <table id="myTable">
   <TR>
   <TH BGCOLOR="orange">User Code</TH>
   <TH BGCOLOR="orange">Customer Name</TH>
   <TH BGCOLOR="orange">Location</TH>   
   <TH BGCOLOR="orange">Date of Joining</TH>
   <TH BGCOLOR="orange">No. of Days</TH>
   <TH BGCOLOR="orange">Wage</TH>
   <TH BGCOLOR="orange">Mobile No.</TH>

   </TR>
   <%
rs = stmt.executeQuery("SELECT * FROM work where labourid=\'"+cc+"\'");
while(rs.next( ))
{
%>
  <TR>
  <TD><%= rs.getString("labourid") %></TD>
  <TD><%= rs.getString("custname") %></TD>
  <TD><%= rs.getString("location") %></TD>
  <TD><%= rs.getString("doj") %></TD>
  <TD><%= rs.getString("nod") %></TD>
  <TD><%= rs.getString("wage")%></TD>
  <TD><%= rs.getString("mobno") %></TD>
  </TR>
  
<%
}}
%>
</TABLE>  
<br>
  </div>
<div id="footer">
    Copyright©Mahatama Gandhi National Rural Employment Guarantee Act
</div>
  </CENTER>
  </BODY>
  </HTML>

