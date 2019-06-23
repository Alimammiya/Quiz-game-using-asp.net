<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>IGNOU - Online Registration :: My Page</title>
    <link rel="stylesheet" type="text/css" href="style/style1.css">

</head>
<body>
<%
	'response.write("reg_id =" session("reg_id"))
	if session("reg_id") ="" then
		response.write("<script>alert('Session time out/ login required');window.location.href='login.asp';</script>")
	end if


	'get the value
	


%>






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
				
				 
				
					<div align="center">
	<table border="0" width="100%" id="table6" cellpadding="2">
		<tr>
			<td width="46">&nbsp;</td>
			<td colspan="3" align="left">
                &nbsp;</td>
		</tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td colspan="3" align="left">
                <strong>Welcome back, <% =session("reg_student_name") %></strong></td>
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
			<td style="HEIGHT: 15px" align="left" colspan="2">
                <b>Your Last login was : <% =session("reg_last_login2") %></b></td>
			<td width="89" style="HEIGHT: 15px">&nbsp;</td>
		</tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" style="WIDTH: 161px">
                &nbsp;</td>
			<td style="WIDTH: 371px" align="left">&nbsp;</td>
			<td width="89">&nbsp;</td>
		</tr>
        <tr>
            <td width="46" height="19">
            &nbsp;</td>
            <td align="left" colspan="2" height="19">
            <b>Your Test History</b></td>
            <td width="89" height="19">
            &nbsp;</td>
        </tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" colspan="2">
			<table border="1" width="437" cellspacing="1" style="border-collapse: collapse" bordercolor="#434367" id="table7">
				<tr>
					<td width="68" align="center" bgcolor="#C0C0C0"><b>Sr. No.</b></td>
					<td width="147" align="center" bgcolor="#C0C0C0"><b>Test 
					Date</b></td>
					<td width="101" align="center" bgcolor="#C0C0C0"><b>Percent</b></td>
					<td width="105" align="center" bgcolor="#C0C0C0"><b>Result</b></td>
				</tr>
				
				<%
				
					set Cn=server.CreateObject("ADODB.Connection")
					set rs=server.CreateObject("ADODB.Recordset")
					set Cmm =server.CreateObject("ADODB.Command")
					Cn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath("data") & "\data.mdb" & ";Persist Security Info=true"
					Cn.Open
					
					rs.Open "select * from test_master where test_student_id=" & session("reg_id") & " order by test_id ",cn
					'Response.Write( "select * from test_master where test_student_id=" & session("reg_id") & " order by test_id")
					c=0		
					while rs.eof=false
						c=c+1
						response.write("<tr>")
							response.write("<td width='68' align='center' valign='top'>" & c & "</td>")
							response.write("<td width='147' align='center' valign='top'>" & rs("test_date") & "</td>")
							response.write("<td width='101' align='center' valign='top'>"& rs("test_percent") & "</td>")
							response.write("<td width='105' align='center' valign='top'>"& rs("test_result") & "</td>")
						response.write("</tr>")
						
						rs.movenext
					wend
					rs.close
					 
				%>
				
			</table>
			</td>
			<td width="89">&nbsp;</td>
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

    
    
    
</body>
</html>