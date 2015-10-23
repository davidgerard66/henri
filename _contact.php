<?
if ($_POST ["email"] != '') {
	
	
	
	
	$mail = 'contact@abcs-spain.com'; // Déclaration de l'adresse de destination.
if (!preg_match("#^[a-z0-9._-]+@(hotmail|live|msn).[a-z]{2,4}$#", $mail)) // On filtre les serveurs qui rencontrent des bogues.
{
	$passage_ligne = "\r\n";
}
else
{
	$passage_ligne = "\n";
}
//=====Déclaration des messages au format texte et au format HTML.
$message_txt = "Nouveau message :".$_POST ["message"]." envoye par ".$_POST ["nom"]." ".$_POST ["prenom"]." ".$_POST ["email"]." ".$_POST ["tel"]." objet : ".$_POST ["sujet"];
$message_html = "<html><head></head><body><b>Nouveau message : </b>".$_POST ["message"]."<BR> envoye par ".$_POST ["nom"]." ".$_POST ["prenom"]."<br>email : ".$_POST ["email"]."<br>tel: ".$_POST ["tel"]."<br> objet : ".$_POST ["sujet"]."</body></html>";
//==========
 
//=====Création de la boundary
$boundary = "-----=".md5(rand());
//==========
 
//=====Définition du sujet.
$sujet = "Message de la part d'un internaute";
//=========
 
//=====Création du header de l'e-mail.
$header = "From: \"A.B.C.S\"<contact@abcs-spain.com>".$passage_ligne;
$header.= "Reply-to: \"A.B.C.S\" <contact@abcs-spain.com>".$passage_ligne;
$header.= "MIME-Version: 1.0".$passage_ligne;
$header.= "Content-Type: multipart/alternative;".$passage_ligne." boundary=\"$boundary\"".$passage_ligne;
//==========
 
//=====Création du message.
$message = $passage_ligne."--".$boundary.$passage_ligne;
//=====Ajout du message au format texte.
$message.= "Content-Type: text/plain; charset=\"ISO-8859-1\"".$passage_ligne;
$message.= "Content-Transfer-Encoding: 8bit".$passage_ligne;
$message.= $passage_ligne.$message_txt.$passage_ligne;
//==========
$message.= $passage_ligne."--".$boundary.$passage_ligne;
//=====Ajout du message au format HTML
$message.= "Content-Type: text/html; charset=\"ISO-8859-1\"".$passage_ligne;
$message.= "Content-Transfer-Encoding: 8bit".$passage_ligne;
$message.= $passage_ligne.$message_html.$passage_ligne;
//==========
$message.= $passage_ligne."--".$boundary."--".$passage_ligne;
$message.= $passage_ligne."--".$boundary."--".$passage_ligne;
//==========
 
//=====Envoi de l'e-mail.
mail($mail,$sujet,$message,$header);
//==========
	
	header('Location: index.php?aff=envoiok');    
}
?>




<link href="css/style2.css" rel="stylesheet" type="text/css" />


<script language="javascript">
function valider(){
	
	
if (IsEmail(document.formulaire.email.value)==false) {alert('votre email est invalide');return false}
document.formulaire.submit()
	
	}
function IsEmail(email) {
// Vérifie si un Email est correct
   var saisie,saisie1,saisie2,saisie3;
   saisie = email.indexOf("@");
   if (saisie!=(-1)) {
      longueur = email.length;
      saisie1 = email.substring(saisie+1,longueur);
      saisie2 = saisie1.indexOf(".");
      longueur = saisie1.length;
      saisie3 = saisie1.substring(saisie2+1,longueur);
      if (saisie2==(-1)) return false;
      else {
         if (saisie3 == "") return false;
         else return true;
      }
   }
   else return false;
   }
</script>

<form name='formulaire' id='formulaire' action='_contact.php' method='post' style="width:400px;">
<table width="820" cellspacing="1">
  <tr><td width="214" >Votre nom : </td><td width="380"><input name='nom' type='text' size='40'></td>
    <td width="180" rowspan="8" valign="top">
    
    <div style='padding:4px;width:214px;' id='texte'>
    
    <div id='titre' style='width:190px; line-height:26px;'><img src="images2/mariage/puce_abcs.png" width="24" height="24" /> A.B.C.S</div>
    Area Business Consultancy Services<br />
     Carrer Nou 63-65 - 1-6a <br />
     17600 FIGUERES <br />
     GIRONA (Spain) <br />
    Fr +33 (0)6 80 44 95 45
    <br />
    Espagne T. +34 972 50 20 92<br />
    <a href="mailto:contact@abcs-spain.com">contact@abcs-spain.com</a> </div>
    </td>
  </tr>
<tr><td >Votre pr&eacute;nom : </td><td><input name='prenom' type='text' size='40'></td>
  </tr>

<tr>
  <td >Votre T&eacute;l&eacute;phone :</td>
  <td><input name='tel' type='text' size='40' id="tel" /></td>
</tr>
<tr>
  <td >Votre email :</td>
  <td><input name='email' type='text' size='40'></td>
</tr>
<tr><td valign="middle" style="font-size:12px">Le motif de votre message</td><td valign="middle" >
  
  <input name='sujet' type='radio' value='renseignement' checked="checked"> 
  Renseignement
  <br />
  <input name='sujet' type='radio' value='rdv'>
  Rendez-vous
  <br />
  <input name='sujet' type='radio' value='autres' />
  tout autres demandes </td>
</tr>
<tr>
  <td valign="middle" style="font-size:12px">&nbsp;</td>
  <td valign="middle"  style="color:#333;font-size:11px;">&nbsp;</td>
  </tr>
<tr><td>Votre message</td><td><textarea name='message' cols='46' rows='8' id="message"></textarea></td>
  </tr>
<tr><td>&nbsp;</td><td>
  <input name='soumettre' type='button' value='Envoyer' onclick="javascript:valider()"></td>
  </tr>
</table>
</form>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36526880-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>