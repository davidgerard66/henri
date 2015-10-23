<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/basepfister.asp" -->
<%
Dim Recordset1__MMColParam
Recordset1__MMColParam = "1"
if (Request.QueryString("ident") <> "") then Recordset1__MMColParam = Request.QueryString("ident")
%>
<%
set Recordset1 = Server.CreateObject("ADODB.Recordset")
Recordset1.ActiveConnection = MM_basepfister_STRING
'Recordset1.Source = "SELECT * FROM DEBITEURS WHERE PrimaryKey = " + Replace(Recordset1__MMColParam, "'", "''") + ""
Recordset1.Source = "SELECT * FROM DEBITEURS WHERE (convert(varchar,ref_debit) + convert(varchar,cabinet)) = " + Replace(Recordset1__MMColParam, "'", "''") + ""
Recordset1.CursorType = 0
Recordset1.CursorLocation = 2
Recordset1.LockType = 3
Recordset1.Open()
Recordset1_numRows = 0
%>
<html>
<head>
<SCRIPT LANGUAGE="JavaScript1.2">
<!--
function OpenPopUp(MyFile,MyWindow,MyWidth,MyHeight)
//MyFile :   nom du fichier contenant le code HTML du pop-up 
//MyWindow :   nom de la fenêtre (ne pas mettre d'espace) 
//MyWidth :   entier indiquant la largeur de la fenêtre en pixels 
//MyHeight :   entier indiquant la hauteur de la fenêtre en pixels 

{    
var ns4 = (document.layers)? true:false;    //NS 4 
var ie4 = (document.all)? true:false;   //IE 4 
var dom = (document.getElementById)? true:false;   //DOM 
var xMax, yMax, xOffset, yOffset;;    

    if (ie4 || dom)
        {
        xMax = screen.width;
        yMax = screen.height;
        }
    else if (ns4)
        {
        xMax = window.outerWidth;
        yMax = window.outerHeight;
        }
    else
        {
        xMax = 800;
        yMax = 600;
        }
    xOffset = (xMax - MyWidth)/2;
    yOffset = (yMax - MyHeight)/2;
    window.open(MyFile,MyWindow,'width='+MyWidth
+',height='+MyHeight
+',screenX='+xOffset
+',screenY='+yOffset
+',top='+yOffset
+',left='+xOffset
+',scrollbars=yes,resizable=yes');
    }
//-->
</SCRIPT>


<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="stylecss/pfister.css" type="text/css">
</head>
<body bgcolor="#E1E1E2" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="627" border="0" height="346" cellspacing="0" cellpadding="0" background="images/fondcadre.gif">
  <tr> 
    <td width="36" height="25"></td>
    <td height="25" colspan="4"></td>
  </tr>
  <tr> 
    <td width="36" height="20"></td>
    <td height="20" width="405"> 
      <table width="300" border="0" cellspacing="0" cellpadding="0" bgcolor="#E7E9FE" height="24" bordercolor="#000099">
        <tr bgcolor="#4265B5"> 
          <td height="23"><img src="images/User.gif" width="20" height="20"></td>
          <td class="textepfisterblanc" width="250" height="23">Fiche d&eacute;biteur</td>
          <td class="textepfister" width="11" height="23" valign="top"><img src="images/hm_cctr.gif" width="11" height="20"></td>
        </tr>
      </table>
    </td>
    <td height="20" width="87" class="textepfister"> 
      <div align="center"><A HREF="Javascript:history.go(-1)" onMouseOver="this.innerText='[retour à la liste]'" onMouseOut="this.innerText='[retour]'">[retour]</A></div>
    </td>
<% lien ="OpenPopUp('fichedebiteurimp.asp?ident="+request.querystring("ident")+"','ff',500,470)" %>
    <td height="20" width="21"><a href="#" onClick="<%=lien%>" ><img src="images/b_imp.gif" width="16" height="16" alt="Version Imprimable" border="0"></a></td>
    <td height="20" width="78">&nbsp;</td>
  </tr>
  <tr> 
    <td width="36" height="233">&nbsp;</td>
    <td valign="top" colspan="4" height="233"> 
      <table width="400" border="0" cellspacing="0" cellpadding="1" height="215">
        <tr valign="top"> 
          <td height="20" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;Nom</td>
          <td height="20" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("NOM").Value)%></td>
        </tr>
        <tr valign="top"> 
          <td height="20" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;SIRET</td>
          <td height="20" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("RCS").Value)%></td>
        </tr>
        <tr valign="top"> 
          <td height="20" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;Enseigne</td>
          <td height="20" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("ENSEIGNE").Value)%></td>
        </tr>
        <tr valign="top"> 
          <td height="20" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;Activit&eacute;</td>
          <td height="20" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("ACTIVITE").Value)%></td>
        </tr>
        <tr valign="top"> 
          <td height="20" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;G&eacute;rant</td>
          <td height="20" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("GERANT").Value)%></td>
        </tr>
        <tr valign="top"> 
          <td height="20" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;Qualit&eacute;</td>
          <td height="20" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("QUALITE").Value)%></td>
        </tr>
        <tr valign="top"> 
          <td height="27" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;Adresse</td>
          <td height="27" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("ADRESSE").Value)%></td>
        </tr>
        <tr> 
          <td height="20" width="97" class="textepfisteritalique" bgcolor="#E7E9FE">&nbsp;T&eacute;l&eacute;phone</td>
          <td height="20" width="397" class="textepfistervrai12" bgcolor="#B8DEFE">&nbsp;<%=(Recordset1.Fields.Item("TEL").Value)%></td>
        </tr>
        <tr> 
          <td height="15" width="97" class="textepfisterblanc" bgcolor="#4265B5">Plus 
            d'infos</td>
          <td height="15" width="397" bgcolor="#4265B5"></td>
        </tr>
        <tr> 
          <td height="19" width="97" class="textepfister" bgcolor="#F2FFF7">&nbsp;</td>
          <td height="19" width="397" class="textepfister" bgcolor="#D7FFEF"><%=(Recordset1.Fields.Item("DATE_DLITIGE").Value)%></td>
        </tr>
        <tr> 
          <td width="97" height="20" bgcolor="#F2FFF7" class="textepfister">Etat 
            Actuel </td>
          <td height="20" width="397" class="textepfister" bgcolor="#D7FFEF"> 
            
            <% if (recordset1.fields.item("dossiersencours").value = false) then %>
            Dossier Terminé. 
            <% else %>
            Dossier non solutionné à ce jour.
            <% end if %>
          </td>
        </tr>
      </table>
    </td>
  </tr>
<tr>
    <td height="40"></td>
    <td height="40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/clefs3.gif" width="40" height="40" alt="Abonn&eacute; : david  date de validit&eacute; : 12/10/2002 ... Cliquez sur la cl&eacute; pour en savoir plus ..."></td>
  </tr>
</table>
</body>
</html>
<%
Recordset1.Close()
%>
