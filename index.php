<html>
<head>

<!-- new -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<!-- ajax -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

<!-- module lightbox 2 -->
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/sexylightbox.v2.3.jquery.min.js"></script>
<link rel="stylesheet" href="css/sexylightbox.css" type="text/css" media="all" />

  <script type="text/javascript">
    $(document).ready(function(){
      SexyLightbox.initialize({color:'white',imagesdir:'sexyimages'});
    });
  </script>
  
<!-- fin module lightbox 2-->

<!--slide-->

    
	<link rel="stylesheet" href="css/global.css">
	<script src="js/slides.min.jquery.js"></script>
	

	<script>
		$(function(){
			// gros slide
			$('#slides').slides({
				preload: true,
				preloadImage: 'images2/loading.gif',
				play: 8000,
				pause: 2000,
				hoverPause: true,
				effect: 'fade'
				
			});
		});
	</script>
  
  <!-- fin slide -->			

<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images2/puce_abcs.ico" />


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="content-language" content="FR">
<META NAME="robots" CONTENT="INDEX,FOLLOW,ALL">



     <?
 if ($aff =="spain") {
   ?>   
   <title>Creaci&ograve;n de sociedad en Francia</title>

  <?
 } else {
	 ?>
 <title>ABCS Cr&eacute;ation de soci&eacute;t&eacute; en espagne, Perpignan</title>
 <?}?>   

</head>

<body style="background:url(images2/mariage/bg.jpg) #FFF center top;" >

<?php
include '_entete_mpod.html';
?>
 <?
  if ($aff =="envoirenseignementok") {
	  ?>
      <script language="javascript">
      alert('Votre message a été correctement envoyé. Un conseiller prendra contact avec vous sous 48h.  Gracias por su visita,  en breve un consejero le atenderá por teléfono en un plazo de 48h.')
      </script>
      <?
      }
 ?>
 
  <?
  if ($aff =="envoiok") {
	  ?>
      <script language="javascript">
      alert('Votre message a été correctement envoyé !')
      </script>
      <?
      }
 ?>
<div align="center" >
<div style='width:1000px;  background-color:#fff; margin-top:0px;' align="center">
 <table width="1000" align="center" border="0" cellspacing="0" cellpadding="0">
  
 

 
 <?
 if ($aff =="") {
   ?>   <tr>
    <td height="360" colspan="2" valign="top">
    <!-- slide accueil -->
<div id="container" style="margin-top:-1px;">		
			<div id="slides" style="margin:0 0 0 0;">
				<div class="slides_container" id="slidescontenu" style="height:358px;"  >
					<li><a href='_contact.php?width=860&height=390' rel="sexylightbox"><img src="images2/mariage-slide/simple.jpg" width="1000" height="358" alt="creation société en espagne"></a></li>
					<li><a href='_contact.php?width=860&height=390' rel="sexylightbox"><img src="images2/mariage-slide/slide3.jpg" width="1000" height="358" alt="creation holding espagne"></a></li>
					<li><a href='_contact.php?width=860&height=390' rel="sexylightbox"><img src="images2/mariage-slide/slide4.jpg" width="1000" height="358" alt="creer sa societe en espagne"></a></li>
                
                  
                  
                    
                    
		    	</div>
       
				<a href="#" class="prev"><img src="images2/mariage/arrow-prev.png" width="24" height="43" alt="Précédent"></a>
				<a href="#" class="next"><img src="images2/mariage/arrow-next.png" width="24" height="43" alt="Suivant"></a>
                
           
			
		</div>
     </div>    </td>
  </tr>
  <?
 }
  ?>          
     <!-- fin slide accueil -->      
     
     
     <?
 if ($aff =="spain") {
   ?>   <tr>
    <td height="360" colspan="2" valign="top">
    <!-- slide accueil -->
<div id="container" style="margin-top:-1px;">		
			<div id="slides" style="margin:0 0 0 0;">
				<div class="slides_container" id="slidescontenu" style="height:358px;"  >
					<li><a href='_contact-es.php?width=900&height=390' rel="sexylightbox"><img src="images2/mariage-slide/es-simple.jpg" width="1000" height="358" alt="creacion sociedad en francia"></a></li>
					<li><a href='_contact-es.php?width=900&height=390' rel="sexylightbox"><img src="images2/mariage-slide/es-slide3.jpg" width="1000" height="358" alt="creacion sociedad en francia"></a></li>
					<li><a href='_contact-es.php?width=900&height=390' rel="sexylightbox"><img src="images2/mariage-slide/es-slide4.jpg" width="1000" height="358" alt="creacion sociedad en francia"></a></li>
                   
                  
                    
                    
		    	</div>
       
				<a href="#" class="prev"><img src="images2/mariage/arrow-prev.png" width="24" height="43" alt="Précédent"></a>
				<a href="#" class="next"><img src="images2/mariage/arrow-next.png" width="24" height="43" alt="Suivant"></a>
                
           
			
		</div>
     </div>    </td>
  </tr>
  <?
 }
  ?>          
     <!-- fin slide accueil -->       
            

  
 <tr>
 <td>
<br>

 <DIV id="contenu" style="padding:4px; width:992px; ">
 
 <?   
switch ($aff) {
case "tarifs":
?>
  <div id="divtarifs">
   <div id="titre">Nos Tarifs</div>     
   <strong>SERVICE cr&eacute;ation soci&eacute;t&eacute; en Espagne</strong><br>
   Prix forfaitaire global de cr&eacute;ation de soci&eacute;t&eacute;s (N.I.E non inclus) H T: 
   <strong>2590.00 </strong>&euro;uros (inclus enregistrement &laquo; registro mercantil &raquo;) 10 &agrave; 15 jours.<br>
   <br>
   <strong>Tarif indicatif hors taxe des prestations Comptable des partenaires (en option)</strong><br>
   <br>
   <strong>Op&eacute;rations nationales et intracommunautaires :</strong><br>
   Pr&eacute;visionnel, comptabilit&eacute; classique, factures achats &ndash; ventes - frais - encaissements - inventaire et stock - contr&ocirc;le des<br>
   mouvements bancaires et de caisses - d&eacute;clarations imp&ocirc;ts &ndash; TVA - comptes annuels -<br>
   <strong>De 110 &euro;uros/mois &agrave; 245,00 &euro;uros/mois suivant prestations</strong><br>
   <br>
   <strong>Entreprise sans mouvement et holding</strong><br>
   700,00 &euro;uros/an basique + d&eacute;claration IS et comptes annuels 500&euro;/an<br>
   <br>
   <strong>Autres services :</strong><br>
   S&eacute;lection de personnel, feuilles de paye, d&eacute;clarations s&eacute;curit&eacute; sociale, IRPF, d&eacute;claration de d&eacute;but d'activit&eacute; ou fin<br>
   d'activit&eacute;, confection de factures, services administratif, l&eacute;gal, comptable, informatique, contr&ocirc;le de tr&eacute;sorerie<br>
   35,00 &euro;uros/heure<br>
   <br>
   <br>
   <strong>Dur&eacute;e de l'engagement :</strong><br>
   De la date d'acceptation &agrave; la fin de l'exercice annuel<br>
   <br>
   <strong>Facturation et mode de paiement :</strong><br>
   Mensuel et ajustement du co&ucirc;t au dernier trimestre, si n&eacute;cessaire<br>
   <br>
   <strong>Documents n&eacute;cessaires pour d&eacute;claration d&eacute;but d'activit&eacute; :</strong><br>
   &gt; Donn&eacute;es personnelles client<br>
   &gt; Donn&eacute;e personnelles client version imprimable<br>
   <br>
   <strong>D&eacute;marches aupr&egrave;s de la s&eacute;curit&eacute; sociale et de l'administration :</strong><br>
   Et/ou pour embauche de personnel :<br>
   - DNI ou Passeport de l'administrateur ou photocopie conforme certifi&eacute; par notaire ou consulat<br>
   - idem pour tout employ&eacute; + certificat de r&eacute;sidence<br>
   - niveau d'&eacute;tudes &ndash; &eacute;tat civil - nombre d'enfants &agrave; charge<br>
   - NIE de l'administrateur<br>
   - NIF de l'entreprise<br>
   - Statuts notari&eacute;s de la soci&eacute;t&eacute;<br>
   - &laquo; Alta &raquo; de l'activit&eacute; fiscal( 036)<br>
   <br>
   <strong>Pour fiche de paye de l'administrateur :</strong><br>
   Certificat de couverture de la s&eacute;curit&eacute; sociale en France ou Certificat de radiation<br>
   <br>
   <strong>Documents n&eacute;cessaires :</strong><br>
   A fournir chaque mois ou trimestre :<br>
   Entre le 1 et le 15 du premier mois suivant un trimestre civil :<br>
   (exemple : le 10 avril pour le 1er trimestre)<br>
   Factures d'achats - Factures de ventes &ndash; R&egrave;glements clients - Relev&eacute;s bancaires - Justificatifs des frais et d&eacute;penses<br>
   <br>
   <br>
  <div   style='text-align:center; margin:auto; cursor:pointer; cursor:hand; padding:8px; width:460px; border: 1px #F0F solid; border-radius:4px; background-color:#F7F7F7'> Vous souhaitez en savoir plus sur nos tarifs ? <strong><a  href="_contact.php?width=860&height=390" rel='sexylightbox'>contactez-nous</a></strong> </div><br>
   <br>
   <strong>Annexe TARIFS services Area Business Consultancy Services</strong><br>
   <br>
   <table width="800" border="0" cellspacing="0" cellpadding="4">
     <tr>
       <th width="400" bgcolor="#737476">Domiciliation de soci&eacute;t&eacute;</th>
       <th colspan="2" bgcolor="#737476">Tarifs (HT)</th>
       </tr>
     <tr>
       <td>Basique</td>
       <td>100,00 &euro;</td>
       <td>Mensuel, facture au semestre</td>
     </tr>
  <!--   <tr>
       <td>&quot;Autonomo&quot; (autoentrepreneur)</td>
       <td>60,00 &euro;</td>
       <td>Mensuel</td>
     </tr>-->
     <tr>
       <td>R&eacute;exp&eacute;dition courrier (5) </td>
       <td>9,00 &euro;</td>
       <td>Mensuel, facture au semestre</td>
       </tr>
     <tr>
       <td>Domiciliation &agrave; &laquo; efectonotificaciones &raquo;</td>
       <td>50,00 &euro;</td>
       <td>Mensuel, facture au semestre</td>
     </tr>
    <!-- <tr>
       <td>R&eacute;exp&eacute;dition par fax (5)</td>
       <td>29,00 &euro;</td>
       <td>Mensuel</td>
       </tr>
       -->
   </table>
   <br>
   (5) : Frais postaux et d'appels &agrave; la charge du client.<br>
   <br>
   <br>
   <table width="800" border="0" cellspacing="0" cellpadding="4">
     <tr>
       <th width="400" bgcolor="#737476">Gestion et d&eacute;veloppement </th>
       <th bgcolor="#737476">Tarifs (HT)</th>
       <th width="150" bgcolor="#737476">D&eacute;lai</th>
     </tr>
     <tr>
       <td>Demande de N.I.E. (1)</td>
       <td>189,00 &euro;</td>
       <td> 20 &agrave; 30 jours</td>
     </tr>
     <tr>
       <td>Demande de C.R. (2)</td>
       <td>339,00 &euro;</td>
       <td>environ 90 jours</td>
     </tr>
     <tr>
       <td>Permis de conduite, changement</td>
       <td>450,00 &euro;</td>
       <td>90/120 jours</td>
     </tr>
     <tr>
       <td>Ouverture compte bancaire: (3)</td>
       <td>390,00 &euro;</td>
       <td>le jour m&ecirc;me</td>
     </tr>
     <tr>
       <td>Demande de nom de soci&eacute;t&eacute; (3)</td>
       <td>230,00 &euro;</td>
       <td>3 &agrave; 4 jours</td>
     </tr>
     <tr>
       <td>Demande de statut travailleur autonome (3)</td>
       <td>290,00 &euro;</td>
       <td>2 &agrave; 3 jours</td>
     </tr>
     <tr>
       <td>Recherche de partenaires commerciaux </td>
       <td>Devis</td>
       <td>&nbsp;</td>
     </tr>
     <tr>
       <td>Recherche de fournisseurs</td>
       <td>suivant devis </td>
       <td>3 jours</td>
     </tr>
     <tr>
       <td>Certification de document par notaire (4)</td>
       <td>20,60 &euro;</td>
       <td>le jour m&ecirc;me</td>
     </tr>
     <tr>
       <td>Photocopie noir et blanc, la page</td>
       <td>0,25 &euro;</td>
       <td>le jour m&ecirc;me</td>
     </tr>
     <tr>
       <td>Photocopie couleur, la page</td>
       <td>1,00 &euro;</td>
       <td>le jour m&ecirc;me</td>
     </tr>
     <tr>
       <td>Services linguistiques</td>
       <td>suivant devis </td>
       <td>&nbsp;</td>
     </tr>
     <tr>
       <td>Traduction</td>
       <td>suivant devis </td>
       <td>&nbsp;</td>
     </tr>
   </table>
   <br>
   (1) : Num&eacute;ro d'identification &eacute;tranger.<br>
   (2) : Carte de r&eacute;sident en Espagne.<br>
   (3) : Inclus dans le forfait de cr&eacute;ation de soci&eacute;t&eacute; en Espagne.<br>
   (4) : Par page (selon la l&eacute;gislation en Espagne).<br>
   (5) : Frais postaux non inclus
   <br>
   <br>
</div>
<?
    break;
case "societeespagne":
?>
<div id="texte">
   <div id="titre">Création de soci&eacute;t&eacute; </div>     
    <p ><br>
      <strong>D&eacute;marches administratives pour l'Espagne</strong></p>
    <p>&nbsp;</p>
    <p>1/ L&eacute;gitimation chez le notaire du DNI - CNI ou passeport valide. (Pour chaque actionnaire)<br>
      2/ Demande de NIE (<strong>N</strong>um&eacute;ro d&rsquo;<strong>I</strong>dentification <strong>&Eacute;</strong>tranger &ndash; <strong>NON INCLUS DANS FORFAIT CREATION</strong>). Compter un d&eacute;lai d&rsquo;obtention entre 2 et 5 semaines en &eacute;t&eacute;.<br>
      3/ Enregistrement de la d&eacute;nomination de votre future soci&eacute;t&eacute; &agrave; d&eacute;poser au registre de  Madrid (4 jours)<br>
      4/ Ouverture du compte bancaire destin&eacute; &agrave; recevoir les fonds du capital de la soci&eacute;t&eacute; en constitution. <br>
      5/ &Eacute;tablissement des Statuts de type SL capital 3000&euro;, objet social de la soci&eacute;t&eacute; et signature de la constitution chez notaire <br>
      en pr&eacute;sence obligatoire de tous les associ&eacute;s. <br>
      6/ Demande 036 du NIF (num&eacute;ro de TVA espagnol)  NIF=RCS ou Intracom (3 &agrave; 4 mois sous conditions de respect des conventions UE). <br>
      7/ Enregistrement des statuts au Registre Mercantil de G&eacute;rone (10-15 jours) <br>
      8/ Enregistrement de documents administratifs des associ&eacute;s et de mise en activit&eacute; de la soci&eacute;t&eacute;  (mod&egrave;les  030/ 600/ 036). <br>
      9/ Demande de &laquo; certificado digital &raquo;aupr&egrave;s des services fiscaux de &laquo; HACIENDA &raquo; <br>
      10/ Validation du compte bancaire soci&eacute;t&eacute; enregistr&eacute;e. <br>
    </p>
    <p style='color:red'>Nous nous chargeons d'effectuer toutes les d&eacute;marches aupr&egrave;s des diff&eacute;rentes administrations.<br>
    </p>
    <p>&nbsp;</p>
    <p><strong>Autres prestations d'assistance commerciale et de suivi client incluses dans le forfait de cr&eacute;ation d'entreprise.</strong><br>
    </p>
    <p>1/ Assistance recherche local commercial.<br>
      2/ Assistance recherche d'un Agent Commercial en Espagne en vue du d&eacute;veloppement de l'activit&eacute; en Espagne.<br>
      3/ Mise en place d'un num&eacute;ro de t&eacute;l&eacute;phone Espagnol en VOIP pour 14&euro; par mois.<br>
      4/ Mise &agrave; disposition d'un bureau en open space avec WIFI pendant les horaires d'ouverture du centre d'affaires.<br>
      5/ Accompagnement du d&eacute;veloppement commercial pendant toute la dur&eacute;e de la domiciliation (1H par mois)<br>
      6/ Assistance dans la recherche de nouveaux fournisseurs en Espagne.<br>
      7/ Assistance dans la recherche de financements en Espagne de votre future activit&eacute;.</p>
    <p >&nbsp;</p>
    <p ><u>Nous vous proposons aussi un large catalogue de services en option pour d&eacute;velopper votre activit&eacute; en Espagne.</u><br>
      <a href="?aff=tarifs">Tous  ces services et leurs prix sont pr&eacute;sent&eacute;s dans la rubrique Tarifs</a><br>
      <br>
      Vous souhaitez en savoir plus sur la cr&eacute;ation de votre soci&eacute;t&eacute; en espagne ?  <strong><a  href="_contact.php?width=860&height=390" rel='sexylightbox'>contactez-nous gratuitement pour un rendez-vous</a></strong><br>
    </p>
   </div>
<?php
break;
   case "autonomo":
?>
<div id="texte">
   <div id="titre">Contrat d'assistance "AUTONOMO" - Résidence en Espagne obligatoire </div>     
    <p ><br>
      <strong>D&eacute;marches administratives pour l'Espagne</strong></p>
    <p>&nbsp;</p>
    <p>1/ L&eacute;gitimation chez le notaire Espagnol du DNI &ndash; CNI ou passeport valide. (Pour chaque actionnaire) <br>
      2/ Demande de NIE (<strong>N</strong>um&eacute;ro d&rsquo;<strong>I</strong>dentification <strong>&Eacute;</strong>tranger) compter un d&eacute;lai d&rsquo;obtention entre 2 et 5 semaines en &eacute;t&eacute;.  <br>
      3/ Enregistrement 030 (oficina liquidadora) <br>
      4/ Demande de &laquo; certificado digital &raquo;aupr&egrave;s des services fiscaux de &laquo; HACIENDA &raquo; <br>
      5/ Enregistrement 037 (d&eacute;claration de d&eacute;but d&rsquo;activit&eacute;) <br>
      6/ Ouverture de compte bancaire <br>
      7/ Inscription au r&eacute;gime des &laquo; Autonomos &raquo; aupr&egrave;s de la s&eacute;curit&eacute; sociale Espagnole. <br>
      8/ Trois mois aupr&egrave;s inscription d&eacute;placement a G&eacute;rone pour demande de carte de r&eacute;sident. <br>
      9/ Validation du compte bancaire soci&eacute;t&eacute; enregistr&eacute;e. <br>
    </p>
    <p style='color:red'>Nous nous chargeons d'effectuer toutes les d&eacute;marches aupr&egrave;s des diff&eacute;rentes administrations.<br>
    </p>
    <p>&nbsp;</p>
    <p><strong>Autres prestations d&rsquo;assistance commerciale et de suivi client cr&eacute;ation d&rsquo;entreprise pour les clients en option.<br>
      <br>
</strong>1/ Assistance recherche local commercial. <br>
2/ Mise &agrave; disposition d&rsquo;un bureau en &laquo; Open Space &raquo; avec WIFI pendant les horaires d&rsquo;ouverture du centre d&rsquo;affaires. <br>
3/ Accompagnement du d&eacute;veloppement commercial. <br>
4/ Assistance dans la recherche de nouveaux fournisseurs en Espagne. <br>
5/ Assistance dans la recherche de financements en Espagne de votre future activit&eacute;.  <br>
<br>
<u>Services &agrave; disposition dans le centre d&rsquo;affaires: </u><br>
<br>
1/ Secr&eacute;tariat <br>
2/ Standard personnalis&eacute; <br>
3/ Assistance Fiscalit&eacute; <br>
4/ Juridique <br>
5/ Traductions </p>
    <p >&nbsp;</p>
    <p ><u>Nous vous proposons aussi un large catalogue de services en option pour d&eacute;velopper votre activit&eacute; en Espagne.</u><br>
      <a href="?aff=tarifs">Tous  ces services et leurs prix sont pr&eacute;sent&eacute;s dans la rubrique Tarifs</a><br>
      <br>
      Vous souhaitez en savoir plus sur le contrat assistance AUTONOMO en espagne ?  <strong><a  href="_contact.php?width=860&height=390" rel='sexylightbox'>contactez-nous gratuitement pour un rendez-vous</a></strong><br>
    </p>
   </div>
<?
break;
case "holding":
?>
<div id="texte">
   <div id="titre">Création de holdings : L'E.T.V.E</div>     
    <p ><br>
      <strong>ETVE</strong> signifie <strong>Entidades de Tenencia de Valores Extranjeros</strong> (Entit&eacute; d&eacute;tentrice de participations      &eacute;trang&egrave;res).<br>
      <br>
      Ce type de soci&eacute;t&eacute; est l'&eacute;quivalent des holdings de participation-exemption hollandais ou 
      luxembourgeois (SOPARFI). <br>
      Son r&eacute;gime fiscal est l'un des plus attractifs en Europe. Ces soci&eacute;t&eacute;s
      b&eacute;n&eacute;ficient d'une exon&eacute;ration de leurs b&eacute;n&eacute;fices <br>
      en provenance de filiales &eacute;trang&egrave;res, lesquels
      peuvent provenir de distributions de dividendes ou de plus-values de cession des participations.<br>
      <br>
      Pour profiter de ce statut avantageux, ce type de holding doit remplir un certain nombre de 
      conditions :<br>
      <br>
      - centre de gestion situ&eacute; en Espagne<br>
      <br>
      - la gestion de participations &eacute;trang&egrave;res doit appara&icirc;tre dans l'objet social. <br>
      Si le holding exerce
      d'autres activit&eacute;s, celles-ci seront impos&eacute;es comme tout autre soci&eacute;t&eacute;.<br>
      <br>
      - les actions ne doivent pas &ecirc;tre au porteur mais &eacute;mises par voie d'inscription<br>
      <br>
      - la holding doit avoir une pr&eacute;sence r&eacute;elle en Espagne &agrave; travers des ressources mat&eacute;rielles et
      humaines telles qu'un 'administrador' (g&eacute;rant) <br>
      ou un employ&eacute; qui s'occupe des obligations fiscales et
      comptables<br>
      <br>
      <strong>R&eacute;gime d'imposition :</strong><br>
      <br>
      Les dividendes remont&eacute;s vers l'ETVE ainsi que les plus-values r&eacute;alis&eacute;es lors de cession de
      participations sont exon&eacute;r&eacute;s d'imp&ocirc;t sur les soci&eacute;t&eacute;s. <br>
      <br>
      Il y a deux niveaux de conditions :<br>
      <br>
      -c&ocirc;t&eacute; holding, d&eacute;tention d'au-moins 5% de participation dans la filiale, et ce, depuis plus de 12 mois.<br>
      <br>
      -c&ocirc;t&eacute; filiale, pas d'activit&eacute; sur le sol espagnol, les b&eacute;n&eacute;fices doivent provenir pour 85% d'activit&eacute;s d'entreprise,<br>
      assujettissement &agrave; un imp&ocirc;t analogue &agrave; l'IS espagnol et ne pas &ecirc;tre install&eacute; dans la liste noire des paradis fiscaux.<br>
      <br>
 Vous souhaitez en savoir plus sur l'ETVE  ?  <strong><a  href="_contact.php?width=860&height=390" rel='sexylightbox'>contactez-nous gratuitement pour un rendez-vous</a></strong><br>
    </p>
   </div>
<?
break;
case "canaries":
?>
<div id="texte">
   <div id="titre">Constitution de soci&eacute;t&eacute; aux &Icirc;les Canaries</div>     
    <p ><br>
      La constitution d'une soci&eacute;t&eacute; aux &Icirc;les Canaries vous procure un avantage important sur vos concurrents :<strong><br>
      <br> 
       la TVA n'est pas applicable &agrave; vos clients.  </strong><br>
    </p>
    <p >La cr&eacute;ation d'une soci&eacute;t&eacute; aux &Icirc;les Canaries pr&eacute;sente d'autres avantages, tous pleinement admis par l'Union Europ&eacute;enne. <br>
      L'IGIC, taxe sur la consommation, rel&egrave;ve du R&eacute;gime Fiscal et &Eacute;conomique sp&eacute;cial des &Icirc;les Canaries (REF) con&ccedil;u pour encourager les investissements dans ces territoires par all&egrave;gement du fardeau fiscal. <br>
      <br>
<br>
      <br>
      &bull;	La Zone Sp&eacute;ciale des &Icirc;les Canaries (ZEC)  <br>
      &Agrave; la place de l'imp&ocirc;t espagnol sur les soci&eacute;t&eacute;s au taux normal de 25 &agrave; 30 %, <br>
      le taux d'imposition appliqu&eacute; aux soci&eacute;t&eacute;s admises en ZEC est de 4 %.  <br>
      <br>
      &bull;	D&eacute;duction sur l'imp&ocirc;t sur les soci&eacute;t&eacute;s pour investissements  Incitation fiscale sous forme d'all&egrave;gement applicable &agrave; l'imp&ocirc;t sur les soci&eacute;t&eacute;s <br>
      ou l'imp&ocirc;t sur le revenu. 
      Le taux d'abattement est sup&eacute;rieur de 80% par rapport aux all&egrave;gements du r&eacute;gime g&eacute;n&eacute;ral, 
      avec un &eacute;cart minimum de vingt points.  <br>
      <br>
      &bull;	Abattements fiscaux pour investissements productifs  Abattements sur l'imp&ocirc;t sur les soci&eacute;t&eacute;s ou sur le revenu r&eacute;sultant de la vente de biens corporels produits aux &Icirc;les Canaries dans les activit&eacute;s industrielles, agricoles, l'&eacute;levage et la p&ecirc;che. Ces r&eacute;ductions sont de 50 %. <br>
      <br>
      &bull;	Exon&eacute;ration des droits de mutation et droit de timbre (ITP et AJD)  Exon&eacute;ration, sous certaines conditions, des frais d'immatriculation et d'augmentation de capital, et sur l'achat de marchandises et droits de douane.  <br>
      <br>
      &bull;	R&eacute;serve pour investissements dans les Canaries (RIC)  Accorde une r&eacute;duction de l'assiette imposable de l'imp&ocirc;t sur les soci&eacute;t&eacute;s pouvant atteindre 90 % des b&eacute;n&eacute;fices non distribu&eacute;s affect&eacute;s &agrave; l'acquisition de biens corporels neufs ou d'occasion, &agrave; la souscription de valeurs ou inscription en compte de la dette publique des &Icirc;les Canaries, ou &agrave; la souscription d'actions ou de parts sociales au capital de soci&eacute;t&eacute;s ayant un &eacute;tablissement permanent aux &Icirc;les Canaries. Les personnes physiques assujetties &agrave; l'imp&ocirc;t sur le revenu qui d&eacute;terminent leurs r&eacute;sultats nets par la m&eacute;thode d\'estimation directe peuvent pr&eacute;tendre &agrave; un abattement sur le montant total de leur imposition pour la quotit&eacute; nette du r&eacute;sultat d'exploitation affect&eacute;e au RIC. <br>
      <br>
      <strong>FAQs</strong>:<br>
      <br>
      <u><em>Les &Icirc;les Canaries figurent-elles sur la liste noire des paradis fiscaux &eacute;tablie par l'Union Europ&eacute;enne ?  </em></u><br>
<br>
<strong>Bien au contraire</strong>. Les comptes bancaires ouverts aux &Icirc;les Canaries sont totalement transparents ; <br>
les informations financi&egrave;res sont transmises &agrave; la Banque d'Espagne dans les m&ecirc;mes conditions que pour le reste du pays. <br>
Pour cette raison, vous n'aurez jamais de probl&egrave;mes pour retirer vos fonds d'un compte bancaire ouvert aux Canaries, comme cela arrive dans les divers paradis fiscaux offshore.<br>
      <br>
      Vous souhaitez en savoir plus sur la cr&eacute;ation de soci&eacute;t&eacute; aux Iles Canaries  ?  <strong><a  href="_contact.php?width=860&height=390" rel='sexylightbox'>contactez-nous gratuitement pour un rendez-vous</a></strong><br>
    </p>
   </div>

<?
break;
case "spain":
?>
<div id="texte">
   <div id="titre">Creaci&oacute;n de sociedades en Francia (<a href="_contact-es.php"><strong><a  href="_contact-es.php?width=860&height=390" rel='sexylightbox'>contacto</a></strong></a>)</div>     
  Nuestras oficinas están abiertas en Figueres (Girona) desde hace varios años ofreciendo distintas posibilidades, <br>
  asesorando y domiciliando empresas con proyección fuera de nuestras fronteras.
  <br>
  <br>
  Procuramos atender las necesidades de nuestros clientes  y ayudarlos a escoger sus colaboradores para conseguir &eacute;xito desde el inicio.
  <br>
  <br>
  <br>
  •	Domiciliación de empresas en toda Europa
  <br>
  •	Creación de sociedades fuera de la U.E.
  <br>
  •	Orientación y asistencia en negocios internacionales
  <br>
 <!-- &bull;	Nuevos servicios bancarios ofrecidos desde EEUU, transferencias mundiales on-line a bajo coste y tarjeta prepago a trav&eacute;s de su cuenta corriente (www.globaltransactionservices.net) <br>-->
  <br>
  Si desea obtener más información contacte con nosotros gratuitamente
  <u>972 502 092</u><br>
  <br>
  Gu&iacute;a comercial de nuestro amplio catálogo  de prestaciones en Francia para el desarrollo de su proyecto :
  <br>
  <br>
  •	Buscamos su  local comercial, as&iacute; como sus agentes independientes <br>
  •	L&igrave;nea telefónica francesa en VOIP a partir de 14,00 € al mes y zona WIFI
  <br>
  •	Asistencia en la obtención de nuevos proveedores intracomunitarios
  <br>
  •	Asesoramiento en conseguir recursos financieros
  <br>
  <br>
  Si desea más información contacte con nosotros gratuitamente

  <br>
  <br>
  <strong>REQUISITOS BASICOS PARA CREAR SU EMPRESA</strong><br>
  <br>
  •	Idea
  <br>
  •	Proyecto personal
  <br>
  •	Estudio de Mercado
  <br>
  •	Plan de Empresa
  <br>
  •	Recursos Financieros
  <br>
  •	Ayudas para la creación de empresas
  <br>
  •	Forma jur&igrave;dica <br>
  •	Trámites administrativos
  <br>
  •	Lugar de instalación
  <br>
  •	Fecha prevista para iniciar la actividad
  <br>
  <br>
  Las empresas con proyección internacional pueden crear una estructura en Francia,
  <br>
  <br>
  •	Estable –sucursal, filial-
  <br>
  •	Ligera, que permite un inicio más ágil –"bureau de liaison", "bureau de représentation"<br>
  <br>
  <br>
  <strong>DESPACHO DE REPRESENTACION</strong><br>
<br>
<strong>Concepto</strong> Es ante todo un observatorio ideal para la sociedad madre. <br>
Le facilita todos los contactos que precisa (clientes potenciales, proveedores, colaboradores), le proporciona la información necesaria y asegura su comunicación y publicidad.
<br>
<br>
<strong>Forma jurídica</strong> Su función es únicamente comercial. Puede ocuparse de preparar todas las negociaciones y contratos originados en la gestión  de  clientes y proveedores extranjeros,  pero es la sociedad quien debe firmar todos los documentos, emitir y recibir las facturas.<br>
<br>
El "Bureau de représentation" o "Despacho de representación" carece de personalidad jurídica, no posee denominación social, comercial, patrimonio, ingresos, gastos, ni capital propios.
<br>
<br>
Solamente necesita un representante para gestionarlo.
<br>
<br>
<strong>Cómo crearlo </strong> ABCS se encarga de todos los trámites para ponerlo a su disposición lo antes posible.
<br>
<br>
<strong>Impuestos</strong> Al no tener forma jur&iacute;dica ni actividad empresarial propia, no está sometido a fiscalidad en Francia, ni declaraciones informativas. Está exento también de las tasas locales a excepción de que el despacho de representación  se encuentre en una oficina o local  alquilado. En ese caso sólo deberá pagar  "la taxe d'habitation".<br>
<br>
<strong>Personal</strong> Los empleados que figuren en nómina, lo harán según la legislación laboral francesa vigente  así como la liquidación de los importes a pagar a los distintos organismos competentes.
<br>
<br>
<br>

<div style='border:1px red dotted; padding:4px;'>
<u>Importante</u> <br>
Cuando la actividad del despacho de representación no se limite a las actividades comerciales y de prospección y estudio de mercado, la Administración Fiscal estimará que se trata de una sucursal, es decir, una sociedad extranjera situada en territorio francés sometida a su legislación y obligaciones tributarias.
</div>

<br>
¿ Usted desea saber más sobre  la creación de su sociedad en Francia ? 
   <strong><a  href="_contact-es.php?width=860&height=390" rel='sexylightbox'>P&oacute;ngase en contacto con nosotros gratuitamente para una cita</a></strong></div>

<?
break;
case "documentation":
?>
<div id="texte">
   <div id="titre">Documentations &agrave; t&eacute;l&eacute;charger </div>     
    <p ><span style="text-align:left">Les documents propos&eacute;s ici sont au format PDF, pour les lire il vous suffit d'installer le logiciel gratuit Acrobat Reader (<a  style="color:#a82268" href="http://get.adobe.com/fr/reader/" target="_blank">t&eacute;l&eacute;chargeable ici)</a>.</span><br>
      <br>
      <br>
      <br>
      <br>
      <br>
      * <a href="download/La-Lettre-260.pdf" title="creation soci&eacute;t&eacute; espagne &gt; smic des pays union euroop&eacute;enne" target="_blank">Le bulletin d'information de la chambre de commerce fran&ccedil;aise &agrave; Barcelone Janvier/F&eacute;vrier 2013 </a>(pdf, 60ko,  maj du 28/11/2012)<br>
        - Page 6 : pr&eacute;sentation d'A.B.C.S<br>
      <br>
      * <a href="download/dde_NIE.pdf" title="soci&eacute;t&eacute; espagne &gt; demande de NIE" target="_blank">Demande de N.I.E</a> (pdf, 106ko, maj du 28/11/2012)<br>
      <br>
      * <a href="download/bureau_de_representation_ou_bureau_de_liaison.pdf" title="BUREAU DE REPRESENATION ESPAGNE SOCIETE" target="_blank">Le bureau de repr&eacute;sentation ou bureau de liaison</a> (pdf, 65ko, maj du 28/11/2012)<br>
      <br>
      * <a href="download/Impots_Non_residents.pdf" title="Impots sur le revenu des non r&eacute;sidents en espagne" target="_blank">Imp&ocirc;t sur le Revenu des Non-R&eacute;sidents</a> (pdf, 195ko,  maj du 28/11/2012)<br>
      <br>
      * <a href="download/SMIC_en_EU.pdf" title="creation soci&eacute;t&eacute; espagne &gt; smic des pays union euroop&eacute;enne" target="_blank">Le Smic dans les pays de l'Union europ&eacute;enne </a>(pdf, 60ko,  maj du 28/11/2012)<br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
  <br>
      <br>
  <br>
      <br>
      Vous souhaitez en savoir plus sur la cr&eacute;ation de votre soci&eacute;t&eacute; en espagne ?  <strong><a  href="_contact.php?width=860&height=390" rel='sexylightbox'>contactez-nous gratuitement pour un rendez-vous</a></strong><br>
    </p>
</div>

<?
break;
case "renseignementFR":
?>
<?php
include '_renseignement.php';
?>
<?
break;

default:
?>
  <div id="texte">
   <div id="titre">A.B.C.S Area Business Consultancy Services</div>     
    <p >Pr&eacute;sents &agrave; Figueres (20 km de la France) depuis plusieurs ann&eacute;es, <br>
      <strong>ABCS est sp&eacute;cialis&eacute;e dans le conseil et la domiciliation pour les entreprises souhaitant s'&eacute;tablir ou se d&eacute;velopper en Espagne. </strong><br>
      <br>
      <strong>Soci&eacute;t&eacute;s holding avec participations &eacute;trang&egrave;res</strong> <br>
       - Exon&eacute;ration des b&eacute;n&eacute;fices en provenance de filiales &eacute;trang&egrave;res, 
       provenant de la distribution de dividendes ou de plus-values de cession des participations. <br>
       - Les dividendes remont&eacute;s vers l'ETVE ainsi que les plus-values r&eacute;alis&eacute;es lors de cession de participations sont exon&eacute;r&eacute;s d'imp&ocirc;t sur les soci&eacute;t&eacute;s.<br>
       <strong><br>
       Favorable pour les soci&eacute;t&eacute;s commerciales </strong><br>
- Cotisations sociales des dirigeants inf&eacute;rieures &agrave; celle de la France (et de certains pays Europ&eacute;ens).<br>
- Pas de Taxes sur les v&eacute;hicules de soci&eacute;t&eacute;. <br>
- Ouverture rapide de compte bancaire avec carte bleue &agrave; d&eacute;bit imm&eacute;diat ou de cr&eacute;dit.<br>
- Syst&egrave;mes VAD (vente &agrave; distance).<br>
&ndash; E-Business clef en main. <br>
<br>
<!--
 Toujours soucieux de mieux r&eacute;pondre aux attentes et besoins de nos clients,<strong> ABCS </strong>&agrave; choisi des partenaires <br>
 qui apporteront de nouveaux services aux <strong>Etats-Unis</strong> (<a href="http://www.globaltransactionservices.net">www.globaltransactionservices.net</a>) . <br>
 <br>
 - Virements bancaires dans le monde entier &agrave; partir de votre ordinateur. <br>
 - Carte bancaire pr&eacute;pay&eacute;e, sur simple ouverture de compte soci&eacute;t&eacute;. <br>
 - Logiciel bancaire pour soci&eacute;t&eacute; financi&egrave;re <br>
 - Service de domiciliation dans toute l'Europe. <br>
 - Cr&eacute;ation de soci&eacute;t&eacute; en dehors de l'Union Europ&eacute;enne. <br>
 - Conseils et assistance en affaires internationales.<br>
 -->
 <br>
 Vous souhaitez en savoir plus sur les possibilit&eacute;s qui s'offre &agrave; vous ?  <strong><a  href="_contact.php?width=860&height=390" rel='sexylightbox'>contactez-nous gratuitement pour un rendez-vous</a></strong><br>
    </p>
   </div>
 <?   break;
}
?>

   


 </DIV>
 </td></tr>
</table>
</div>









<?php
include '_footer_mpod.html';
?>

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
</body>
</html>


