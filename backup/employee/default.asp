<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
		<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
		<meta name="ProgId" content="FrontPage.Editor.Document">
		<title>Intel Sophia employee list</title>
		<style>
			<!--
.Entry       { background-color: #99CCFF; color: #000000; font-family: Verdana; font-size: 
               8pt; border-style: inset; border-width: 1 }
-->
		</style>
	<!--mstheme--><link rel="stylesheet" type="text/css" href="../_themes/journal/jour1011.css"><meta name="Microsoft Theme" content="journal 1011, default">
</head>

	<body>
		<form method="POST" action="default.asp">
			<%
	temp=Request.Form("Name")
	if len(temp)>0 then name=temp else name=""
	temp=Request.Form("FirstName")
	if len(temp)>0 then FirstName=temp else FirstName=""
	if Request.Form("Department")<>"" then Department=int(Request.Form("Department")) else Department=0
	set conn=Server.CreateObject("adodb.connection")
	conn.Open "PhoneList","",""
%>
			<table border="0" width="100%" height="27" cellspacing="0" cellpadding="2" bgcolor="#6699FF">
				<tr>
					<td width="31%" height="19">
						<font face="Verdana" size="2">Name :<input type="text" name="Name" size="20" class="Entry"></font>
					</td>
					<td width="36%" height="19">
						<font face="Verdana" size="2">First name :<input type="text" name="FirstName" size="20" class="Entry"></font>
					</td>
					<td width="28%" height="19">
						<font face="Verdana" size="2">Department : <select size="1" name="Department" class="Entry">
								<%
				set rs=conn.Execute("select * from Department order by Department")
				Response.Write "<option value='0'"
				if Department=0 then Response.Write " Selected"
				Response.Write ">All"&chr(13)
				do until rs.eof
					Response.Write "<option value='"&rs("Index")&"'"
					if Department=rs("Index") then Response.Write " selected"
					Response.Write ">"&rs("Department")&chr(13)
					rs.movenext
				loop
				bName="thiry"
				MySQL="from PhoneList,Department where PhoneList.Department=Department.Index"
				if Name<>"" then MySQL=MySQL&" AND Name like '%"&Name&"%'"
				if FirstName<>"" then MySQL=MySQL&" AND FirstName like '%"&FirstName&"%'"
				if Department>0 then MySQL=MySQL&" AND Index="&Department
				set rs=conn.Execute ("select count(*) "&MySQL&" AND Active=TRUE")
				Total=rs(0)
			%>
							</select></font>
					</td>
					<td width="5%" height="19">
						<font face="Verdana" size="2"><input type="submit" value="Go" style="background-color: #6699FF; border: 2 outset #6699FF"></font>
					</td>
				</tr>
				<tr>
					<td width="100%" height="1" colspan="4">
						<font face="Verdana" size="2">Your search has returned
							<% =Total %>
							record(s).&nbsp;&nbsp; <a href="list.asp">Site list</a> </font>
					</td>
				</tr>
			</table>
		</form>
		<%
	set rs=conn.Execute ("select * "&MySQL&" And Active=TRUE order by name")
		
	if Total>1 then
%>
		<table border="0" width="100%" cellspacing="0" cellpadding="0" class="table2" style="border-style: inset; border-width: 2">
			<tr>
				<td width="40%" bgcolor="#0099FF" style="border-style: outset; border-width: 1">
					<font face="Arial" size="2"><b>Name</b></font>
				</td>
				<td width="20%" bgcolor="#0099FF" style="border-style: outset; border-width: 1">
					<font face="Arial" size="2"><b>Office</b></font>
				</td>
				<td width="20%" bgcolor="#0099FF" style="border-style: outset; border-width: 1">
					<font face="Arial" size="2"><b>Mobile</b></font>
				</td>
			</tr>
			<%  
		do until rs.eof
			 if bgcolor="#BFEBFF" then bgcolor="#ffffff" else bgcolor="#BFEBFF" 
			 response.write "<tr>"&chr(13)
			 response.write "<td width='40%' bgcolor="&bgcolor&"><font face='Arial' size='2'>"
			 if rs("EMail")<>"" then isPerson=TRUE else IsPerson=FALSE
			 if IsPerson then response.write "<A HREF='detail.asp?ID="&rs("ID")&"'>"
			 response.write rs.fields("name")&" "&rs.fields("FirstName")
			 if IsPerson then response.write "</A>"&chr(13)
			 response.write "</td>"&chr(13)
			 response.write "<td width='20%' bgcolor="&bgcolor&"><font face='Arial' size='2'>"&rs.fields("Office")&"</td>"&chr(13)
			 response.write "<td width='20%' bgcolor="&bgcolor&"><font face='Arial' size='2'>"
			 if rs.fields("HideMobile")=FALSE then response.write rs.fields("Mobile") else response.write "&nbsp;"
			 response.write "</td>"&chr(13)
			 response.write "</tr>"&chr(13)
			 rs.movenext
		loop
	%>
		</table>
		<%
		conn.Close
	else
		if not(rs.eof) then 
			ID=rs("ID")
			conn.Close
			%>
		<!--
			#include virtual="/employee/detail.asp"
		-->
		<%
		end if
	end if
	%>
	</body>
</html>