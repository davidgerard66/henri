<%@LANGUAGE="VBSCRIPT"  %>
<!--#include file="Connections/basepfister.asp" -->
<!--#include file="_commonfunction.asp" -->

<html>
<head>

<!-- new -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<!-- ajax -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<script src="ajax.js" type="text/javascript"></script>
<!-- module lightbox 2 -->
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/sexylightbox.v2.3.jquery.min.js"></script>
<link rel="stylesheet" href="css/sexylightbox.css" type="text/css" media="all" />

  <script type="text/javascript">
    $(document).ready(function(){
      SexyLightbox.initialize({color:'white',imagesdir:'images2/sexyimages'});
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
				pause: 6000,
				hoverPause: true,
				effect: 'fade'
				
			});
		});
	</script>
  
  <!-- fin slide -->			

<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="http://www.faire-part-creatif.com/favicon.ico" />


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="content-language" content="FR">
<META NAME="robots" CONTENT="INDEX,FOLLOW,ALL">

<title>Cabinet Pfister - Recouvrement de cr&eacute;ances</title>

</head>

<body style="background:url(images2/mariage/bg.jpg) #FFF center top;" >


<!--#include file="_entete_mpod.asp" -->
<div align="center">
<div style='width:1000px;  background-color:#fff; margin-top:-2px;' align="center">
 <table width="1000" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="360" colspan="2" valign="top">
    
    <!-- slide accueil -->
<div id="container" style="margin-top:-1px;">		
			<div id="slides" style="margin:0 0 0 0;">
				<div class="slides_container" id="slidescontenu" style="height:358px;"  >
					<li><a href=''><img src="images2/mariage-slide/simple.jpg" width="1000" height="358" alt="recouvrement de créances 66"></a></li>
					<li><a href=''><img src="images2/mariage-slide/slide3.jpg" width="1000" height="358" alt="recouvrement de créances 66"></a></li>
					<li><a href=''><img src="images2/mariage-slide/slide4.jpg" width="1000" height="358" alt="recouvrement de créances 66"></a></li>
                    <!--<li><img src="images2/slide_jeuroumanoff.jpg" width="1000" height="405" alt="faire-part katherine Roumanoff" usemap="#Map4"></li>-->
                  
                  
                    
                    
		    	</div>
       
       

            
               
           <div id="slidemariage" style="margin:0px;padding:0px;position:absolute;margin-top:-415px;z-index:1000;display:none;border-bottom:6px white solid;">
            <img src="images2/slide6.jpg" alt="faire-part de mariage creatifs" width="1000" height="405" border="0"  usemap="#Map5">
            </div>
          
            

     
          
				<a href="#" class="prev"><img src="images2/mariage/arrow-prev.png" width="24" height="43" alt="Précédent"></a>
				<a href="#" class="next"><img src="images2/mariage/arrow-next.png" width="24" height="43" alt="Suivant"></a>
                
           
			
		</div>
     </div>
            
     <!-- fin slide accueil -->       
            
    </td>
  </tr>
  
 <tr>
 <td>

 <DIV id="contenu" style="padding:4px; width:992px; ">
    

<% select case request.querystring("aff") %>

<% case "login"%>
   <div id="texte">
   <div id="titre">Espace Clients </div>
   <form name="form1" method="post" action="login.asp">
     <table width="700" border="0" cellspacing="0" cellpadding="6">
       <tr>
         <td align="right">Votre code d'acc&eacute;s :</td>
         <td width="250"><input onKeyPress="javascript:submitenter(this,event)" type="text" name="champlogin" class="bordures" size="16"></td>
       </tr>
       <tr>
         <td align="right">Votre mot de passe : </td>
         <td><input onKeyPress="javascript:submitenter(this,event)" type="password" name="champpassword" class="bordures" size="16"></td>
       </tr>
       <tr>
         <td align="right">&nbsp;</td>
         <td><input type="submit" name="button" id="button" value="Se connecter"></td>
       </tr>
     </table>
   </form>
   <p ><br>
</p>
</div>
     
     
      <div id="texte">
   
   <div id="titre"> Vous n'&ecirc;tes pas encore abonn&eacute;</div>
     
 	<p>
   et souhaitez b&eacute;n&eacute;ficier de ce service ? Reportez-vous &agrave; la rubrique &laquo;&nbsp;Contacts&nbsp;&raquo; afin de nous envoyer votre demande  par e-mail, - par fax, - par t&eacute;l&eacute;phone.</p>
      </div>

        <div id="texte"></div>
        
        
<% case "clients"%>
   <div id="texte">
   <div id="titre">Nos clients </div>     
    <p >Nous sommes  au service de bon nombres de grossistes locaux et nationaux et de fournisseurs du Grand Sud, principalement dans les secteurs de</p>
    <p ><br>
      - l'agroalimentaire<br>
      - des materiaux<br>
      - de l'automobile<br>
      - des mutuelles d'assurances<br>
      ...
      <br>
      Depuis plus de 30 ans nous sommes sp&eacute;cialis&eacute;s dans le recouvrement de cr&eacute;ances commerciales de ces entreprises. <br>
      A votre demande, nous vous pr&eacute;senterons d'autres r&eacute;f&eacute;rences dans le secteur d'activit&eacute; qui vous correspond le mieux.
      <br>
    </p>
   </div>
     
     
      <div id="texte">
   
   <div id="titre"> Nous intervenons sur le terrain dans le sud de la France et le nord de l'Espagne</div>
     
 	<p><br>
   Et nous sommes &eacute;galement comp&eacute;tent sur le terrain National et Europ&eacute;en.</p>
      </div>

        <div id="texte"></div>
<% case "contact" %>
 <div id="texte">
   
   <div id="titre"> Contactez-nous</div> 
    <div style='margin-left:40px;'><!--#include file="_contact.asp" --></div>
</div>
<% case "offre"%>
   <div id="texte">
   <div id="titre">Notre offre </div>     
    <p > <br>
       Tarifs<br>
       <br>
       <br>
      -15% HT sur toutes les sommes encaiss&eacute;es.<br>
      -Certificat de pertes et profits et Production : 25.00 &euro; HT<br>
      Nous fonctionnons sans abonnement. La satisfaction de nos clients est notre seule garantie de recevoir d'autres dossiers.<br>
      <br>
      Nos d&eacute;marches</p>
    <p ><br>
      Nous intervenons d&eacute;s que nous recevons votre dossier. <span class="jaune">Nous allons sur place rencontrer votre d&eacute;biteur</span>,<br>
      nous &eacute;tablissons les moratoires et les garanties qui s'imposent. <br>
      <u>Seule une action rapide sur le terrain favorise le recouvrement dans les meilleures conditions. </u><br>
      <br>
Informations<br>
<br>
Vous recevez un compte rendu qui vous renseigne sur l'avancement de vos dossiers.<br>
Nous pouvons vous &eacute;tablir ce compte rendu accompagn&eacute; d'un relev&eacute; des sommes encaiss&eacute;es, <br>
selon la fr&eacute;quence que vous d&eacute;sirez, tous les mois ou tous les deux mois.<br>
<br>
Les poursuites<br>
<br>
Nous n'engageons pas de poursuites judiciaires sauf demande express de votre part.<br>
<br>
Si vous d&eacute;sirez nous faire engager une proc&eacute;dure judiciaire, tous les frais que nous exposons restent &agrave; votre charge, justificatifs &agrave; l'appui.<br>
Nous vous informons de l'&eacute;volution des proc&eacute;dures &agrave; l'occasion des rapports qui vous sont faits.
<br>
<br>
Remises des impay&eacute;s<br>
<br>
Les dossiers nous sont transmis avec les pi&egrave;ces qui constituent la cr&eacute;ance : factures, relev&eacute;s et courriers etc...<br>
Les dossiers sont cr&eacute;&eacute;s d&eacute;s r&eacute;ception. Un accus&eacute; de r&eacute;ception vous est exp&eacute;di&eacute; sous 48 heures.
<br>
    </p>
    <p >&nbsp;</p>
</div>
   <div id="texte"></div>
<% case "competences"%>
   <div id="texte">
   <div id="titre">Plus de 70% de dossiers résolus à l'amiable. </div>     
    <p > Nous favorisons une phase amiable, pour cela, chaque dossier donne lieu &agrave; des visites domiciliaires.<br>
      <br>
      <br>
    </p>
</div>
     
     
      <div id="texte">
   
   <div id="titre"> Une prise en charge personnalis&eacute;e, une action de terrain.</div>
     
 	<p>Tous nos collaborateurs, salari&eacute;s de l'entreprise, sont en permanence
&agrave; l'&eacute;coute de vos besoins sp&eacute;cifiques<br>
et leur pr&eacute;sence terrain permet de mieux cerner la solvabilit&eacute; des d&eacute;biteurs. </p>
      </div>
      
          <div id="texte">
   
   <div id="titre"> Devant la Justice...</div>
     
 	<p>Nous disposons d'un r&eacute;seau d'avocats et d'huissiers sur toute la France de sorte &agrave; permettre toutes actions n&eacute;c&eacute;ssaires.</p>
      </div>
      
      
      
      
      <% case else %>   
   <div id="texte">
   <div id="titre">Depuis plus de 30 ans </div>     
    <p > Nous sommes  au service de vos cr&eacute;ances commerciales... <br>
     Une &eacute;quipe de professionnels et des outils &eacute;prouv&eacute;s 
    nous permmettent chaque ann&eacute;e de traiter plus de <span class="jaune">7000</span> cr&eacute;ances. <br>
Plus de 1500 clients sur l'axe sud de France nous font confiance.
</p></div>
     
     
      <div id="texte">
   
   <div id="titre"> Des outils performants </div>
     
 	<p>
   Nos agences sont toutes informatis&eacute;es et disposent d'un mat&eacute;riel de haute technicit&eacute; ainsi que d'un <span class="jaune">logiciel propre &agrave; l'entreprise</span>. <br>
   Nos agences sont reli&eacute;es par un r&eacute;seau haut d&eacute;bit permettant une meilleure communication. </p>
   

</div>

        <div id="texte">
   
   <div id="titre"> D&eacute;ontologie et respect des r&egrave;gles l&eacute;gales  </div>
     
 	<p>
  
   Notre cabinet fonctionne <span class="jaune">en parfaite harmonie</span> avec la r&eacute;glementation en vigueur 	. En vertu du d&eacute;cret du 18/12/96, nous &eacute;tablissons un  contrat de mandat garantissant les modalit&eacute;s de notre collaboration . <br>
Les fonds per&ccedil;us sont vers&eacute;s sur un compte bancaire     sp&eacute;cialement affect&eacute;. Le cabinet <span class="jaune">s'engage</span> &agrave; ne r&eacute;clamer &agrave; vos d&eacute;biteurs que    les  sommes <span class="jaune">contractuellement</span> dues suivant vos conditions   g&eacute;n&eacute;rales de ventes (principal, clause p&eacute;nale, int&eacute;r&ecirc;ts de retard)           .<br>
Le cabinet est titulaire d'une assurance responsabilit&eacute; civile professionnelle            Mutuelle du Mans Assurances, n&deg;: 110005576 
   </p>

</div>


<div id="texte">
   
   <div id="titre"> Respect de la r&egrave;glementation.</div>
     
 	<p>Notre cabinet fonctionne en parfaite harmonie avec la r&eacute;glementation en vigueur :</p>
 	<p>- Nous sommes titulaire d'une Assurance Responsabilit&eacute; Civile Professionnelle de 152 449.02 &euro; ( Mutuelles du Mans Ct 110005576 ).<br>
 	  - En vertu du d&eacute;cret du 18/12/96 r&egrave;glementant notre profession, nous vous adressons un contrat de mandat vous garantissant des modalit&eacute;s de notre collaboration ( voir <a href="?aff=offre">Notre Offre</a> ) <br>
 	  - Les fonds per&ccedil;us sont revers&eacute;s sur un compte bancaire sp&eacute;cialement affect&eacute; &agrave; cet effet.<br>
 	  - Nous ne r&eacute;clamons &agrave; vos d&eacute;biteurs que les montants contractuellement et l&eacute;galement dus.</p>
      </div>

<% end select %>


 </DIV>
 </td></tr>
</table>
</div>









<div style='clear:both;margin:0px;'>
<!--#include file="_footer_mpod.asp" -->
</div>
</body>
</html>


