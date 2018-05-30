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
int a=Integer.parseInt((String) session.getAttribute("flag"));
String cc=(String) session.getAttribute("code");
String n=(String) session.getAttribute("nm");
String ar[]=new String[]{"Sonipat","Panipat","Samalkha","Gaunaur","Rai"};
  String ar1[]=new String[]{"Driver","Plumber","Electrician","Carpenter","Driver"};%>
    
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
  


         <div style="background-image:url('k.jpg');background-size:100% 100%;" >
          <br/>
<CENTER>
 <img src="19.jpg"></Center>
 <Center>
 <br/>
<A HREF = "Contactus.html"> Contact us </A>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<A HREF = "Logout.jsp"> Logout </A>
          <br><br>
<form action="Neederwindow.jsp">
<h1>Location:</h1><Select Name ="add" > 
<%
for(int j=0;j<ar.length;j++)
{
String s=request.getParameter("add"); 
System.out.println(ar[j]);
if(ar[j].equals(s))
{
    System.out.println(ar[j]);
%>
<option value = <%= ar[j]%> Selected > <%= ar[j]%>
<%    
}
else
{
%>
<option value = <%= ar[j]%> > <%= ar[j]%>
<%
}    
}
%>    
</Select>
<h1>Job:</h1>
<Select Name ="skill" > 
<%
for(int j=0;j<ar1.length;j++)
{
String s=request.getParameter("skill"); 
System.out.println(ar1[j]);
if(ar1[j].equals(s))
{
    System.out.println(ar1[j]);
%>
<option value = <%= ar1[j]%> Selected > <%= ar1[j]%>
<%    
}
else
{
%>
<option value = <%= ar1[j]%> > <%= ar1[j]%>
<%
}    
}
%>      
</Select><br><br>
<Input Type = "submit" Value="Search">
</form>
     
<FONT COLOR="red" Size = +1> Candidate List according to Your Requirements  </FONT>
<Br><br>
<TABLE id="mytable">
   <TR>
   <TH BGCOLOR="orange">Labour id</TH>
   <TH BGCOLOR="orange">Name</TH>
   <TH BGCOLOR="orange">Pay</TH>
   <TH BGCOLOR="orange">Per</TH>
   <TH BGCOLOR="orange">Phone no.</TH>
   </TR>
   <%
      Connection con;
ResultSet rs =null;
Statement stmt;
Vector items= new Vector( );
String it[]=new String[1000];
int i=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","abc");
stmt = con.createStatement( );
   if(a==0)
   {
rs = stmt.executeQuery("SELECT * FROM Labour where location='Sonipat' And skills='Driver'");
while(rs.next())
{
    it[i]=rs.getString("Userid");
    i++;
   %>
   <TR>
  <TD><%= it[i-1] %></TD>
  <TD><%= rs.getString("name") %></TD>
  <TD><%= rs.getString("pay") %></TD>
  <TD><%= rs.getString("per") %></TD>
  <TD><%= rs.getString("pno") %></TD>
  </TR>
   <%    
   }
session.setAttribute("flag","1");
   }
   else
   {
String loc=request.getParameter("add");
String job=request.getParameter("skill");
rs = stmt.executeQuery("SELECT * FROM Labour where location=\'"+loc+"\' And skills=\'"+job+"\'");
while(rs.next())
{
    it[i]=rs.getString("Userid");
    i++;
   %>
   <TR>
  <TD><%= it[i-1]  %></TD>
  <TD><%= rs.getString("name") %></TD>
  <TD><%= rs.getString("pay") %></TD>
  <TD><%= rs.getString("per") %></TD>
  <TD><%= rs.getString("pno") %></TD>
  </TR>
   <%    
   }
   }
  %>
  </TABLE>
  </CENTER>
<BR><BR>
  <FORM METHOD="Post" ACTION="Compute" name="myForm4" onsubmit="return validateselection()">
&nbsp&nbsp&nbsp&nbsp  Select Labour id You want to Appoint:
<Select Name = cb>
<%
for(int c=0; c<=i-1; c++)
{
String ss=it[c]+"";
%>
<Option Value = <%= ss %>  > <%= ss %>
<%
}
%>
</Select>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp Time Period:
<Input Type='text' Name = 'nod' >
<BR><Br>&nbsp&nbsp&nbsp&nbsp Date of Join 
<Input Type='datetime-local' Name = 'doj' required> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <INPUT TYPE="Submit" VALUE="Submit">
  </form>
</CENTER>
<marquee><font size =6 color = brown ><i>Specify Appointment information</i></font></marquee><br/>
</DIV>

  <div id="footer">
Copyright ©MGNREGA
</div>

	<!-- Validations -->
    <script src="js/registervalidation.js"></script>
   
</BODY>

</HTML>
