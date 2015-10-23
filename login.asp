<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/basepfister.asp" -->
<%
Dim Recordset1__MMColParam
Recordset1__MMColParam = "1"
if (Request.Form("champlogin") <> "") then Recordset1__MMColParam = Request.Form("champlogin") else Recordset1__MMColParam =session("login") end if
%>
<%
Dim Recordset1__MMColParam2
Recordset1__MMColParam2 = "1"
if (Request.Form("champpassword") <> "") then Recordset1__MMColParam2 = Request.Form("champpassword") else Recordset1__MMColParam2=session("pass") end if

%>
<%
set Recordset1 = Server.CreateObject("ADODB.Recordset")
Recordset1.ActiveConnection = MM_basepfister_STRING
Recordset1.Source = "SELECT *  FROM userw  WHERE login = '" + Replace(Recordset1__MMColParam, "'", "''") + "' and pass = '" + Replace(Recordset1__MMColParam2, "'", "''") + "'"
Recordset1.CursorType = 0
Recordset1.CursorLocation = 2
Recordset1.LockType = 3
Recordset1.Open()
Recordset1_numRows = 0
%>
<%
if (session("login")="" or request.form("champlogin")<>"") then

if (recordset1.eof or recordset1.bof) then response.redirect "mauvaislogin.asp" end if
if (recordset1.fields.item("datevalidite").value < date()) then response.redirect "datevaliditedepasser.asp" end if
session("login") = recordset1.fields.item("login").value
session("pass") =  recordset1.fields.item("pass").value
session("droit") = cstr(recordset1.fields.item("droit").value)
session("datevalidite")=recordset1.fields.item("datevalidite").value
if (recordset1.fields.item("codeperp").value <>"") then 
session("codeperp")=recordset1.fields.item("codeperp").value 
else session("codeperp")="" 
end if
if (recordset1.fields.item("codetoul").value <>"") then 
session("codetoul")=recordset1.fields.item("codetoul").value 
else session("codetoul")="" 
end if
if (recordset1.fields.item("codemont").value <>"") then 
session("codemont")=recordset1.fields.item("codemont").value 
else session("codemont")="" 
end if

end if
if (session("droit")="0") then limagemenu = "images\bluecircles0.gif" end if
if (session("droit")="1") then limagemenu = "images\bluecircles1.gif" end if
if (session("droit")="2") then limagemenu = "images\bluecircles.gif" end if
if (session("droit")="3") then limagemenu = "images\bluecircles3.gif" end if
if (session("droit")="4") then limagemenu = "images\bluecircles4.gif" end if
%>
<html>
<head>
<title>CABINET PFISTER - ROHM --- Espace abonn&eacute;s</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="stylecss/pfister.css" type="text/css">
<script language="JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->
</script>
</head>
<body bgcolor="#E1E1E2" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<div id="Layer2" style="position:absolute; left:456px; top:339px; width:122px; height:38px; z-index:2"><a href="http:\\www.c2i-consultants.fr" target="_top"><img src="images/logc2i.gif" width="123" height="49" border="0"></a></div>
<div id="Layerabonne" style="position:absolute; left:24px; top:28px; width:306px; height:285px; z-index:3; background-color: #FFFFFF; layer-background-color: #FFFFFF; border: 1px none #000000; overflow: auto; visibility: hidden"> 
  <table width="100%" border="1" cellspacing="0" cellpadding="2" bordercolor="#000066" height="100%">
    <tr>
      <td valign="top" align="left">
        <table width="100%" height="200" border="0" cellpadding="2" cellspacing="0">
          <tr bgcolor="#000066"> 
            <td colspan="2" class="textepfisterblanc"><div align="center">Informations 
                sur votre abonnement</div></td>
          </tr>
          <tr valign="top"> 
            <td width="109" class="textepfisteritalique" height="25">Login :</td>
            <td width="181" class="textepfister11" height="25"><%=(Recordset1.Fields.Item("login").Value)%></td>
          </tr>
          <tr valign="top"> 
            <td width="109" class="textepfisteritalique" height="25">Date de validit&eacute; 
              : </td>
            <td width="181" class="textepfister11" height="25"><%=(Recordset1.Fields.Item("datevalidite").Value)%></td>
          </tr>
          <tr valign="top"> 
            <td width="109" class="textepfisteritalique" height="25">Nom :</td>
            <td width="181" class="textepfister11" height="25"><%=(Recordset1.Fields.Item("nom").Value)%></td>
			<% session("nom")=(Recordset1.Fields.Item("nom").Value)%>
          </tr>
          <tr valign="top"> 
            <td width="109" class="textepfisteritalique" height="25">Adresse:</td>
            <td width="181" class="textepfister11" height="25"><%=(Recordset1.Fields.Item("adresse").Value)%></td>
          </tr>
          <tr valign="top"> 
            <td width="109" class="textepfisterbleuclair" height="25"> 
              <div align="right"></div></td>
            <td width="181" class="textepfister11" height="25"><%=(Recordset1.Fields.Item("cp").Value)%><%=" "+(Recordset1.Fields.Item("ville").Value)%></td>
          </tr>
          <tr valign="top"> 
            <td width="109" height="25">&nbsp;</td>
            <td width="181" class="textepfister" height="25"> 
              <div align="right"><%=(Recordset1.Fields.Item("droit").Value)%></div></td>
          </tr>
        </table>
        <div align="center">
          <p class="textepfister"> <u><a onClick="document.all.Layerabonne.style.visibility='hidden'" href="#">Fermer</a></u> 
          </p>
        </div>
      </td>
    </tr>
  </table>
</div>
<table border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td align="left" valign="top" > 
      <table border="0" cellspacing="0" cellpadding="0" >
        <tr> 
          <td valign="top" align="left" > 
            <table width="631" border="0" cellspacing="0" cellpadding="0" >
              <tr> 
                <td  valign="top" colspan="3"> 
                  <table border="0"  cellspacing="0" cellpadding="0" bordercolor="#000099">
                    <tr > 
                      <td valign="top"><img src="<%=limagemenu%>" usemap="#Map" border="0" href="#"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr> 
                <td width="35">&nbsp;</td>
                <td width="40"><img src="images/clefs3.gif" width="40" height="40" alt="<%="Abonné : "+session("login")+", date de validité : "+cstr(session("datevalidite"))%>"></td>
                <td width="555" class="textepfister">Vous &ecirc;tes identifi&eacute;.</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<map name="Map"> 
<% if (session("droit")<>0 and session("droit")<>3) then %>
  <area shape="rect" coords="359,25,558,83" href="solvadebut.asp">
 <% end if %>
 <% if (session("droit")=2 or session("droit")=3) then %>
 <area shape="rect" coords="360,91,558,156" href="dossiersdebut.asp?tri=,date_creat ASC">
<% end if %>
<% if session("droit")<>4 then %>
  <area shape="rect" coords="361,159,561,206" href="remisedossier.asp">
<% end if %>
  <area shape="rect" coords="361,211,561,274" onClick="document.all.Layerabonne.style.visibility='visible'" href="#">
</map>
</body>
</html>
<%
Recordset1.Close()
%>
