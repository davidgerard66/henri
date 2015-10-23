<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="../Connections/basepfister.asp" -->
<%
Dim Recordset1
Dim Recordset1_numRows

Set Recordset1 = Server.CreateObject("ADODB.Recordset")
Recordset1.ActiveConnection = MM_basepfister_STRING
Recordset1.Source = "SELECT * FROM userw"
Recordset1.CursorType = 0
Recordset1.CursorLocation = 2
Recordset1.LockType = 1
Recordset1.Open()

Recordset1_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
Recordset1_numRows = Recordset1_numRows + Repeat1__numRows
%>
<%
if request.form("ident")="admin:c2ic2i" then session("ident")=1 end if 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Document sans titre</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../stylecss/pfister.css" rel="stylesheet" type="text/css">
</head>

<body>
<% if session("ident")="" then %>
<table width="75%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><strong>Identifiez vous : Entrez votre code d'authentification personnel.</strong></td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td><form action="index.asp" method="post" name="form1" target="_top">
        <input name="ident" type="text" id="ident">
        <input type="submit" name="Submit" value="Envoyer">
      </form></td>
    <td>&nbsp;</td>
  </tr>
</table>
<% else %>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="12%">&nbsp;</td>
    <td width="88%" class="textepfister14">Abonn&eacute;s RECOUV.COM</td>
  </tr>
  <tr> 
    <td colspan="2" class="textepfisterjaune"><span class="textepfister">[ niveau 
      de droits :</span> 0 : Remises de dossiers uniquement; <span class="textepfisterbleuclair">1: 
      Remises de dossiers et connu/pas connu;</span> <br> <span class="textepfisterrouge">2: 
      TOUT les droits</span> ;<span class="textepfistervert">3:consultation et 
      remises de dossiers;</span> <span class="textepfister">4: connu/pas connu 
      uniquement]</span></td>
  </tr>
  <tr>
    <td colspan="2" class="textepfisterjaune">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="2"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr> 
          <td align="left" valign="top" bgcolor="#DFDFDF" class="textepfister11">Login</td>
          <td align="left" valign="top" bgcolor="#DFDFDF" class="textepfister11">mot 
            de passe</td>
          <td align="center" valign="top" bgcolor="#DFDFDF" class="textepfister11">code 
            client <br>
            perpignan</td>
          <td align="center" valign="top" bgcolor="#DFDFDF" class="textepfister11">code 
            client <br>
            montpellier </td>
          <td align="center" valign="top" bgcolor="#DFDFDF" class="textepfister11">code 
            client <br>
            toulouse</td>
          <td align="left" valign="top" bgcolor="#DFDFDF" class="textepfister11">Nom</td>
          <td align="left" valign="top" bgcolor="#DFDFDF" class="textepfister11">Date 
            de validit&eacute;</td>
          <td align="left" valign="top" bgcolor="#DFDFDF" class="textepfister11">Droit</td>
          <td>&nbsp;</td>
        </tr>
        <% 
While ((Repeat1__numRows <> 0) AND (NOT Recordset1.EOF)) 
%>
        <tr align="center" class="textepfister11"> 
          <td height="20" align="left"><%=(Recordset1.Fields.Item("login").Value)%></td>
          <td height="20" align="left" class="textepfisterrouge"><%=(Recordset1.Fields.Item("pass").Value)%></td>
          <td height="20" bgcolor="#F5F5F5"><%=(Recordset1.Fields.Item("codeperp").Value)%></td>
          <td height="20" bgcolor="#F5F5F5"><%=(Recordset1.Fields.Item("codemont").Value)%></td>
          <td height="20" bgcolor="#F5F5F5"><%=(Recordset1.Fields.Item("codetoul").Value)%></td>
          <td height="20" align="left"><%=(Recordset1.Fields.Item("nom").Value)%></td>
          <td align="left" class="textepfistervert"><strong><%=(Recordset1.Fields.Item("datevalidite").Value)%></strong></td>
          <td height="20" align="left" class="textepfisterrougegros"><%=(Recordset1.Fields.Item("droit").Value)%></td>
          <td height="20">&nbsp;</td>
        </tr>
        <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  Recordset1.MoveNext()
Wend
%>
      </table></td>
  </tr>
  <tr> 
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
<% end if %>
</body>
</html>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
