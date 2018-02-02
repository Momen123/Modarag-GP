document.getElementById("user").onfocus=function(){
	"use strict";
			
			if(document.getElementById("user").value ==""){
				document.getElementById("amr").innerHTML ="please enter your username";
			}
			else{
				document.getElementById("amr").innerHTML ="";
				}
			};
document.getElementById("user").onblur=function(){
	"use strict";
			document.getElementById("amr").innerHTML ="";
			};
			
document.getElementById("pwd").onfocus=function(){
	"use strict";
	if(document.getElementById("pwd").value ==""){
			document.getElementById("amr").innerHTML ="please enter your password";
			}
	else{
		document.getElementById("amr").innerHTML ="";
		}
};
document.getElementById("pwd").onblur=function(){
	"use strict";
			document.getElementById("amr").innerHTML ="";
			};
document.getElementById("Cpwd").onfocus=function(){
	"use strict";
			document.getElementById("amr").innerHTML ="please retype your password";
			};
document.getElementById("Cpwd").onfocus=function(){
	"use strict";
	if (document.getElementById("Cpwd").value == document.getElementById("pwd").value){
			document.getElementById("amr").innerHTML ="";
			}
	else{
		    document.getElementById("amr").innerHTML ="password didn't match";
				}
};
document.getElementById("Cpwd").onblur=function(){
	"use strict";
			document.getElementById("amr").innerHTML ="";
			};
			
document.getElementById("email").onfocus=function(){
	"use strict";
	if(document.getElementById("email").value ==""){
			document.getElementById("amr").innerHTML ="please enter your email";
			}
};
document.getElementById("email").onblur=function(){
	"use strict";
			document.getElementById("amr").innerHTML ="";
			
};
document.getElementById("Gover").onfocus=function(){
	"use strict";
	if(document.getElementById("Gover").value ==""){
			document.getElementById("amr").innerHTML ="please enter your government";
			}
};
document.getElementById("Gover").onblur=function(){
	"use strict";
			document.getElementById("amr").innerHTML ="";
			
};


$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})