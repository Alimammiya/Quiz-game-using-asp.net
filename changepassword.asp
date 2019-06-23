<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>IGNOU - Online Registration :: Change Password</title>
    <link rel="stylesheet" type="text/css" href="style/style1.css">
    <SCRIPT language="javascript">
	    function check()
		{
		
			if (form1.username.value =="")
		  	{
		    	alert("Please enter user name.")
		    	form1.username.focus()
		    	return false;
		  	}
		  	if (form1.password.value =="")
		  	{
		    	alert("Please enter old password.")
		    	form1.password.focus()
		    	return false;
		  	}
		  	if (form1.newpassword.value =="")
		  	{
		    	alert("Please enter new password.")
		    	form1.newpassword.focus()
		    	return false;
		  	}
		  	if (form1.newpassword.value != form1.confirmpassword.value)
		  	{
		    	alert("New password and confirm password should be eqaul.")
		    	form1.confirmpassword.focus()
		    	return false;
		  	}
		  	
			return true;
		
		}
	</SCRIPT>
</head>
<body>

<%
	if session("reg_id") ="" then
		response.write("<script>alert('Session time out/ login required');window.location.href='login.asp';</script>")
	end if

%>

<FORM name="form1" action="changepassword.asp" method="post" onsubmit="return check();">

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
							<IMG height=100 src="images/images.jpg" width=306 border=0></td>
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
							<td width="319" align="left" colspan="2"><A href="index.asp">
							Home</a> | <A href="starttest.asp">Play Game</a>&nbsp; |&nbsp;<a href="changepassword.asp">Change Password</a>&nbsp; |
							<a href="mypage.asp">My Page</a> |&nbsp;
							<a href="logout.asp">Logout</a></td>
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
				
				 
				
					<p align="center">&nbsp;</p>
					<p align="center">&nbsp;</p>
					<div align="center">
	<table border="0" width="500" id="table6" cellpadding="2" cellspacing="2">
		<tr>
			<td width="46">&nbsp;</td>
			<td colspan="3" align="left">
                <strong>Change Password</strong></td>
		</tr>
        <tr>
            <td style="HEIGHT: 15px" width="46">
            </td>
            <td align="left" style="WIDTH: 161px; HEIGHT: 15px">
                </td>
            <td align="left" style="WIDTH: 371px; HEIGHT: 15px">
                </td>
            <td style="HEIGHT: 15px" width="89">
            </td>
        </tr>
		<tr>
			<td width="46" style="HEIGHT: 15px">&nbsp;</td>
			<td style="WIDTH: 161px; HEIGHT: 15px" align="left">
                &nbsp;User ID:</td>
			<td style="WIDTH: 371px; HEIGHT: 15px" align="left">&nbsp;<FONT size="1" color="#626258" face="Verdana, Arial, Helvetica, sans-serif">
			<INPUT name="username" size="24" maxlength="50"  class="textb1" readonly ="true" value ="<% =session("reg_id") %>" ></FONT></td>
			<td width="89" style="HEIGHT: 15px">&nbsp;</td>
		</tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" style="WIDTH: 161px">
                &nbsp;Old Password:</td>
			<td style="WIDTH: 371px" align="left">&nbsp;<FONT size="1" color="#626258" face="Verdana, Arial, Helvetica, sans-serif"> <INPUT name="password" size="24" maxlength="30" type ="password" class="textb1" ></FONT></td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" style="WIDTH: 161px">
                &nbsp;New Password:</td>
			<td style="WIDTH: 371px" align="left">&nbsp;&nbsp;<FONT size="1" color="#626258" face="Verdana, Arial, Helvetica, sans-serif"><INPUT name="newpassword" size="24" maxlength="30" type ="password" class="textb1" ></FONT></td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" style="WIDTH: 161px">
                &nbsp;Confirm Password:</td>
			<td style="WIDTH: 371px" align="left">&nbsp;<FONT size="1" color="#626258" face="Verdana, Arial, Helvetica, sans-serif"> <INPUT name="confirmpassword" size="24" maxlength="30" type ="password" class="textb1" ></FONT></td>
			<td width="89">&nbsp;</td>
		</tr>
        <tr>
            <td width="46">
            </td>
            <td align="left" style="WIDTH: 161px">
            </td>
            <td align="left" style="WIDTH: 371px">
            </td>
            <td width="89">
            </td>
        </tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" style="WIDTH: 161px">&nbsp;</td>
			<td style="WIDTH: 371px" align="left">&nbsp;&nbsp;<INPUT type="submit" name="Submit" value="Submit" class ="button1">&nbsp;
                     
                      
              <INPUT type="reset" name="Reset" value="Reset" class ="button1" >&nbsp;
			<INPUT type="submit" name="Back" value="Go Back" class ="button1"></td>
			<td width="89">&nbsp;</td>
		</tr>
        <tr>
            <td width="46">
            </td>
            <td align="left" style="WIDTH: 161px">
            </td>
            <td align="left" style="WIDTH: 371px">
            </td>
            <td width="89">
            </td>
        </tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" style="WIDTH: 161px">&nbsp;</td>
			<td style="WIDTH: 371px" align="left">&nbsp;</td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="46" style="HEIGHT: 49px">&nbsp;</td>
			<td width="436" colspan="3" style="HEIGHT: 49px" align="left" valign="top">
                    &nbsp;</td>
		</tr>
	</table>
					</div>
				
				</td>
			</tr>
			<tr>
				<td width="661" height="19" align="left" valign="top" style="BORDER-TOP: 1px solid; BORDER-LEFT-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px" 
         >
				<p align="center"> 
				  Online Quize Game</p> 
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
				cn.execute "update registration set reg_password='" & Request.Form.Item("newpassword") & "', reg_change_password=now() where reg_id=" & Clng(Request.Form.Item("username")) 
				
				response.write("<script>alert('Password changed successfully');window.location.href='login.asp';</script>")
			else
				Response.Write("<script>alert('Inavid old password');form1.password.focus()</script>")
			
			end if
			
			rs.Close 
		end if
		
		if request("Back")="Go Back" then
			response.redirect("mypage.asp")
		end if
		
		
		
		
		%>
    
    
    </form>
</body>
</html>