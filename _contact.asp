<%
if request.form("email")<>"" then


corps = "client : " &  replace(request.form("nom"),"'","''") &" "& replace(request.form("prenom"),"'","''") &"<br>e-mail : " & request.form("email")&"<br>objet : " &request.form("sujet")&"<br>"&replace(request.form("message"),"'","''")


envoimail  "contact@cabinetpfister.fr","Cabinet Pfister",request.form("sujet"), corps,request.form("email")

response.write("<br><br><span style='font-size:16px;'><b>Votre message a été correctement envoyé<br>Vous recevrez une réponse trés rapidement</b></span><br><br>")

end if
%>
<link href="css/style2.css" rel="stylesheet" type="text/css" />




<form name='formulaire' action='?aff=contact' method='post' style="width:400px;">
<table width="920">
  <tr><td width="155" >Votre nom : </td><td width="433"><input name='nom' type='text' size='50'></td>
    <td width="180" rowspan="7" valign="top">
    
    <div style='padding:4px;width:214px;' id='texte'>
    
    <div id='titre' style='width:190px;'>A.B.C.S</div>
    Area Business Consultancy Services<br />
     Av. Marignane 28-6C <br />
    17600 Figueres <br />
    Espagne T. +33 6 27 39 03 04<br />
    <a href="mailto:contact@abcs-spain.com">contact@abcs-spain.com</a> </div>
    </td>
  </tr>
<tr><td >Votre pr&eacute;nom : </td><td><input name='prenom' type='text' size='50'></td>
  </tr>

<tr>
  <td >Votre email :</td>
  <td><input name='email' type='text' size='50'></td>
  </tr>
<tr><td valign="middle" style="font-size:12px">Le motif de votre message</td><td valign="middle" >
  
  <input name='sujet' type='radio' value='renseignement' checked="checked"> 
  Renseignement
  <br />
  <input name='sujet' type='radio' value='BAT'>
  D&eacute;poser un dossier
  <br />
  <input name='sujet' type='radio' value='probleme technique' />
  Effectuer un r&eacute;glement </td>
  </tr>
<tr>
  <td valign="middle" style="font-size:12px">&nbsp;</td>
  <td valign="middle"  style="color:#333;font-size:11px;">&nbsp;</td>
  </tr>
<tr><td>Votre message</td><td><textarea name='message' cols='50' rows='10' id="message"></textarea></td>
  </tr>
<tr><td>&nbsp;</td><td>
  <input name='soumettre' type='submit' value='Envoyer'></td>
  </tr>
</table>
</form>

