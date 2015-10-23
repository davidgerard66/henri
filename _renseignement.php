<?
if ($_POST ["email"] != '') {
	
	
	
	
	$mail = 'contact@abcs-spain.com'; // Déclaration de l'adresse de destination.
	//$mail = 'contact@dg-informatique.com'; 
	
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
$message_html = "<html><head></head><body><b>Nouveau message : </b>".$_POST ["message"]."<BR> envoye par ".$_POST ["nom"]." ".$_POST ["prenom"]."<br>email : ".$_POST ["email"]."<br>tel: ".$_POST ["tel"]."<br>profession : ".$_POST ["profession"]."<br>num de cni ou passeport: ".$_POST ["passport"]."<br>a un NIE : ".$_POST ["nie"]."<br>num NIE : ".$_POST ["numnie"]."<br>Prénom du père : ".$_POST ["nompere"]."<br>prenom de la mère : ".$_POST ["prenommere"]."<br>date de naissance : ".$_POST ["datenaissance"]."<br>ADRESSE: ".$_POST ["adresse1"]."<br>".$_POST ["adresse2"]."<br>".$_POST ["adresse3"]."<br>fax: ".$_POST ["fax"]."<br>portable: ".$_POST ["portable"]."<br>Nationalite : ".$_POST ["nationalite"]."<br>pays de residence : ".$_POST ["paysres"]."<br>Statut civil : ".$_POST ["statutcivil"]."<br>prenom,nom de l'epouse : ".$_POST ["epouse"]."</body></html>";
//==========
 
//=====Création de la boundary
$boundary = "-----=".md5(rand());
//==========
 
//=====Définition du sujet.
$sujet = "fiche de renseignement auto";
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
	
	header('Location: index.php?aff=envoirenseignementok');    
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
   
function  changestatutcivil () {
	
	
	var statutcivil = $('#statutcivil').val();
	
	if (statutcivil=='marie regime communautee') {$('#choixepouse').show()}
	if (statutcivil=='Separation de biens') {$('#choixepouse').show()}
	if (statutcivil=='Celibataire') {$('#choixepouse').hide()}
	if (statutcivil=='Divorce') {$('#choixepouse').hide()}
	
	
	
	

	
	}


	
function  changenie() {
	
	$('#divnie').toggle();
	$('#divnumnie').toggle();
	
	}
	
</script>
<style>
.texteespagnol {font-size:12px; font-family:Arial, Helvetica, sans-serif; color:#333}
</style>
<div style='text-align:center; width:800px;margin-left:100px;'>
<form name='formulaire' id='formulaire' action='_renseignement.php' method='post' >
<table width="740" cellpadding="4" cellspacing="1">
  <tr>
    <td colspan="2" align="center" >CREATION EN LIGNE &gt; FICHE DE RENSEIGNEMENTS CLIENT<br />
      <span class="texteespagnol"><br />
      Ficha de datos</span></td>
    </tr>
  <tr>
    <td colspan="2" align="center" >Pour acc&eacute;lerer le traitement de votre demande, merci de remplir cette fiche<br />
      <span class="texteespagnol"><br />
      Para acc&eacute;lerer el tratamiento de su demanda, gracias por cumplir esta ficha</span><br /></td>
    </tr>
  <tr>
    <td width="380" >Votre nom / <em class="texteespagnol">Apellido</em> : </td><td width="473"><input name='nom' type='text' size='40'></td>
    </tr>
<tr>
  <td >Votre pr&eacute;nom / <em class="texteespagnol">Nombre</em> : </td><td><input name='prenom' type='text' size='40'></td>
</tr>

<tr>
  <td align="left">Date de naissance :<br />
    <span class="texteespagnol">Fecha de nacimiento</span></td>
  <td><input name='datenaissance' type='text' size='40' id="datenaissance" /></td>
</tr>
<tr>
  <td >Votre profession / <em class="texteespagnol">Profesion</em> :</td>
  <td><input name='profession' type='text' size='40' id="profession" /></td>
</tr>
<tr>
  <td >Num&eacute;ro de carte d'identit&eacute; et passeport :<br />
    <span class="texteespagnol"><em>N&uacute;mero de carta de identidad y pasaporte </em></span><em>:</em></td>
  <td><input name='passport' type='text' size='40' id="passport" /></td>
  </tr>
<tr>
  <td >Avez-vous un num&eacute;ro N.I.E ?<br />
    <span class="texteespagnol"><em>Tiene num. de NIE ?</em></span><em> :</em></td>
  <td><label for="nie"></label>
    <select name="nie" id="nie" onchange='changenie();'>
      <option value="oui">Oui / Si</option>
      <option value="non" selected="selected">Non / No</option>
    </select></td>
</tr>
<tr>
  <td colspan="2" >
    <div id='divnumnie' style='display:none;border:1px #e2e2e2 dotted; padding:4px; margin-left:30px; background-color: #F4F4F4'>
  <table width="100%" border="0" cellspacing="0" cellpadding="4">
    <tr>
      <td align="right" >N.I.E : <span class="texteespagnol"> </span></td>
      <td><input name='numnie' type='text' size='40' id="numnie" /></td>
    </tr>
    
    </table>
  </div>
  
  <div id='divnie' style='border:1px #e2e2e2 dotted; padding:4px; margin-left:30px; background-color: #F4F4F4'>
  <table width="100%" border="0" cellspacing="0" cellpadding="4">
    <tr>
      <td width="214" align="right">Pr&eacute;nom du p&egrave;re :<br />
        <span class="texteespagnol">Nombre del padre</span></td>
      <td><input name='nompere' type='text' size='40' id="nompere" /></td>
    </tr>
    <tr>
      <td align="right">Pr&eacute;nom de la m&egrave;re :<br />
        <span class="texteespagnol">Nombre de la madre</span></td>
      <td><input name='prenommere' type='text' size='40' id="prenommere" /></td>
    </tr>
    </table>
  </div></td>
  </tr>
<tr>
  <td colspan="2" align="right" >&nbsp;</td>
  </tr>
<tr>
  <td >Votre adresse :<br /><span class="texteespagnol">Direcci&oacute;n de contacto</span> :</td>
  <td><input name='adresse1' type='text' size='40' id="adresse1" /></td>
</tr>
<tr>
  <td >&nbsp;</td>
  <td><input name='adresse2' type='text' size='40' id="adresse2" /></td>
</tr>
<tr>
  <td >&nbsp;</td>
  <td><input name='adresse3' type='text' size='40' id="adresse3" /></td>
</tr>
<tr>
  <td >&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td >Votre T&eacute;l&eacute;phone / <span class="texteespagnol">Tel&eacute;fono</span> :</td>
  <td><input name='tel' type='text' size='40' id="tel" /></td>
</tr>
<tr>
  <td >Votre Fax :</td>
  <td><input name='fax' type='text' size='40' id="fax" /></td>
</tr>
<tr>
  <td >Votre portable / <span class="texteespagnol">M&oacute;vil</span> :</td>
  <td><input name='portable' type='text' size='40' id="portable" /></td>
</tr>
<tr>
  <td >Votre e-mail / <span class="texteespagnol">Correo electr&oacute;nico</span> :</td>
  <td><input name='email' type='text' size='40'></td>
</tr>
<tr>
  <td valign="middle" style="font-size:12px">&nbsp;</td>
  <td valign="middle"  style="color:#333;font-size:11px;">&nbsp;</td>
</tr>
<tr>
  <td >Votre Nationalit&eacute; / <span class="texteespagnol">Nationalidad</span> :</td>
  <td><input name='nationalite' type='text' size='40' id="nationalite" /></td>
</tr>
<tr>
  <td >Votre pays de r&eacute;sidence : <br />
    <span class="texteespagnol">Pa&iacute;s de residencia</span></td>
  <td><input name='paysres' type='text' size='40' id="paysres" /></td>
</tr>
<tr>
  <td >&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td >Votre statut civil :<br />
    <span class="texteespagnol">Estado c&iacute;vil</span></td>
  <td><select name="statutcivil" id="statutcivil" onchange='javascript:changestatutcivil();'>
    <option value="marie regime communautee" selected="selected">Mari&eacute;s sous le r&eacute;gime de la communaut&eacute; / R&eacute;gimen de gananciales</option>
  
    <option value="Separation de biens">S&eacute;paration de biens / Separac&iacute;on de bienes</option>
   
    <option value="Celibataire">C&eacute;libataire / Soltero</option>
     
    
    <option value="Divorce">Divorc&eacute;(e) / Divorciado</option>
     
    
    
    
  </select></td>
</tr>
<tr>
  <td colspan="2" >
  <div id='choixepouse' style='border:1px #e2e2e2 dotted;padding:4px; margin-left:30px; background-color: #F4F4F4'>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td >Pr&eacute;nom et nom de votre &eacute;pouse :<br />
        <span class="texteespagnol">Nombre y Apellido de la esposa </span></td>
      <td><input name='epouse' type='text' size='40' id="epouse" /></td>
      </tr>
    </table>
    </div></td>
</tr>
<tr>
  <td colspan="2" ><div style='padding:4px; broder:1px green solid; background-color:#EEFDF1; font-size:12px; margin-left:30px;'>
  * les donn&eacute;es personnelles vous concernant ne seront jamais transmises &agrave; des tiers.*
 </div>
 <br />

<div style='padding:4px; broder:1px green solid; background-color:#EEFDF1; font-size:12px; margin-left:30px;'>
  En cumplimiento de la Ley Orgánica 15/1999, de 13 de diciembre, de Protección de Datos de Carácter Personal y del Real Decreto 1720/2007, de 21 de diciembre, de desarrollo de esta ley, los datos de carácter personal que facilite en cualquier momento a Area Business Consultancy Services, S.L.U., (en adelante la Sociedad) serán incluidos en un fichero automatizado de datos, titularidad de esta, y mantenidos bajo su responsabilidad, con el fin de ser tratados en la medida en que fueran necesarios o convenientes para el desarrollo de las relaciones que mantengamos con Usted, así como para su uso con fines comerciales, de información y publicitarios de todo tipo de productos y servicios propios.
En cualquier momento, podrá ejercitar los derechos de acceso, rectificación, cancelación y oposición respecto a sus datos personales, mediante comunicación escrita dirigida a la sede de la entidad sita en Av. Marignane Nº 28-6C 17600, FIGUERES o por e-mail dirigido a contact@abcs-spain.com


 </div>
 
 
 
 </td>
  </tr>
<tr><td>&nbsp;</td><td>
  <input name='soumettre' type='button' value='Envoyer / Mandar' onclick="javascript:valider()"></td>
</tr>



</table> 
</form>
</div>
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