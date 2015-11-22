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
<table border="0" width="100%">
  <tr>
    <td width="19%" rowspan="2"><img border="0" src="intel.gif"></td>
    <td width="31%" rowspan="2"><b><font face="Arial" size="2">Intel Corporation</font></b><font face="Arial" size="2"><br>
      Shannon<br>
    Ireland</font></td>
    <td width="21%">
      <p align="right"><font face="Arial" size="2">Operator :&nbsp;<br>
      Fax :&nbsp;<br>
      Voicemail :</font></p>
    </td>
    <td width="29%"><font face="Arial" size="2"> +33 (0)4 93
      00 14 00<br>
      +33 (0)4 93 00 14 01<br>
      +33 (0)4 93 00 14 99</font></td>
  </tr>
  <tr>
    <td width="21%">&nbsp;</td>
    <td width="29%"><a href="Default.asp"><img border="0" src="Back.gif"></a></td>
  </tr>
</table>
<%
	Set Conn=Server.CreateObject("adodb.Connection")
	Conn.open "Phonelist","",""
	MySQL="Select * from PhoneList where Active=TRUE order by name"
	set rs=conn.execute(MySQL)
%>
<table border="0" width="100%" cellspacing="0" cellpadding="0" class="table2" style="border-style: inset; border-width: 2">
  <tr>
    <td width="40%" bgcolor="#0099FF" style="border-style: outset; border-width: 1"><font face="Arial" size="2"><b>Name</b></font></td>
    <td width="20%" bgcolor="#0099FF" style="border-style: outset; border-width: 1"><font face="Arial" size="2"><b>Office</b></font></td>
    <td width="20%" bgcolor="#0099FF" style="border-style: outset; border-width: 1"><font face="Arial" size="2"><b>Mobile</b></font></td>
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
	conn.close
%>
</body>

</html>