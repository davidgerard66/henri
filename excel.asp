
<% 
Response.ContentType = "application/vnd.ms-excel"
%>
<!--#include file="Connections/basepfister.asp" -->
<%
Recordset1__MMColParam1 = trim(request.querystring("codeperp"))
Recordset1__MMColParam2 = trim(request.querystring("codetoul"))
Recordset1__MMColParam3 = trim(request.querystring("codemont"))

%>

<% 
infoerreur=""
if (Recordset1__MMColParam = "1" and  Recordset1__MMColParam2 = "1" and Recordset1__MMColParam3 = "1") then 
infoerreur="L'export Excel à échoué car vous n'êtes plus ou pas identifié"
end if
%>

<%
larequete = "SELECT *  FROM dossiersw  WHERE ( ref_client = '" + Replace(Recordset1__MMColParam1, "'", "''") + "' or ref_client = '" + Replace(Recordset1__MMColParam2, "'", "''") + "' or ref_client = '" + Replace(Recordset1__MMColParam3, "'", "''") + "') order by nom_deb ASC"
set RS= Server.CreateObject("ADODB.Recordset")
Rs.ActiveConnection = MM_basepfister_STRING
Rs.Source = larequete
Rs.CursorType = 0
Rs.CursorLocation = 2
Rs.LockType = 3
Rs.Open()
Recordset1_numRows = 0
%>
 
<TABLE BORDER=1>
  <TR > 
    <% 
   ' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  ' % Loop through Fields Names and print out the Field Names
  ' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   j = 2 'row counter
 
   %>
    <TD bgcolor="#000099" ><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Vos références"%> </font></B></i></TD>
    <TD bgcolor="#000099" ><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Ref Dossier"%> </font></B></i></TD>
    <TD bgcolor="#000099" ><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Débiteur"%> </font></B></i></TD>
    <TD bgcolor="#000099" ><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Ville"%> </font></B></i></TD>
    <TD bgcolor="#000099" ><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "CP"%> </font></B></i></TD>
    <TD bgcolor="#000099" ><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Créance "%> </font></B></i></TD>
    <TD bgcolor="#000099" ><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Date remise"%> </font></B></i></TD>
    <TD bgcolor="#000099"><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Sommes perçues"%> </font></B></i></TD>
    <TD bgcolor="#000099"><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "soldé"%> </font></B></i></TD>
<TD bgcolor="#000099"><i><B> <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
      <%= "Commentaire abrégé"%> </font></B></i></TD>
  </TR>
  <% 
  ' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   ' % Loop through rows, displaying each field
 ' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   Do While Not RS.EOF 

texte = trim(rs.fields.item("code_f").value)
texte2=""
if (texte="A") then texte2 = "Acompte reçu" end if
if (texte="B") then texte2 = "Depot de bilan" end if
if (texte="C") then texte2 = "Prêt à etre archivé" end if
if (texte="D") then texte2 = "Débiteur disparu" end if
if (texte="I") then texte2 = "Débiteur insolvable" end if
if (texte="J") then texte2 = "Dossier en 'justice' " end if
if (texte="O") then texte2 = "Dossier ouvert" end if
if (texte="T") then texte2 = "Dossier terminé (encaissé)" end if
if (texte="V") then texte2 = "Dossier en visite" end if

  %>
  <TR> 
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <% ="n°: "+RS("vos_ref") %>
      </font></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <% =" "+RS("ref_doss") %>
      </font></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <b><font face="Arial, Helvetica, sans-serif" size="2" color="#000000"> 
      <% = RS("nom_deb") %>
      </font></b></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <% = RS("ville") %>
      </font></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <% = RS("c_postal") %>
      </font></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2" color="#FF0000"> 
      <% = RS("total_du") %>
      </font></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <% = RS("date_creat") %>
      </font></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <% = RS("somme_p") %>
      </font></TD>
    <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <%  if (trim(rs("solde"))="1") then solde="oui" else solde="non" end if %>
      <%=solde %> </font></TD>
 <TD VALIGN=TOP bgcolor="#FFFFFF"> <font face="Arial, Helvetica, sans-serif" size="2"> 
      <%=texte2 %>
      </font></TD>
  </TR>
  <%
  RS.MoveNext
   j = j + 1
    Loop
  ' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   ' % Make sure to close the Result Set and the Connection object
   ' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   RS.Close
    %>
</TABLE>
<%
if (infoerreur<>"") then  %>
<%=infoerreur%>
<%="la requete= "+larequete%>
<% end if %>
<p><i><b><font face="Arial, Helvetica, sans-serif" size="2" color="#990000"><%="Etat gener&eacute; le : "+Cstr(date())%><br>
  </font></b></i></p>
