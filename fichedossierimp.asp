<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/basepfister.asp" -->
<%
Dim R1__MMColParam
R1__MMColParam = "1"
if (Request.QueryString("ident") <> "") then R1__MMColParam = Request.QueryString("ident")
%>
<%
set R1 = Server.CreateObject("ADODB.Recordset")
R1.ActiveConnection = MM_basepfister_STRING
R1.Source = "SELECT * FROM dossiersw WHERE ref_doss = '" + Replace(R1__MMColParam, "'", "''") + "'"
R1.CursorType = 0
R1.CursorLocation = 2
R1.LockType = 3
R1.Open()
R1_numRows = 0
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
<title>FICHE DOSSIER</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="stylecss/pfister.css" type="text/css">
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="574" border="0" height="269" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="36" height="15"></td>
    <td height="15" colspan="4"></td>
  </tr>
  <tr> 
    <td width="36" height="20">&nbsp;</td>
    <td height="20" width="0"> 
      <table width="400" border="0" cellspacing="0" cellpadding="0" height="24">
        <tr> 
          <% if (trim(r1.fields.item("cabinet").value)="2") then cabinet = "Montpellier" end if
   if (trim(r1.fields.item("cabinet").value)="3") then cabinet = "Perpignan" end if
   if (trim(r1.fields.item("cabinet").value)="4") then cabinet = "Toulouse" end if %>
          <td width="23"><img src="images/icodossier.gif" width="20" height="20"></td>
          <td height="23" class="textepfister"><%="dossier "+R1.fields.item("ref_doss").value+" déposé le "+cstr(R1.fields.item("date_creat").value)+" à "+cabinet%></td>
          <td class="textepfister" width="11" height="23" valign="top">&nbsp;</td>
        </tr>
      </table>
    </td>
    <td height="20" width="70" class="textepfister"> 
      <div align="center"><a href="javascript:window.print()">imprimer</a></div>
    </td>
    <% lien ="OpenPopUp('fichedebiteurimp.asp?ident="+request.querystring("ident")+"','ff',500,470)" %>
    <td height="20" width="21">&nbsp;</td>
    <td height="20" width="78">&nbsp;</td>
  </tr>
  <tr> 
    <td width="36" height="233">&nbsp;</td>
    <td valign="top" colspan="4" height="233"> 
      <table width="515" border="0" cellspacing="0" cellpadding="1" height="150">
        <tr> 
          <td height="20" width="100" class="textepfisteritalique" valign="top">D&eacute;biteur</td>
          <td height="20" class="textepfistervrai12" valign="top" colspan="2">&nbsp;<%=(R1.Fields.Item("nom_deb").Value)%></td>
        </tr>
        <tr> 
          <td height="20" width="100" class="textepfisteritalique" valign="top">&nbsp;SIRET</td>
          <td height="20" class="textepfistervrai12" valign="top" colspan="2">&nbsp;<%=(R1.Fields.Item("rcs_deb").Value)%></td>
        </tr>
        <tr> 
          <td height="20" width="100" class="textepfisteritalique" valign="top">&nbsp;Adresse</td>
          <td height="20" class="textepfistervrai12" valign="top" colspan="2">&nbsp;<%=" "+(R1.Fields.Item("adresse").Value)%></td>
        </tr>
        <tr> 
          <td height="20" width="100" class="textepfisteritalique" valign="top">&nbsp;</td>
          <td height="20" class="textepfistervrai12" valign="top" colspan="2">&nbsp;<%=" "+(R1.Fields.Item("c_postal").Value)+" "%><%=(R1.Fields.Item("ville").Value)%></td>
        </tr>
        <tr> 
          <td width="100" class="textepfisteritalique" valign="top">&nbsp;Cr&eacute;ance</td>
          <td class="textepfistervrai12" valign="top" width="78" height="20" align="right"><span class="textepfisterrougegros"><%=cstr(formatnumber(R1.Fields.Item("total_du").Value,2))+" €"%></span> </td>
          <td class="textepfistervrai12" valign="top" height="20">&nbsp;</td>
        </tr>
        <tr> 
          <td height="20" width="100" class="textepfisteritalique" valign="top">&nbsp;sommes 
            per&ccedil;ues</td>
          <td height="20" class="textepfistervrai12" valign="top" width="78" align="right"><%=cstr(formatnumber(R1.Fields.Item("somme_p").Value,2))+" €"%></td>
          <td height="20" class="textepfistervrai12" valign="top">&nbsp;</td>
        </tr>
        <tr> 
          <td height="20" width="100" class="textepfisteritalique" valign="top">&nbsp;frais 
            engag&eacute; </td>
          <td height="20" class="textepfistervrai12" valign="top" width="78" align="right"><%=cstr(formatnumber(R1.Fields.Item("frais_eng").Value,2))+" €"%></td>
          <td height="20" class="textepfistervrai12" valign="top">&nbsp;</td>
        </tr>
        <tr> 
          <td height="20" width="100" class="textepfisteritalique" valign="top">&nbsp;sold&eacute;</td>
          <% if (trim(r1.fields.item("solde").value)="1") then 
solde="oui"
limage="images/solde.gif"
 else 
solde="non" 
limage="images/passolde.gif"
end if 
%>
          <td height="20" class="textepfistervrai12" valign="middle" colspan="2"> 
            <table width="100" border="0" height="20" cellpadding="0" cellspacing="0" class="textepfistervrai12">
              <tr> 
                <td width="27"><img src="<%=limage%>" width="22" height="18"></td>
                <td><%=solde%></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td height="20" width="100" class="textepfisteritalique">&nbsp;code 
            financier </td>
          <td height="20" class="textepfistervrai12" colspan="2">&nbsp;<%=(R1.Fields.Item("code_f").Value)%></td>
        </tr>
        <tr> 
          <td height="5" width="100" class="textepfisterblanc"></td>
          <td height="5" colspan="2"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="575" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="15">&nbsp;</td>
    <td class="textepfisterblanc">&nbsp;&nbsp;<span class="textepfister12">Commentaires 
      d&eacute;pos&eacute;s sur ce dossier</span></td>
  </tr>
  <tr> 
    <td width="15">&nbsp;</td>
    <td bgcolor="#FFFFFF" class="textepfister">&nbsp;<%=(R1.Fields.Item("dic").Value)%></td>
  </tr>
  <tr> 
    <td width="15" height="5"></td>
    <td bgcolor="#FFFFFF" class="textepfister" height="5"></td>
  </tr>
  <tr> 
    <td width="15">&nbsp;</td>
    <td class="textepfister">&nbsp;</td>
  </tr>
  <tr> 
    <td width="15">&nbsp;</td>
    <td class="textepfister">&nbsp;</td>
  </tr>
</table>
<br>
<br>
</body>
</html>
<%
R1.Close()
%>
