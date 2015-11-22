<html>

<head>
<meta http-equiv="Content-Language" content="fr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 1</title>
<!--mstheme--><link rel="stylesheet" type="text/css" href="../_themes/journal/jour1011.css"><meta name="Microsoft Theme" content="journal 1011, default">
</head>

<body>
<%
	MyIndex=int(Request.QueryString("Index"))
%>
<p><b><font face="Verdana" size="4">
<%  
	Set Conn=Server.CreateObject("ADODB.Connection")
	conn.open "PhoneList","",""
	if MyIndex=0 then 
		 response.write "New employee"
		 IsActive=TRUE
	else	 
		 MySQL="Select * from PhoneList where Id="&MyIndex
		 set rs=conn.execute(MySQL)
		 if not(rs.eof) then
		 		MyName=rs.fields("Name")
				MyFirstName=rs.fields("FirstName")
				MyOffice=rs.fields("Office")
				MyHome=rs.fields("Home")
				MyMobile=rs.fields("Mobile")
				MyFax=rs.fields("Fax")
				MyData=rs.fields("Data")
				MyEMail=rs.fields("EMail")
				MyDep=rs.fields("Department")
				MyWWID=rs.fields("WWID")
				MyTitle=rs.fields("Title")
				MyPicture=rs.fields("Picture")
				MyAddress=rs.fields("Address")
				MyZipCode=rs.fields("ZipCode")
				MyCity=rs.fields("City")
				if rs.fields("HideMobile")=TRUE then HideMobile=TRUE else HideMobile=FALSE
				if rs.fields("Active")=FALSE then IsActive=FALSE else IsActive=TRUE
			end if
			if Request.QueryString("Action")="Delete" then 
				 Delete=TRUE 
				 response.write "Remove "&MyFirstName&" "&MyName&" from database ?"
			else 
				 response.write "Modifying "&MyFirstName&" "&MyName&" ?"
				 Delete=False 
			end if
	end if
%>
</font></b></p>
<!--webbot BOT="GeneratedScript" PREVIEW=" " startspan --><script Language="JavaScript" Type="text/javascript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.Name.value == "")
  {
    alert("Please enter a value for the \"Name\" field.");
    theForm.Name.focus();
    return (false);
  }

  if (theForm.Name.value.length > 50)
  {
    alert("Please enter at most 50 characters in the \"Name\" field.");
    theForm.Name.focus();
    return (false);
  }

  if (theForm.FirstName.value == "")
  {
    alert("Please enter a value for the \"FirstName\" field.");
    theForm.FirstName.focus();
    return (false);
  }

  if (theForm.FirstName.value.length > 50)
  {
    alert("Please enter at most 50 characters in the \"FirstName\" field.");
    theForm.FirstName.focus();
    return (false);
  }

  if (theForm.Title.value == "")
  {
    alert("Please enter a value for the \"Title\" field.");
    theForm.Title.focus();
    return (false);
  }

  if (theForm.Title.value.length > 50)
  {
    alert("Please enter at most 50 characters in the \"Title\" field.");
    theForm.Title.focus();
    return (false);
  }

  if (theForm.WWID.value == "")
  {
    alert("Please enter a value for the \"WWID\" field.");
    theForm.WWID.focus();
    return (false);
  }

  if (theForm.WWID.value.length > 50)
  {
    alert("Please enter at most 50 characters in the \"WWID\" field.");
    theForm.WWID.focus();
    return (false);
  }

  if (theForm.Office.value == "")
  {
    alert("Please enter a value for the \"Office\" field.");
    theForm.Office.focus();
    return (false);
  }

  if (theForm.Office.value.length > 50)
  {
    alert("Please enter at most 50 characters in the \"Office\" field.");
    theForm.Office.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><form method="POST" action="Admin.asp" onsubmit="return FrontPage_Form1_Validator(this)" name="FrontPage_Form1" language="JavaScript">
<table border="0" width="497" style="border-style: outset; border-width: 2" cellspacing="0" cellpadding="0">
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Name :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;
    </td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;
    </td>
    <td width="363" bgcolor="#FFFFE1"><!--webbot bot="Validation"
      B-Value-Required="TRUE" I-Maximum-Length="50" --><input type="text" name="Name" size="37" value="<% response.write MyName%>" maxlength="50">
    </td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">First name :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><!--webbot bot="Validation"
      B-Value-Required="TRUE" I-Maximum-Length="50" --><input type="text" name="FirstName" size="37" value="<% response.write MyFirstName %>" maxlength="50"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Title
      :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><!--webbot bot="Validation"
      B-Value-Required="TRUE" I-Maximum-Length="50" --><input type="text" name="Title" size="37" value="<% response.write MyTitle %>" maxlength="50"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Department
      :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><select size="1" name="Department">
    <%
			set rs=conn.Execute("select * from Department")
			do until rs.eof
				Response.Write "<option value='"&rs("Index")&"'"
				if rs("Index")=MyDep then Response.Write " selected"
				Response.Write ">"&rs("Department")&chr(13)
				rs.movenext
			loop
			conn.close
    %>
      </select></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">WWID
      :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><!--webbot bot="Validation"
      B-Value-Required="TRUE" I-Maximum-Length="50" --><input type="text" name="WWID" size="37" value="<% response.write MyWWID %>" maxlength="50"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">E-mail
      :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="EMail" size="37" value="<% response.write MyEMail %>" maxlength="50"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Office :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><!--webbot bot="Validation"
      B-Value-Required="TRUE" I-Maximum-Length="50" --><input type="text" name="Office" size="37" value="<% response.write MyOffice %>" maxlength="50"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Home :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="Home" size="37" value="<% response.write MyHome %>"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Mobile phone :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="Mobile" size="37" value="<% response.write MyMobile %>"></td>
  </tr>
	<tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Hide mobile information</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="checkbox" name="HideMobile" <% if HideMobile=TRUE then response.write "checked"%>></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Address
      :</font>&nbsp;</td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="Address" size="37" value="<% response.write MyAddress %>"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Zip
      Code :&nbsp;</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="Zipcode" size="37" value="<% response.write MyZipCode %>"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">City
      :&nbsp;</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="City" size="37" value="<% response.write MyCity %>"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Fax
      :&nbsp;</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="Fax" size="37" value="<% response.write MyFax %>"></td>
  </tr>
  <tr>
    <td width="240" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Data
      :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>
    <td width="363" bgcolor="#FFFFE1"><input type="text" name="Data" size="37" value="<% response.write MyData %>"></td>
  </tr>
  <tr>
    <td width="204" bgcolor="#BFEBFF" align="right">&nbsp;</td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>    
    <td width="408" bgcolor="#FFFFE1">&nbsp;
    </td>
  </tr>
  <tr>
    <td width="204" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Picture
      :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>    
    <td width="408" bgcolor="#FFFFE1"><input type="text" name="Picture" size="37" value="<% response.write MyPicture %>">
    </td>
  </tr>
  <tr>
    <td width="204" bgcolor="#BFEBFF" align="right">&nbsp;</td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>    
    <td width="408" bgcolor="#FFFFE1">&nbsp;
    </td>
  </tr>
  <tr>
    <td width="204" bgcolor="#BFEBFF" align="right"><font face="Arial" size="2">Has
      resigned :</font></td>
    <td width="17" bgcolor="#BFEBFF">&nbsp;</td>
    <td width="17" bgcolor="#FFFFE1">&nbsp;</td>    
    <td width="408" bgcolor="#FFFFE1"><input type="checkbox" name="Active" <% if IsActive=FALSE then response.write "checked"%> value="ON"><font size="1" face="Arial"><i>If
      you click here, the person won't appear anymore in the list.</i></font>
    </td>
  </tr>
</table>
<p>
<input type="submit" value="<% 
	if MyIndex=0 then
		 response.write "Add"
	else
		 if Delete=True then response.write "Delete" else response.write "Modify" 
	end if
%>" name="Action"><input type="hidden" name="Index" value="<% response.write MyIndex %>">
</p>
 </form>
</body>

