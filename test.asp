<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>IGNOU - Online Registration :: Play Game</title>
    <link rel="stylesheet" type="text/css" href="style/style1.css">

</head>
<body>
<%
	'response.write("reg_id =" session("reg_id"))
	if session("reg_id") ="" then
		response.write("<script>alert('Session time out/ login required');window.location.href='login.asp';</script>")
	end if

	if session("exam_end") <> "" then
		response.write("<script>alert('Exam is completed.');window.location.href='mypage.asp';</script>")
	end if
	ind=0
			
	if request("back")="<<" then
		session("ag_" & cint(session("ind")))=Request.Form("r1")
		ind=cint(session("ind"))
		if ind>1 then
			ind=ind-1
			session("ind")=ind
		else
			'response.write("<script>alert('First Question');")
		end if
		
		

	end if

	if request("next")=">>" then
		session("ag_" &cint(session("ind")))=Request.Form("r1")
		ind=cint(session("ind"))
		if ind<10 then
			ind=ind+1
			session("ind")=ind
		else
			'response.write("<script>alert('Last Question');")
		end if
		
		
	end if
	
			
		

		
	set Cn=server.CreateObject("ADODB.Connection")
	set rs=server.CreateObject("ADODB.Recordset")
	set rs1=server.CreateObject("ADODB.Recordset")
		
	set Cmm =server.CreateObject("ADODB.Command")
	Cn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath("data") & "\data.mdb" & ";Persist Security Info=true"
	Cn.Open
		
	ind=cint(session("ind"))
	'>> get question
	rs.Open "select  * from question_master where q_id =" & session("q_" & ind) ,cn
	str_qst=rs("q_text")
	rs.Close 

	'>>> get answer
	rs.Open "select  * from answer_master where a_q_id =" & session("q_" & ind) ,cn
	c=0
	while rs.EOF =false
		c=c+1
		if c=1 then
			str_ans1=rs("a_text")
		end if
		if c=2 then
			str_ans2=rs("a_text")
		end if
		if c=3 then
			str_ans3=rs("a_text")
		end if
		if c=4 then
			str_ans4=rs("a_text")
		end if
		rs.MoveNext 
	wend 
	rs.Close 
	
	
	if request("end")="End Test" then
		session("ag_" & cint(session("ind")))=Request.Form("r1")
		session("exam_end")="END"
		'>>> calculating results
		c=0
		for i=1 to 10
			'Response.Write ( session("ag_" & i) & " ===== " & session("a_" & i) & "<br>")
			if cint(session("ag_" & i)) = cint(session("a_" & i)) then
				c=c+1
			end if
		next
		session("marks")=c
		session("percent")=c*10 
		if c*10 >=50 then
			session("result")="PASS" 
		else
			session("result")="FAIL"
		end if
		set Cn1=server.CreateObject("ADODB.Connection")
		Cn1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath("data") & "\data.mdb" & ";Persist Security Info=true"
		Cn1.Open
		
		cn1.Execute "insert into test_master " _
		 & " (test_student_id,test_date,test_marks,test_percent,test_result) " _
		 & " values (" _
		 &   session("reg_id") & ",'" & now() & "'," & session("marks") & "," & session("percent") & ",'" & session("result") & "') "
		
		
		response.redirect("result.asp")
	end if

%>




<FORM name="form1" action="test.asp" method="post"  >

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
	<table border="0" width="640" id="table6" cellpadding="2" cellspacing="3">
		<tr>
			<td align="left" height="29" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px" colspan="4" bgcolor="#E6E6FA">
			Examination : <b>Online Quiz</b>&nbsp;&nbsp;&nbsp;&nbsp; Candidate:
			<b><% =session("reg_student_name") %></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date: <b><% =Date() %></b></td>
		</tr>
		<tr>
			<td width="56" align="left" valign="top" height="95" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px; padding-right:10px; padding-top:10px" colspan="2">
			<b>Q. <%=session("ind") %></b></td>
			<td colspan="2" align="left" valign="top" height="95" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px; padding-right:10px; padding-top:10px">
                <b><% =str_qst%></b><p>&nbsp;</p></td>
		</tr>
		<tr>
			<td width="17" align="right" valign="top" height="48"><b>A </b></td>
			<td width="32" align="left" valign="top" height="48">
			<input type="radio" value="1" <% if cint( session("ag_" & session("ind"))) =1 then response.write("checked") %> name="R1" style="font-weight: 700"></td>
			<td colspan="2" align="left" valign="top" height="48">
                <b><% =str_ans1%></b></td>
		</tr>
		<tr>
			<td width="17" align="right" valign="top" height="45"><b>B </b></td>
			<td width="32" align="left" valign="top" height="45">
			<input type="radio" value="2" <% if cint( session("ag_" & session("ind"))) =2 then response.write("checked") %>  name="R1" style="font-weight: 700"></td>
			<td colspan="2" align="left" valign="top" height="45">
                <b><% =str_ans2%></b></td>
		</tr>
		<tr>
			<td width="17" align="right" valign="top" height="40"><b>C </b></td>
			<td width="32" align="left" valign="top" height="40">
			<input type="radio" value="3" <% if cint( session("ag_" & session("ind"))) =3 then response.write("checked") %>   name="R1" style="font-weight: 700"></td>
			<td colspan="2" align="left" valign="top" height="40">
                <b><% =str_ans3%></b></td>
		</tr>
		<tr>
			<td width="17" align="right" valign="top" height="46"><b>D </b></td>
			<td width="32" align="left" valign="top" height="46">
			<input type="radio" value="4" <% if cint( session("ag_" & session("ind"))) =4 then response.write("checked") %>  name="R1" style="font-weight: 700"></td>
			<td colspan="2" align="left" valign="top" height="46">
                <b><% =str_ans4%></b></td>
		</tr>
		<tr>
			<td width="56" align="left" valign="top" colspan="2">&nbsp;</td>
			<td colspan="2" align="left" valign="top">
                &nbsp;</td>
		</tr>
		<tr>
			<td width="56" colspan="2">&nbsp;</td>
			<td align="left" width="471">
			&nbsp;</td>
			<td width="89">&nbsp;</td>
		</tr>
		<tr>
			<td width="56" colspan="2">&nbsp;</td>
			<td align="left" width="471">
			<p><INPUT type="submit" name="back" value="<<" class ="button1">&nbsp;&nbsp; <INPUT type="submit" name="next" value=">>" class ="button1">&nbsp;&nbsp;&nbsp;&nbsp;

			<INPUT type="submit" name="end" value="End Test" class ="button1"></p></td>
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





    </FORM>
    
    
</body>
</html>