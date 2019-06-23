<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>IGNOU - Online Registration :: Start Test</title>
    <link rel="stylesheet" type="text/css" href="style/style1.css">

</head>
<body>
<%
	'response.write("reg_id =" session("reg_id"))
	if session("reg_id") ="" then
		response.write("<script>alert('Session time out/ login required');window.location.href='login.asp';</script>")
	end if
	session("exam_end")=""

			
	if request("submit")="Submit" then

		set Cn=server.CreateObject("ADODB.Connection")
		set rs=server.CreateObject("ADODB.Recordset")
		set rs1=server.CreateObject("ADODB.Recordset")
		
		set Cmm =server.CreateObject("ADODB.Command")
		Cn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath("data") & "\data.mdb" & ";Persist Security Info=true"
		Cn.Open
			
		rs.Open "select   count(*) from question_master ",cn
		c=0
		c=rs(0)
		if c<=10 then
						
			response.write("<script>alert('Not enough question avaibale for the test');window.location.href='starttest.asp';</script>")
		else
			'>>> random set
			n2=0
			Randomize
			n2 = cint(Rnd * c)
				    
			q1=""	    
			for i=0 to 9
				if n2>c then
					n2=1
				end if
				q1= q1 & n2 & "~"
				'>>> question no
				session("q_" & i+1)=n2
				'>>> answer given
				session("ag_" & i+1)=0
				'>>> get the right answer
				rs1.Open "select a_right_answer from  answer_master where a_q_id =" & n2 & " order by a_id ",cn
				j=0
				while rs1.EOF =false
					j=j+1
					if rs1("a_right_answer")=1 then
						session("a_" & i+1)=j
						'exit while
						
					end if
					rs1.MoveNext 
				wend
				rs1.Close
				
				n2=n2+1
			next
			session("ind")=1		
			Response.Redirect("test.asp")
				
			
		end if
			
		rs.Close 
	end if
		
		
	if request("Back")="Go Back" then
		response.redirect("mypage.asp")
	end if
		
	


%>




<FORM name="form1" action="starttest.asp" method="post"  >

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
			<td width="46">&nbsp;</td>
			<td colspan="3" align="left">
                &nbsp;<p>&nbsp;</p></td>
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
                <b>&nbsp;<font color="#ff0000" size="2">Online Quiz</font></b></td>
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
            <b>NOTE : Quiz will have 10 questions Each question will have 4 
			options, you need to select correct answer among them, total marks 
			will be 100 and passing percent is 50%.</b></td>
            <td width="89" height="19">
            &nbsp;</td>
        </tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" colspan="2">
			&nbsp;</td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" colspan="2">
			<p align="center"><i><b>All the best !</b></i></p></td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="46">&nbsp;</td>
			<td align="left" colspan="2">
			<p align="center"><INPUT type="submit" name="Submit" value="Submit" class ="button1">&nbsp;
			<INPUT type="submit" name="Back" value="Go Back" class ="button1"></p></td>
			<td width="89">&nbsp;</td>
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

		<%

		
		
		
		%>




    </FORM>
    
    
</body>
</html>