<!-- Main.html -->
<HTML>
<HEAD>
    <STYLE>  
 
        
        
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
    </style>
<META HTTP-EQUIV = "Pragma" 
CONTENT = "no cache">
<META HTTP-EQUIV = "Cache-control"
CONTENT = "no cache">
    <META HTTP-EQUIV = "Expires" CONTENT = "0">
<TITLE> Recruitment System Administrator</TITLE>
</HEAD>
<Body Bgcolor = "#C0C0C0" Text ='#ffffcc'>
    
  <div id="header">
    <div class="left">&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="mgnrega.gif" width="600" height="50" alt="c6"/></div>
        <div class="right">
            
                &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <div class="dropdown">
                    <button class="dropbtn">UserId:&nbsp Perfect Work </BUTTON>
                        <div class="dropdown-content">
                        <a href="index.html">Logout</a>
                        </div>
                </div> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
            
        </div>
    </div>
           <div style="background-image:url('acd.jpg');background-size:100% 100%;" >

            <br/>    

<CENTER><img src="regcomp.jpg">
 <H1> MGNREGA JOB WORK CLASSIFICATION </H1> 

<Font COLOR = Green><H2> Adminstartor Selction Page </H2></Font>
<BR>
<FORM METHOD = POST ACTION = "DisplayRecord.jsp">
<TABLE id="myTable">
<TR>
 <TD><INPUT TYPE = "Radio" NAME = "Option" VALUE = "labour" CHECKED>
     <FONT COLOR = Red>List of Labour Avalible</FONT></TD>
</TR>
<TR>
  <TD><INPUT TYPE = "Radio" NAME = "Option"
     VALUE = "customers">
       <FONT COLOR = Red>List of Customers</FONT></TD>
</TR>


</TABLE>
<br/>
<INPUT TYPE = "Submit" VALUE = "Submit">
</FORM>

&nbsp&nbsp&nbsp&nbsp
 <A HREF = "index.html" > Login Page </A>

</CENTER>
<marquee><font size =6 color = brown ><i>Select option</i></font></marquee>
<br></div>
  <div id="footer">
Copyright ©ORS_corp.inc
</div>
</BODY>
</HTML>
