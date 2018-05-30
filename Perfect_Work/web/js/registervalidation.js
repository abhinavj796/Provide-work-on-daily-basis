
function validateFormCompany() {
    var name = document.forms["myForm"]["cnm"].value;
    if (name == "") {
        alert(" NAME must be filled out");
        return false;
    }
        else if(!name.match(/^([^0-9]*)$/))
        	{
        	alert("NAME...!! NUMBERS not allowed");
        	return false
        	}
    

	var phnNo = document.forms["myForm"]["ph"].value;
    if ((phnNo.length != 10)) {
        alert("PHONE NUMBER must be equal to 10 digit");
        return false;
    }
    else if(!phnNo.match(/^[1-9]\d*(?:\.\d{0,2})?$/ ))
	{
	alert("PHONE NO. only NUMBERS allowed ");
	return false
	}


	var cutoff = document.forms["myForm"]["pay"].value;
    if (cutoff == "") {
        alert("PAY  must be filled out");
        return false;
    }
    else if(!cutoff.match(/^[1-9]\d*(?:\.\d{0,2})?$/ ))
	{
	alert("PAY only NUMBERS allowed ");
	return false
	}
	
	
	var nam = document.forms["myForm"]["nm"].value;
    if (nam == "") {
        alert("USERNAME must be filled out");
        return false;
    }

	
	var pass = document.forms["myForm"]["pass"].value;
    if (pass.length < 9) {
        alert("PASSWORD must be filled out and minimum 9 digits");
        return false;
    }
    else if(!pass.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/))
	{
	alert("PASSWORD must be VERY STRONG(one lowercase letter, one uppercase letter, one numeric digit, and one special character) and minimun NINE digit ");
	return false
	}
	

	var post = document.forms["myForm"]["fav"].value;
    if (post == "") {
        alert("FAVOURITE PLAYER must be filled out");
        return false;
    }
    else if(!post.match(/^([^0-9]*)$/))
	{
	alert("FAVOURITE PLAYER...!! NUMBERS not allowed");
	return false
	}
	 
    
}



function validateFormuser() {
    var name = document.forms["myForm1"]["cnm"].value;
    if (name == "") {
        alert(" NAME must be filled out");
        return false;
    }
        else if(!name.match(/^([^0-9]*)$/))
        	{
        	alert("NAME...!! NUMBERS not allowed");
        	return false
        	}
    
	
	var add = document.forms["myForm1"]["add"].value;
    if (add == "") {
        alert("ADDRESS must be filled out");
        return false;
    }

	

	var phnNo = document.forms["myForm1"]["ph"].value;
    if ((phnNo.length != 10)) {
        alert("PHONE NUMBER must be equal to 10 digit");
        return false;
    }
    else if(!phnNo.match(/^[1-9]\d*(?:\.\d{0,2})?$/ ))
	{
	alert("PHONE NO. only NUMBERS allowed ");
	return false
	}


	
	
	var nam = document.forms["myForm1"]["nm"].value;
    if (nam == "") {
        alert("USERNAME must be filled out");
        return false;
    }

	
	var pass = document.forms["myForm1"]["pass"].value;
    if (pass.length < 9) {
        alert("PASSWORD must be filled out and minimum 9 digits");
        return false;
    }
    else if(!pass.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/))
	{
	alert("PASSWORD must be VERY STRONG(one lowercase letter, one uppercase letter, one numeric digit, and one special character) and minimun NINE digit ");
	return false
	}
	

	var post = document.forms["myForm1"]["pnm"].value;
    if (post == "") {
        alert("FAVOURITE PLAYER must be filled out");
        return false;
    }
    else if(!post.match(/^([^0-9]*)$/))
	{
	alert("FAVOURITE PLAYER...!! NUMBERS not allowed");
	return false
	}
	 
    
}


function validateForm() {
	
	var nam = document.forms["myForm2"]["nm"].value;
    if (nam == "") {
        alert("USERNAME must be filled out");
        return false;
    }

	
	var post = document.forms["myForm2"]["pnm"].value;
    if (post == "") {
        alert("FAVOURITE PLAYER must be filled out");
        return false;
    }
    else if(!post.match(/^([^0-9]*)$/))
	{
	alert("FAVOURITE PLAYER...!! NUMBERS not allowed");
	return false
	}
	 
    
}



function validate() {
	
	var pass = document.forms["myForm3"]["pas"].value;
    if (pass.length < 9) {
        alert("OLD PASSWORD must be filled out and minimum 9 digits");
        return false;
    }
    else if(!pass.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/))
	{
	alert("OLd PASSWORD must be VERY STRONG(one lowercase letter, one uppercase letter, one numeric digit, and one special character) and minimun NINE digit ");
	return false
	}
	
	
	var pass = document.forms["myForm3"]["pass"].value;
    if (pass.length < 9) {
        alert("NEW PASSWORD must be filled out and minimum 9 digits");
        return false;
    }
    else if(!pass.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/))
	{
	alert("NEW PASSWORD must be VERY STRONG(one lowercase letter, one uppercase letter, one numeric digit, and one special character) and minimun NINE digit ");
	return false
	}
}


function validateselection() {
	
	var cutoff = document.forms["myForm4"]["nod"].value;
    if (cutoff == "") {
        alert("NO OF DAYS  must be filled out");
        return false;
    }
    else if(!cutoff.match(/^[1-9]\d*(?:\.\d{0,2})?$/ ))
	{
	alert("NO OF DAYS  only NUMBERS allowed ");
	return false
	}
	
	
	
	var date = document.forms["myForm4"][""].value;
    if (date == "") {
        alert("DATE  must be filled out");
        return false;
    }
    else if(!date.match(/^\d{1,2}\/\d{1,2}\/\d{4}$/))
	{
	alert("DATE must be in the form of dd/mm/yyyy");
	return false
	}
	
    
}
