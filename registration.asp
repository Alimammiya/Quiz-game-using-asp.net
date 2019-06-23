<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>IGNOU - Online Registration </title>
    <link rel="stylesheet" type="text/css" href="style/style1.css">
    <SCRIPT language="javascript">
	    function check()
		{
		
			if (form1.studentname.value =="")
		  	{
		    	alert("Please enter name of student.")
		    	form1.studentname.focus()
		    	return false;
		  	}
		  	if (form1.address.value =="")
		  	{
		    	alert("Please enter address.")
		    	form1.address.focus()
		    	return false;
		  	}
		  	if (form1.emailid.value =="")
		  	{
		    	alert("Please enter email id.")
		    	form1.emailid.focus()
		    	return false;
		  	}		  	
		  	
			if ((/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.form1.emailid.value)) == false)
			{
					alert("Invalid E-mail Address! Please re-enter.")
					document.form1.emailid.focus();
					return (false)
			}
			if (form1.regioncode.value =="")
		  	{
		    	alert("Please enter region Code.")
		    	form1.regioncode.focus()
		    	return false;
		  	}	
			
			if (form1.tlccode.value =="")
		  	{
		    	alert("Please enter TLC Code.")
		    	form1.tlccode.focus()
		    	return false;
		  	}	
			
			return true;
		
		}
	</SCRIPT>
</head>
<body>
<FORM name="form1" action="registrationconf.asp" method="post" onsubmit="return check();">

    <div>
    
    <div align="center">
    	<table border="1" width="800" cellspacing="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" id="table3" bordercolor="#434367">
			<tr>
				<td align="left" valign="top">
		<table border="0" width="800" cellspacing="0" id="table4" height="548">
			<tr>
				<td background="images/header_background.gif" height="133" align="left" valign="top" width="796" colspan="2">
				<div align="left">
					<table border="0" width="796" id="table5" cellspacing="0">
						<tr>
							<td width="311" rowspan="5" colspan="2" align="left" valign="top">
							<IMG height=100 src="images/quiz.png" width=306 border=0></td>
							<td width="30">&nbsp;</td>
							<td style="WIDTH: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td style="WIDTH: 417px">
							<p align="right">
                                <font color="#ffffff"><%=Now() %></font></p></td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td style="WIDTH: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" >&nbsp;</td>
							<td valign="top" style="TEXT-ALIGN: right">
                                &nbsp; </td>
							<td width="17" >&nbsp;</td>
						</tr>
						<tr>
							<td width="30" style="HEIGHT: 15px">&nbsp;</td>
							<td style="WIDTH: 417px; HEIGHT: 15px">&nbsp;</td>
							<td width="17" style="HEIGHT: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22" style="HEIGHT: 15px">&nbsp;</td>
							<td width="289" align="left" style="HEIGHT: 15px">&nbsp;</td>
							<td width="30" style="HEIGHT: 15px">&nbsp;</td>
							<td style="WIDTH: 417px; HEIGHT: 15px">&nbsp;</td>
							<td width="17" style="HEIGHT: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left">&nbsp;</td>
							<td width="30">&nbsp;</td>
							<td style="WIDTH: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left"><A href="index.asp">
							Home</a> | <A href="registration.asp">Registration</a> 
							| <A href="starttest.asp">Play Game</a>&nbsp; |&nbsp;
							<A href="login.asp">Student Login</a></td>
							<td width="30">&nbsp;</td>
							<td style="WIDTH: 417px">
                                <p align="right"><A href="faq.asp">FAQ's</a> |&nbsp;
								<A href="contact.asp">Contact Us</a></p></td>
							<td width="17">&nbsp;</td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
			<tr>
				<td width="135" align="left" valign="top" rowspan="2" style="BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px">
				<IMG height=500 src="images/admin_s.gif" width=150 border=0></td>
				<td  align="left" valign="top" height="396" style="PADDING-LEFT: 5pt; PADDING-TOP: 5pt"> 
				
				 
				
					<div align="center">
	<table border="0" width="100%" id="table6" cellpadding="2">
		<tr>
			<td width="16">&nbsp;</td>
			<td colspan="3" align="left">
                <strong><br>
				User Registration. Fill the form carefully all fields are 
				mandatory.</strong></td>
		</tr>
        <tr>
            <td style="HEIGHT: 15px" width="16">
            </td>
            <td align="left" style="WIDTH: 174px; HEIGHT: 15px">
                </td>
            <td align="left" style="WIDTH: 371px; HEIGHT: 15px">
                </td>
            <td style="HEIGHT: 15px" width="89">
            </td>
        </tr>
		<tr>
			<td width="16" style="HEIGHT: 15px">&nbsp;</td>
			<td style="WIDTH: 174px; HEIGHT: 15px" align="left">
                &nbsp;User Full Name:</td>
			<td style="WIDTH: 371px; HEIGHT: 15px" align="left">&nbsp;<FONT size="1" color="#626258" face="Verdana, Arial, Helvetica, sans-serif"><INPUT name="studentname" size="24" maxlength="70"  class="textb1"
                 ></FONT></td>
			<td width="89" style="HEIGHT: 15px">&nbsp;</td>
		</tr>
		<tr>
			<td width="16">&nbsp;</td>
			<td align="left" style="WIDTH: 174px">
                &nbsp;Address:</td>
			<td style="WIDTH: 371px" align="left">&nbsp;<FONT size="1" color="#626258" face="Verdana, Arial, Helvetica, sans-serif"><INPUT name="address" size="24" maxlength="250"  class="textb1"
                 ></FONT></td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="16">&nbsp;</td>
			<td align="left" style="WIDTH: 174px">
                &nbsp;Email ID:</td>
			<td style="WIDTH: 371px" align="left">&nbsp;<FONT size="1" color="#626258" face="Verdana, Arial, Helvetica, sans-serif"><INPUT name="emailid" size="24" maxlength="50"  class="textb1"
                 ></FONT></td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="16">&nbsp;</td>
			<td align="left" style="WIDTH: 174px">
                Subject</td>
			<td style="WIDTH: 371px" align="left">&nbsp;<select size="1" name="programcode" class="textb1">
			<option selected>General Knowledge</option>
			</select></td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="16">&nbsp;</td>
			
			
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			
		</tr>
		<tr>
			<td width="16">&nbsp;</td>
			<td align="left" style="WIDTH: 174px">
                &nbsp;Month and Year:</td>
			<td style="WIDTH: 371px" align="left">&nbsp;<select size="1" name="month" class="textb1">
			<option>Jan</option>
			<option>Feb</option>
			<option>Mar</option>
			<option>Apr</option>
			<option>May</option>
			<option>Jun</option>
			<option>Jul</option>
			<option>Aug</option>
			<option>Sep</option>
			<option>Oct</option>
			<option>Nov</option>
			<option>Dec</option>
			</select> <select size="1" name="year" class="textb1">
			<option selected>2009</option>
			<option>2010</option>
			<option>2011</option>
			<option>2012</option>
			<option>2013</option>
			<option>2014</option>
			<option>2015</option>
            <option>2016</option>
            <option>2017</option>
            <option>2018</option>
            <option>2019</option>
            <option>2020</option>
            <option>2021</option>
            <option>2022</option>
			</select></td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="16">&nbsp;</td>
			<td align="left" style="WIDTH: 174px">
                &nbsp;</td>
			<td style="WIDTH: 371px" align="left">&nbsp;</td>
			<td width="89">&nbsp;</td>
		</tr>
        <tr>
            <td width="16">
            </td>
            <td align="left" style="WIDTH: 174px">
            </td>
            <td align="left" style="WIDTH: 371px">
            </td>
            <td width="89">
            </td>
        </tr>
		<tr>
			<td width="16">&nbsp;</td>
			<td align="left" style="WIDTH: 174px">&nbsp;</td>
			<td style="WIDTH: 371px" align="left">&nbsp;<INPUT type="submit" name="Submit" value="Submit" class ="button1">&nbsp;
                     
                      
              <INPUT type="reset" name="Reset" value="Reset" class ="button1" ></td>
			<td width="89">&nbsp;</td>
		</tr>
        <tr>
            <td width="16">
            </td>
            <td align="left" style="WIDTH: 174px">
            </td>
            <td align="left" style="WIDTH: 371px">
            </td>
            <td width="89">
            </td>
        </tr>
		<tr>
			<td width="16">&nbsp;</td>
			<td align="left" style="WIDTH: 174px">&nbsp;</td>
			<td style="WIDTH: 371px" align="left">&nbsp;</td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="16" style="HEIGHT: 49px">&nbsp;</td>
			<td width="610" colspan="3" style="HEIGHT: 49px" align="left" valign="top">
                    <strong>If you already registered click here to <u>
					<span style="font-weight: 700; background-position: 0% 0%">
					<a href="login.asp"><font color="#434367"><b><u>login</u></b></font></a></span></u> 
					.</strong></td>
		</tr>
	</table>
					</div>
				
				</td>
			</tr>
			<tr>
				<td width="661" height="19" align="left" valign="top" style="BORDER-TOP: 1px solid; BORDER-LEFT-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px" 
         >
				<p align="center"> 
				     Online Quize Gamez</p> 
				     </td>
			</tr>
			</table>
				</td>
			</tr>
		</table>
	</div>
    
    </div>
    
		<%
		
		if request("submit")="Submit" then
			'Response.Write(server.MapPath("data") & "\data.mdb")
			'Response.End 
			set Cn=server.CreateObject("ADODB.Connection")
			set rs=server.CreateObject("ADODB.Recordset")
			set Cmm =server.CreateObject("ADODB.Command")
			Cn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath("data") & "\data.mdb" & ";Persist Security Info=true"
			Cn.Open
			
			rs.Open "select * from registration where reg_id=" & Clng(Request.Form.Item("username")) & " and reg_password='" &  Request.Form.Item("password") & "'",cn
			
			if rs.eof=false then
				session("reg_id")=rs("reg_id")
				session("reg_student_name")=rs("reg_student_name")
				if isnull(rs("reg_last_login2"))=true then
					session("reg_last_login2") ="First Time Login"
				else
					session("reg_last_login2")= rs("reg_last_login2")
				end if
				response.redirect("mypage.asp")
			else
				Response.Write("<script>alert('Inavid user name/password');form1.username.focus()</script>")
				'Response.Write ("<STRONG>Invalid user name/password.</strong>")
			
			end if
			
			rs.Close 
		end if
		
		
		
		
		
		%>
    
    
    </form>
</body>
</html>