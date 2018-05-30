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

         <%

String cc=(String) session.getAttribute("code");
String n=(String) session.getAttribute("nm");%>
    
    <div id="header">
    <div class="left"><br> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b> The Perfect Work </b></div>
                <div class="right">
            
                &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                
                <div class="dropdown">
                    <button class="dropbtn">UserId:&nbsp<%= cc %></BUTTON>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                
                <div class="dropdown">
                    <button class="dropbtn">Name:&nbsp<%= n %></BUTTON>
                        <div class="dropdown-content">
                        <a href="Logout.jsp">Logout</a>
                        </div>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
            
        </div>
    </div>
           <div style="background-image:url('acd.jpg');background-size:100% 100%;" >
            <br/> 
    
<CENTER><img src="abcd.jpg">
<BR>
   <H1> THE PERFECT WORK !!!! </H1>

<br>
<br>
<Form Method ="Post" Action = "ChangePass" name="myForm3" onsubmit="return validate()">
<FONT COLOR = #3333ff>Old Password: &nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type = "password" Value="" Name = "pas">
<BR><BR>New Password: &nbsp&nbsp&nbsp&nbsp&nbsp
<Input Type = "password" Value="" Name = "pass">

<Br><Br><BR>&nbsp&nbsp
<Input Type = "submit" Value="Submit" >
</Font>
</Form>
</Center>
<br>
<marquee><font size =6 color = brown ><i>Enter Your Old Password And then New Password</i></font></marquee>

    </div>

  

<div id="footer">
Copyright ©Perfect Work
</div>


	<!-- Validations -->
    <script src="js/registervalidation.js"></script>
   

</body>