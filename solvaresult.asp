<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/basepfister.asp" -->
<%
Dim Recordset1__MMColParam
Recordset1__MMColParam = "1"
if (Request.Form("recherche") <> "") then Recordset1__MMColParam = Request.Form("recherche")
if (Request.Form("recherche") = ""  and Request.querystring("recherche")<>"") then Recordset1__MMColParam=Request.querystring("recherche") end if
%>
<%
set Recordset1 = Server.CreateObject("ADODB.Recordset")
Recordset1.ActiveConnection = MM_basepfister_STRING

if (request.form("adresse")<>"") then 
larequete = "SELECT *  FROM DEBITEURS  WHERE (RCS = '" + Replace(Recordset1__MMColParam, "'", "''") + "' or nom like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%'  or gerant like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%' or enseigne like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%') and adresse LIKE '%"+request.form("adresse")+"%'"
larequete2 = "SELECT count(nom) as nbrec  FROM DEBITEURS  WHERE (RCS = '" + Replace(Recordset1__MMColParam, "'", "''") + "' or nom like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%'  or gerant like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%' or enseigne like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%') and adresse LIKE '%"+request.form("adresse")+"%'"

else
larequete = "SELECT *  FROM DEBITEURS  WHERE RCS = '" + Replace(Recordset1__MMColParam, "'", "''") + "' or nom like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%'  or gerant like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%' or enseigne like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%'"
larequete2 = "SELECT count(nom) as nbrec FROM DEBITEURS  WHERE RCS = '" + Replace(Recordset1__MMColParam, "'", "''") + "' or nom like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%'  or gerant like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%' or enseigne like '%'+'" + Replace(Recordset1__MMColParam, "'", "''") + "'+'%'"

end if

Recordset1.Source = larequete
Recordset1.CursorType = 0
Recordset1.CursorLocation = 2
Recordset1.LockType = 3
Recordset1.Open()
Recordset1_numRows = 0
%>
<%
Dim Recordset2__MMColParam
Recordset2__MMColParam = "1"
Recordset2__MMColParam = Recordset1__MMColParam
%>
<%
set Recordset2 = Server.CreateObject("ADODB.Recordset")
Recordset2.ActiveConnection = MM_basepfister_STRING
Recordset2.Source = larequete2
Recordset2.CursorType = 0
Recordset2.CursorLocation = 2
Recordset2.LockType = 3
Recordset2.Open()
Recordset2_numRows = 0
%>
<%
Dim Repeat1__numRows
Repeat1__numRows = 8
Dim Repeat1__index
Repeat1__index = 0
Recordset1_numRows = Recordset1_numRows + Repeat1__numRows
%>
<%
'  *** Recordset Stats, Move To Record, and Go To Record: declare stats variables

' set the record count
Recordset1_total = Recordset1.RecordCount

' set the number of rows displayed on this page
If (Recordset1_numRows < 0) Then
  Recordset1_numRows = Recordset1_total
Elseif (Recordset1_numRows = 0) Then
  Recordset1_numRows = 1
End If

' set the first and last displayed record
Recordset1_first = 1
Recordset1_last  = Recordset1_first + Recordset1_numRows - 1

' if we have the correct record count, check the other stats
If (Recordset1_total <> -1) Then
  If (Recordset1_first > Recordset1_total) Then Recordset1_first = Recordset1_total
  If (Recordset1_last > Recordset1_total) Then Recordset1_last = Recordset1_total
  If (Recordset1_numRows > Recordset1_total) Then Recordset1_numRows = Recordset1_total
End If
%>
<%
' *** Move To Record and Go To Record: declare variables

Set MM_rs    = Recordset1
MM_rsCount   = Recordset1_total
MM_size      = Recordset1_numRows
MM_uniqueCol = ""
MM_paramName = ""
MM_offset = 0
MM_atTotal = false
MM_paramIsDefined = false
If (MM_paramName <> "") Then
  MM_paramIsDefined = (Request.QueryString(MM_paramName) <> "")
End If
%>
<%
' *** Move To Record: handle 'index' or 'offset' parameter

if (Not MM_paramIsDefined And MM_rsCount <> 0) then

  ' use index parameter if defined, otherwise use offset parameter
  r = Request.QueryString("index")
  If r = "" Then r = Request.QueryString("offset")
  If r <> "" Then MM_offset = Int(r)

  ' if we have a record count, check if we are past the end of the recordset
  If (MM_rsCount <> -1) Then
    If (MM_offset >= MM_rsCount Or MM_offset = -1) Then  ' past end or move last
      If ((MM_rsCount Mod MM_size) > 0) Then         ' last page not a full repeat region
        MM_offset = MM_rsCount - (MM_rsCount Mod MM_size)
      Else
        MM_offset = MM_rsCount - MM_size
      End If
    End If
  End If

  ' move the cursor to the selected record
  i = 0
  While ((Not MM_rs.EOF) And (i < MM_offset Or MM_offset = -1))
    MM_rs.MoveNext
    i = i + 1
  Wend
  If (MM_rs.EOF) Then MM_offset = i  ' set MM_offset to the last possible record

End If
%>
<%
' *** Move To Record: if we dont know the record count, check the display range

If (MM_rsCount = -1) Then

  ' walk to the end of the display range for this page
  i = MM_offset
  While (Not MM_rs.EOF And (MM_size < 0 Or i < MM_offset + MM_size))
    MM_rs.MoveNext
    i = i + 1
  Wend

  ' if we walked off the end of the recordset, set MM_rsCount and MM_size
  If (MM_rs.EOF) Then
    MM_rsCount = i
    If (MM_size < 0 Or MM_size > MM_rsCount) Then MM_size = MM_rsCount
  End If

  ' if we walked off the end, set the offset based on page size
  If (MM_rs.EOF And Not MM_paramIsDefined) Then
    If (MM_offset > MM_rsCount - MM_size Or MM_offset = -1) Then
      If ((MM_rsCount Mod MM_size) > 0) Then
        MM_offset = MM_rsCount - (MM_rsCount Mod MM_size)
      Else
        MM_offset = MM_rsCount - MM_size
      End If
    End If
  End If

  ' reset the cursor to the beginning
  If (MM_rs.CursorType > 0) Then
    MM_rs.MoveFirst
  Else
    MM_rs.Requery
  End If

  ' move the cursor to the selected record
  i = 0
  While (Not MM_rs.EOF And i < MM_offset)
    MM_rs.MoveNext
    i = i + 1
  Wend
End If
%>
<%
' *** Move To Record: update recordset stats

' set the first and last displayed record
Recordset1_first = MM_offset + 1
Recordset1_last  = MM_offset + MM_size
If (MM_rsCount <> -1) Then
  If (Recordset1_first > MM_rsCount) Then Recordset1_first = MM_rsCount
  If (Recordset1_last > MM_rsCount) Then Recordset1_last = MM_rsCount
End If

' set the boolean used by hide region to check if we are on the last record
MM_atTotal = (MM_rsCount <> -1 And MM_offset + MM_size >= MM_rsCount)
%>
<%
' *** Go To Record and Move To Record: create strings for maintaining URL and Form parameters

' create the list of parameters which should not be maintained
MM_removeList = "&index="
If (MM_paramName <> "") Then MM_removeList = MM_removeList & "&" & MM_paramName & "="
MM_keepURL="":MM_keepForm="":MM_keepBoth="":MM_keepNone=""

' add the URL parameters to the MM_keepURL string
For Each Item In Request.QueryString
  NextItem = "&" & Item & "="
  If (InStr(1,MM_removeList,NextItem,1) = 0) Then
    MM_keepURL = MM_keepURL & NextItem & Server.URLencode(Request.QueryString(Item))
  End If
Next

' add the Form variables to the MM_keepForm string
For Each Item In Request.Form
  NextItem = "&" & Item & "="
  If (InStr(1,MM_removeList,NextItem,1) = 0) Then
    MM_keepForm = MM_keepForm & NextItem & Server.URLencode(Request.Form(Item))
  End If
Next

' create the Form + URL string and remove the intial '&' from each of the strings
MM_keepBoth = MM_keepURL & MM_keepForm
if (MM_keepBoth <> "") Then MM_keepBoth = Right(MM_keepBoth, Len(MM_keepBoth) - 1)
if (MM_keepURL <> "")  Then MM_keepURL  = Right(MM_keepURL, Len(MM_keepURL) - 1)
if (MM_keepForm <> "") Then MM_keepForm = Right(MM_keepForm, Len(MM_keepForm) - 1)

' a utility function used for adding additional parameters to these strings
Function MM_joinChar(firstItem)
  If (firstItem <> "") Then
    MM_joinChar = "&"
  Else
    MM_joinChar = ""
  End If
End Function
%>
<%
' *** Move To Record: set the strings for the first, last, next, and previous links

MM_keepMove = MM_keepBoth
MM_moveParam = "index"

' if the page has a repeated region, remove 'offset' from the maintained parameters
If (MM_size > 0) Then
  MM_moveParam = "offset"
  If (MM_keepMove <> "") Then
    params = Split(MM_keepMove, "&")
    MM_keepMove = ""
    For i = 0 To UBound(params)
      nextItem = Left(params(i), InStr(params(i),"=") - 1)
      If (StrComp(nextItem,MM_moveParam,1) <> 0) Then
        MM_keepMove = MM_keepMove & "&" & params(i)
      End If
    Next
    If (MM_keepMove <> "") Then
      MM_keepMove = Right(MM_keepMove, Len(MM_keepMove) - 1)
    End If
  End If
End If

' set the strings for the move to links
If (MM_keepMove <> "") Then MM_keepMove = MM_keepMove & "&"
urlStr = Request.ServerVariables("URL") & "?" & MM_keepMove & MM_moveParam & "="
MM_moveFirst = urlStr & "0"
MM_moveLast  = urlStr & "-1"
MM_moveNext  = urlStr & Cstr(MM_offset + MM_size)
prev = MM_offset - MM_size
If (prev < 0) Then prev = 0
MM_movePrev  = urlStr & Cstr(prev)
%>
<%
'  *** Recordset Stats, Move To Record, and Go To Record: declare stats variables

' set the record count
Recordset1_total = recordset1.recordcount

' set the number of rows displayed on this page
If (Recordset1_numRows < 0) Then
  Recordset1_numRows = Recordset1_total
Elseif (Recordset1_numRows = 0) Then
  Recordset1_numRows = 1
End If

' set the first and last displayed record
Recordset1_first = 1
Recordset1_last  = Recordset1_first + Recordset1_numRows - 1

' if we have the correct record count, check the other stats
If (Recordset1_total <> -1) Then
  If (Recordset1_first > Recordset1_total) Then Recordset1_first = Recordset1_total
  If (Recordset1_last > Recordset1_total) Then Recordset1_last = Recordset1_total
  If (Recordset1_numRows > Recordset1_total) Then Recordset1_numRows = Recordset1_total
End If
%>
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
//script infobulle

var IB=new Object;
var nsx=0;nsy=0;
function AffBulle(nom,rcs,enseigne,activite,gerant,qualite,adresse,tel) {
contenu='<table width="300" border="1" height="100" cellspacing="0" cellpadding="0" bordercolor="#006699"><tr><td><table width="100%" border="0" height="130" cellspacing="0" cellpadding="0" class="textepfister" bgcolor="#FFFAE8" bordercolor="#006699"><tr><td width="5" rowspan="8"></td><td width="75">Nom :</td><td>'+nom+'</td></tr><tr><td width="60">SIRET :</td><td>'+rcs+'</td></tr><tr><td width="60">Enseigne :</td><td>'+enseigne+'</td></tr><tr><td width="60">Activit&eacute; :</td>          <td>'+activite+'</td></tr><tr><td width="60">G&eacute;rant :</td><td>'+gerant+'</td></tr>        <tr>           <td width="60">Qualit&eacute; :</td>          <td>'+qualite+'</td>        </tr>        <tr>          <td width="60">Adresse :</td>          <td>'+adresse+'</td>        </tr>        <tr>           <td width="60">            <div align="left">Tél:</div>          </td>          <td>'+tel+'</td>        </tr>      </table>    </td>  </tr></table>'
	if (document.layers) {
		document.layers["bulle"].document.write(contenu);
		document.layers["bulle"].document.close();
		document.layers["bulle"].top=nsy+10;
		document.layers["bulle"].left=nsx-10;
		document.layers["bulle"].visibility="show";}
	if (document.all) {
		var f=window.event;
		bulle.innerHTML=contenu;
		document.all["bulle"].style.top=f.offsetY+100;
		document.all["bulle"].style.left=f.x+80;
		document.all["bulle"].style.visibility="visible";
	}
}
function ns(e) {
	nsx=e.x;nsy=e.y;
}
function HideBulle() {
	if (document.layers) {document.layers["bulle"].visibility="hide";}
	if (document.all) {document.all["bulle"].style.visibility="hidden";}
}

function InitBulle(ColTexte,ColFond,ColContour,NbPixel) {
	IB.ColTexte=ColTexte;IB.ColFond=ColFond;IB.ColContour=ColContour;IB.NbPixel=NbPixel;
	if (document.layers) {
		window.captureEvents(Event.MOUSEMOVE);window.onMouseMove=ns;
		document.write("<LAYER name='bulle' top=0 left=0 visibility='hide'></LAYER>");
	}
	if (document.all) {
		document.write("<DIV id='bulle' style='position:absolute;top:0;left:0;visibility:hidden'></DIV>");
	}
}

</SCRIPT>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="stylecss/pfister.css" type="text/css">
</head>
<body  bgcolor="#E1E1E2" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#003399" vlink="#003399" alink="#003399">
<SCRIPT language="JavaScript">InitBulle("navy","#FFFFCC","jaune",1);
// InitBulle(couleur de texte, couleur de fond, couleur de contour taille contour)
</SCRIPT>
<table width="626" border="0" height="346" cellspacing="0" cellpadding="0">
  <tr> 
    <td bgcolor="#FFFFFF" background="images/fondcadreresultats.gif"> 
      <table width="626" border="0" height="346" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="36" height="5"></td>
          <td height="39" align="right">&nbsp;</td>
        </tr>
        <tr> 
          <td width="36">&nbsp;</td>
          <td valign="top"> 
            <table width="526" border="0" cellspacing="0" cellpadding="0" height="98">
              <% if (not recordset1.eof  or not recordset1.bof ) then %>
              
            
              <tr valign="top"> 
                <td class="textepfister" colspan="4" height="25"> 
                  <table width="527" border="0" height="20" cellspacing="0" cellpadding="0">
                    <tr bgcolor="#000099"> 
                      <td width="261" class="textepfisterblanc">&nbsp;&nbsp;&nbsp;&nbsp;Nom 
                        de la soci&eacute;t&eacute;</td>
                      <td width="125" class="textepfisterblanc">G&eacute;rant</td>
                      <td width="214" class="textepfisterblanc">SIRET</td>
                    </tr>
                  </table>
                </td>
              </tr>

<%

While ((Repeat1__numRows <> 0) AND (NOT Recordset1.EOF)) 

%>
              <%
if ((Recordset1.Fields.Item("nom").Value)<>"") then 
nom = replace((Recordset1.Fields.Item("nom").Value),"'"," ")
nom = replace(nom,"""","")
else nom = "" 
end if
if ((Recordset1.Fields.Item("rcs").Value)<>"") then 
rcs= replace((Recordset1.Fields.Item("rcs").Value),"'"," ")
rcs = replace(rcs,"""","")
else rcs = "" 
end if
if ((Recordset1.Fields.Item("enseigne").Value)<>"") then
 enseigne = replace((Recordset1.Fields.Item("enseigne").Value),"'"," ")
enseigne = replace(enseigne,"""","")
else enseigne = "" 
end if
if ((Recordset1.Fields.Item("activite").Value)<>"") then 
activite = replace((Recordset1.Fields.Item("activite").Value),"'"," ")
activite = replace(activite,"""","")
else activite = "" 
end if
if ((Recordset1.Fields.Item("gerant").Value)<>"") then
 gerant = replace((Recordset1.Fields.Item("gerant").Value),"'"," ")
gerant = replace(gerant,"""","")
else gerant = "" 
end if
if ((Recordset1.Fields.Item("qualite").Value)<>"") then 
qualite = replace((Recordset1.Fields.Item("qualite").Value),"'"," ")
qualite = replace(qualite,"""","")
else qualite = "" 
end if
if ((Recordset1.Fields.Item("adresse").Value)<>"") then 
adresse = replace((Recordset1.Fields.Item("adresse").Value),"'"," ")
adresse = replace(adresse,"""","")
else adresse = "" 
end if
if ((Recordset1.Fields.Item("tel").Value)<>"") then 
tel = replace((Recordset1.Fields.Item("tel").Value),"'"," ")
tel = replace(tel,"""","")
else tel = "" 
end if
affichebulle = "AffBulle('"+nom+"','"+rcs+"','"+enseigne+"','"+activite+"','"+gerant+"','"+qualite+"','"+adresse+"','"+tel+"')"

%>
              <tr> 
                   <td class="textepfister" width="250" height="20">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%="fichedebiteur.asp?ident="+cstr(recordset1.fields.item("ref_debit").value)+cstr(recordset1.fields.item("cabinet").value)+"&motcle="+request.form("recherche")%>" onMouseOver="<%=affichebulle%>" onMouseOut="HideBulle()"><%="(+) "+(Recordset1.Fields.Item("nom").Value)%></a></td>
                <td class="textepfister" height="20"><%=(Recordset1.Fields.Item("gerant").Value)%></td>
                <td class="textepfister" height="20"><%=(Recordset1.Fields.Item("RCS").Value)%></td>
                <td class="textepfister" width="100">&nbsp;</td>
              </tr>
              <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  Recordset1.MoveNext()
Wend %>
        <tr align="left"> 
                <td colspan="4" height="10">
                  <table border="0" width="450" align="center">
                    <tr> 
                      <% 
debut = cstr(mm_offset+1)
fin = cstr(mm_offset+8)
nbrec = recordset2.fields.item("nbrec").value
if (nbrec=1) then 
texteaafficher = "1 résultat trouvé " 
else

	if (nbrec<9) then 
				texteaafficher= cstr(nbrec)+" résultat(s) trouvé(s)"
				else
					if (not mm_attotal) then 
					texteaafficher = "résultat(s) "+debut+" à "+fin+" sur "+cstr(nbrec)+" trouvé(s)"
					else 
					texteaafficher = "le(s) Dernier(s) résultat(s)" 
					end if
	end if
end if
if (nbrec=0) then texteaafficher="" end if
%>
                      <td width="120" align="center" class="textepfister">&nbsp;</td>
                      <td align="center" class="textepfister"><%=texteaafficher%></td>
                      <td width="25" align="center"> 
                        <% If MM_offset <> 0 Then %>
                        <a href="<%=MM_moveFirst%>"><img src="images/First.gif" border=0></a> 
                        <% End If ' end MM_offset <> 0 %>
                      </td>
                      <td width="25" align="center"> 
                        <% If MM_offset <> 0 Then %>
                        <a href="<%=MM_movePrev%>"><img src="images/Previous.gif" border=0></a> 
                        <% End If ' end MM_offset <> 0 %>
                      </td>
                      <td width="25" align="center"> 
                        <% If Not MM_atTotal Then %>
                        <a href="<%=MM_moveNext%>"><img src="images/Next.gif" border=0></a> 
                        <% End If ' end Not MM_atTotal %>
                      </td>
                      <td width="25" align="center"> 
                        <% If Not MM_atTotal Then %>
                        <a href="<%=MM_moveLast%>"><img src="images/Last.gif" border=0></a> 
                        <% End If ' end Not MM_atTotal %>
                      </td>
                    </tr>
                  </table>

      
                </td>
              </tr>
            </table>
            <span class="textepfister">Attention 
            aux homonymies , le r&eacute;sultat n'est peut &ecirc;tre pas en rapport 
            avec votre recherche.<br><a href="solvadebut.asp" class="textepfistervrai12">
            Nouvelle recherche</a>.</span> 
            <% else %>
            <span class="textepfister">Aucun résultat à votre recherche, faites 
            une <a href="solvadebut.asp" class="textepfistervrai12"> nouvelle 
            recherche</a>.</span> 
            <% end if %>
            <br>
            <br>
            <span class="textepfistervrai12"><a href="solvadebut.asp">Retour &agrave; 
            la consultation</a></span></td>
        </tr>
        <tr> 
          <td height="40">&nbsp;</td>
          <td height="40" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/clefs3.gif" width="40" height="40"><span class="textepfister">Pour 
            visualiser la fiche d&eacute;biteur cliquez sur la ligne correspondante</span></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
<%
Recordset1.Close()
%>
<%
Recordset2.Close()
%>
