<html>

<head>
<meta http-equiv="Content-Language" content="fr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 1</title>
<style>
<!--
table2        { border-left-style: outset; border-left-width: 1; border-right-style: solid; 
               border-right-width: 1; border-top-style: outset; 
               border-top-width: 1; border-bottom-style: solid; 
               border-bottom-width: 1 }
-->
</style>
<!--mstheme--><link rel="stylesheet" type="text/css" href="../_themes/journal/jour1011.css"><meta name="Microsoft Theme" content="journal 1011, default">
</head>

<body>
<table border="0" width="100%" height="93">
  <tr>
    <td width="18%" rowspan="2" height="89"><img border="0" src="intel.gif"></td>
    <td width="27%" rowspan="2" height="89"><b><font face="Arial" size="2">Intel Corporation</font></b><font face="Arial" size="2"><br>
      Shannon<br>
    Ireland</font></td>
    <td width="21%" height="35">
      <p align="right"><font face="Arial" size="2">Operator:&nbsp;<br>
      Fax:&nbsp;<br>
      Voicemail :&nbsp;</font>
    </td>
    <td width="34%" height="35"><font face="Arial" size="2"> +33 (0)4 93 00 14 00<br>
      </font><font face="Arial" size="2"> +33 (0)4 93 00 14 01<br>
      +33 (0)4 93 00 14 99</font>
    </td>
  </tr>
  <tr>
    <td width="55%" colspan="2" height="50">

    <p align="center"><a href="fiche.asp?index=0"><img border="0" src="NewPerson.gif" alt="Add a new person in the employee list"></a> 
    <a href="admin.asp"> 
    <img border="0" src="Active.gif" alt="Show active Intel employees"></a>  <a href="admin.asp?IsActive=FALSE"><img border="0" src="Resigned.gif" alt="Show Intel employees who have resigned"></a> <a href="list.asp"><img border="0" src="Back.gif" alt="Log out from the employee administration page"></a>
    </td>
  </tr>
</table>
<%
	Action=request.Form("Action")
	MyIndex=request.form("Index")
	MyName=request.QueryString("Name")
	MyFirstName=request.QueryString("FirstName")
	MyOffice=request.QueryString("Office")
	MyHome=request.QueryString("Home")
	MyMobile=request.QueryString("Mobile")
	MyFax=request.QueryString("Fax")
	MyData=request.QueryString("Data")
	MyEMail=request.QueryString("EMail")
	myAddress=request.queryString("Address")
	if UCase(Request.Form("Active"))="ON" then Active=FALSE else Active=TRUE
	if request.Form("HideMobile")="on" then HideMobile=TRUE else HideMobile=FALSE
	if request.QueryString("IsActive")="FALSE" then IsActive=FALSE else IsActive=TRUE
	Set Conn=Server.CreateObject("ADODB.Connection")
	Conn.open "PhoneList","",""	
	if len(Action)>0 then
	  Set rs=server.createObject ("ADODB.recordset")
	   select case Action
	     case "Add": 
				rs.Open "PhoneList", conn, 1, 2 ,2 
	  		rs.Addnew
	  		for each Value in Request.Form
	  			if Value<>"Action" AND VAlue<>"ID" then 
	  				select case Value
	  					case "HideMobile" : rs.Fields("HideMobile")=HideMobile
	  					case "Active" : rs.Fields("Active")=Active
	  					case "Index" : ID=Request.Form("Index")
	  					case else : if Request.Form(Value)<>"" then rs.Fields(Value)=Request.Form(Value)
	  				end select
	  			end if
	  		next 
	  		rs.Fields("Active")=Active
				rs.update
				rs.close
	   	  set rs=nothing
	  	 case "Modify": 
				MySQL="Select * from PhoneList where ID="&MyIndex
				rs.open MySQL, conn,1,4,1
				if not(rs.eof) then
					for each Value in Request.Form
	  				if Value<>"Action" AND VAlue<>"ID" then 
	  					select case Value
	  						case "HideMobile" : rs.Fields("HideMobile")=HideMobile
	  						case "Active" : rs.Fields("Active")=Active
	  						case "Index" : ID=Request.Form("Index")
	  						case else : 
	  							if Request.Form(Value)<>"" then rs.Fields(Value)=Request.Form(Value)
	  					end select
	  				end if
	  			next 
	  			rs.Fields("Active")=Active
		   		rs.updateBatch
					rs.close
					set rs=nothing
		   end if
	     case "Delete": 
		   MySQL="Delete from PhoneList where ID="&MyIndex
		   conn.execute(MySQL)
	   End Select
	end if

	MySQL="Select * from PhoneList where Active="&IsActive&" order by name"
	set rs=conn.execute(MySQL)
%>
<form method="GET" action="fiche.asp">
<table border="0" width="100%" cellspacing="0" cellpadding="0" class="table2" style="border-style: inset; border-width: 2">
  <tr>
    <td width="40%" bgcolor="#0099FF" style="border-style: outset; border-width: 1"><font face="Arial" size="2"><b>Name</b></font></td>
    <td width="20%" bgcolor="#0099FF" style="border-style: outset; border-width: 1"><font face="Arial" size="2"><b>Office</b></font></td>
	<td width="20%" bgcolor="#0099FF" style="border-style: outset; border-width: 1"><font face="Arial" size="2"><b>Mobile</b></font></td>
	<td width="20%" bgcolor="#0099FF" style="border-style: outset; border-width: 1"><font face="Arial" size="2"><b>Home</b></font></td>
  </tr>
	<%  
		do until rs.eof
			 if bgcolor="#BFEBFF" then bgcolor="#ffffff" else bgcolor="#BFEBFF" 
			 response.write "<tr>"&chr(13)
			 response.write "<td width='40%' bgcolor="&bgcolor&"><font face='Arial' size='2'>"
			 response.write "<input type='radio' value='"&rs.fields("Id")&"' name='Index'>"&chr(13)
			 response.write "<A HREF='fiche.asp?index="&rs.fields("Id")&"'>"
			 response.write rs.fields("name")&" "&rs.fields("Firstname")&"</A></td>"&chr(13)
			 response.write "<td width='20%' bgcolor="&bgcolor&"><font face='Arial' size='2'>"&rs.fields("Office")&"</td>"&chr(13)
			 response.write "<td width='20%' bgcolor="&bgcolor&"><font face='Arial' size='2'>"
			 if rs.fields("HideMobile")=FALSE then response.write rs.fields("Mobile") else response.write "<I>"&rs("Mobile")&"</I>"
			 response.write "</td>"&chr(13)
 			 response.write "<td width='20%' bgcolor="&bgcolor&"><font face='Arial' size='2'>"&rs.fields("Home")&"</td>"&chr(13)
			 response.write "</tr>"&chr(13)
			 rs.movenext
		loop
	%>
</table>
<%  
	conn.close
	set conn=nothing
%>

 <input type="submit" name="Action" value="Delete"><input type="submit" value="Modify" name="Action">
</form>
</body>

</html>