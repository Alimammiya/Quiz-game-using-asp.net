<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>IGNOU - Online Registration Confirmation</title>
    <link rel="stylesheet" type="text/css" href="style/style1.css">

</head>
<body>
<FORM name="form1" action="login.asp" method="post" onsubmit="return check();">

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
				
				 
				
				 &nbsp;<p align="center">&nbsp;</p>
					<p align="center">&nbsp;</p>
					<p align="center">
					
					<%
					
					set Cn=server.CreateObject("ADODB.Connection")
					set rs=server.CreateObject("ADODB.Recordset")
					set Cmm =server.CreateObject("ADODB.Command")
					Cn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath("data") & "\data.mdb" & ";Persist Security Info=true"
					Cn.Open

					rs.Open "select max(reg_id) from registration ",cn
					regid=0
					if isnull(rs(0))=false then
						regid=rs(0)
					end if
		
					rs.close
					
					if request("stream_p")="P" then
						v_straem="P"
					elseif request("stream_m")="M" then
						v_straem="M"
					end if
		
		
					regid=regid+1
					strsql=""
					strsql="insert into registration values(" _
					& regid							& ",'" _
					& request("studentname")		& "','" _
					& request("address")			& "','" _
					& request("emailid")			& "','" _
					& v_straem						& "','" _
					& request("month")				& "'," _
					& request("year")				& ",'" _
					& now()							& "','" _
					& regid							& "',null,null,null)"

					'Response.Write(strsql)

					cn.Execute(strsql)
					
					Response.Write("<strong>Registration Completed Successfully.<br><br>Your registration id is : " & regid & "<br><br>Click here to <a href='login.asp'><font color='#434367'><b><u>login</u><b></font></a></strong><br>Use your registration id as login user id and password for login.")
					
										
					%>
					
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
    
   
    
    </form>
</body>
</html>