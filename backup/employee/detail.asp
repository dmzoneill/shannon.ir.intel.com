<html>

<head>
<meta http-equiv="Content-Language" content="fr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>First name</title>
<!--mstheme--><link rel="stylesheet" type="text/css" href="../_themes/journal/jour1011.css"><meta name="Microsoft Theme" content="journal 1011, default">
</head>

<body>
<%
	if ID=0 then ID=Request.QueryString("ID")
	set conn=Server.CreateObject("adodb.connection")
	conn.Open "PhoneList","",""
	
	set rs=conn.Execute("select * from PhoneList,Department where department.Index=PhoneList.Department AND PhoneList.ID="&ID)
%>
<table border="0" width="100%" bgcolor="#99CCFF" height="236">
  <tr>
    <td width="56%" rowspan="2" height="232">
      <table border="0" width="100%">
        <tr>
          <td width="100%" colspan="2" bgcolor="#6699FF">
            <p align="center"><b><font color="#FFFFFF" face="Arial" size="4">
            <% =rs("name")&", "&rs("FirstName")%></font></b></td>
        </tr>
        <tr>
          <td width="27%">&nbsp;</td>
          <td width="73%">&nbsp;</td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">First name :</font></td>
          <td width="73%"><font face="Verdana" size="2"><%=rs("FirstName")%></td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">Last name :</font></td>
          <td width="73%"><font face="Verdana" size="2"><%=rs("Name")%></td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">Title :</font></td>
          <td width="73%"><font face="Verdana" size="2"><%=rs("Title")%></td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">Department :</font></td>
          <td width="73%"><font face="Verdana" size="2"><%=rs("Department")%></td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">e-mail :</font></td>
          <td width="73%"><font face="Verdana" size="2">
          <%
						if rs("EMail")<>"" then
							Response.Write "<a href='mailto:"&rs("EMail")&"'>"&rs("EMail")&"</A>"
						end if
          %></td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">Phone :</font></td>
          <td width="73%"><font face="Verdana" size="2"><%=rs("Office")%></td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">Mobile :</font></td>
          <td width="73%"><font face="Verdana" size="2">
          <%
						if rs("HideMobile")=FALSE then Response.write rs("Mobile")
					%></td>
        </tr>
        <tr>
          <td width="27%"><font face="Verdana" size="2">
          			</td>
        </tr>
      </table>
    </td>
    <td height="215">
      <div align="center">
        <center>
        <table border="0" style="border: 2 inset #99CCFF" cellspacing="0" cellpadding="0">
          <tr>
            <td width="100%">
      <%
				if rs("Picture")<>"" then
					Response.Write "<IMG src='pictures/"&rs("Picture")&"'>"
				else
					Response.Write "&nbsp;"
				end if
			%></td>
          </tr>
        </table>
        </center>
      </div>
      
			</td>
  </tr>
  <tr>
    <td height="13">
      <p align="center"><font face="Verdana" size="2">WWID : <%=rs("WWID")%></font></p>
    </td>
  </tr>
</table>

</body>
<%
	conn.Close
%>
</html>
