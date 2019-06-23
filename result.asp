<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>IGNOU - Online Registration :: Start Test</title>
    <link rel="stylesheet" type="text/css" href="style/style1.css">

</head>
<body>
<%
	
	if session("reg_id") ="" then
		response.write("<script>alert('Session time out/ login required');window.location.href='login.asp';</script>")
	end if


			
		
	if request("Back")="Go Back" then
		response.redirect("mypage.asp")
	end if
		
	


%>




<FORM name="form1" action="result.asp" method="post"  >

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
							<IMG height=82 src="images/logo1.gif" width=306 border=0></td>
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
							Home</A> | <A href="starttest.asp">Play Game</A>&nbsp; |&nbsp;<A href="changepassword.asp">Change Password</a>&nbsp; |
							<A href="mypage.asp">My Page</a> |&nbsp;
							<A href="logout.asp">Logout</a></td>
							<td style="WIDTH: 417px">
                                <p align="right"><A href="faq.asp">FAQ's</A> |&nbsp;
								<A href="contact.asp">Contact Us</A></p></td>
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
			<td colspan="3" align="left">
                &nbsp;<p>&nbsp;</p></td>
		</tr>
		<tr>
			<td colspan="3" align="left">
                <div align="center">
					<table border="1" width="73%" cellspacing="1" style="border-collapse: collapse; padding: 4px" bordercolor="#434367" id="table7">
						<tr>
							<td bgcolor="#E6E6FA">
							<p align="center"><b>Online Quiz Result</b></td>
						</tr>
						<tr>
							<td style="padding-left: 20px">
							<table border="0" width="100%" id="table8" cellspacing="3" cellpadding="2">
								<tr>
									<td width="135">Name of Student:</td>
									<td><b> <% =session("reg_student_name") %></b></td>
								</tr>
								<tr>
									<td width="135">Examination Date:</td>
									<td><b> <% =date() %></b></td>
								</tr>
								<tr>
									<td width="135">Percent:</td>
									<td><b><% =session("percent") & "%" %></b></td>
								</tr>
								<tr>
									<td width="135">Result:</td>
									<td><b>
									<%
										if session("result") ="PASS" then
											response.write("PASS")
										else
											response.write("<font color='red'>FAIL</font>")
										end if
									%>
									
									</b></td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
        <tr>
            <td align="left" style="WIDTH: 164px; HEIGHT: 15px">
                &nbsp;</td>
            <td align="left" style="WIDTH: 369px; HEIGHT: 15px">
                &nbsp;</td>
            <td style="HEIGHT: 15px" width="89">
            &nbsp;</td>
        </tr>
		<tr>
			<td align="left" colspan="3">
			<p align="center">&nbsp;<INPUT type="submit" name="Back" value="Go Back" class ="button1"></p></td>
		</tr>
        </table>
					</div><INPUT type="hidden" name="qno">
					
				
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





    </FORM>
    
    
</body>
</html>