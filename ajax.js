// Fonction de creation de l'objet XMLHttpRequest qui resservira pour chaques fonctions AJAX
function getXhr()
 {
  if(window.XMLHttpRequest) xhr = new XMLHttpRequest(); 
  else if(window.ActiveXObject)
   {  
    try
     {
      xhr = new ActiveXObject("Msxml2.XMLHTTP");
     }
    catch (e)
     {
      xhr = new ActiveXObject("Microsoft.XMLHTTP");
     }
   }
  else 
   { 
    alert("Votre navigateur ne supporte pas les objets XMLHTTPRequest, veuillez le mettre à jour"); 
    xhr = false; 
   } 
 }

function lister_champs(theform)//icic la fonction qui va générer les éléments a envoyer
{
   var url='';
   for (i=0; i<theform.elements.length; i++)
   {
       if(((theform.elements[i].type=='radio' ||theform.elements[i].type=='checkbox') && theform.elements[i].checked==true) || (theform.elements[i].type!='radio' &&theform.elements[i].type!='checkbox'))//control si c'est des radio ou check box et incrémente le résultat QUE si c'est coché (sans ça il prendrais les deux)
           {
   if(theform.elements[i].type=='select-multiple' || theform.elements[i].type=='select' )//si c'est un select multiple 
   {
    for(j = theform.elements[i].length-1; j >= 0; j-=1)//on parcours les element du select multiple
       {
          if(theform.elements[i].options[j].selected)//si selectionné on incremente
             {
                             if(url){url+='&';}
           url+=theform.elements[i].name+'='+theform.elements[i].options[j].value;
             }
     }
   }
   if(url){url+='&';}
   if(theform.elements[i].type!='select-multiple'){  url+=theform.elements[i].name+'='+theform.elements[i].value;}
           }
        }
return url;//onretourne le resultat vers la fonction appelée
}

function envoi_catalogue(theform)
 {
  getXhr();
  xhr.onreadystatechange = function()
   {
    if(xhr.readyState == 4 && xhr.status == 200)
     {
      // Nous remplacons le contenu du div mondiv par le retour de "ajax.php"
	
  
	
//document.getElementById('tdcontainer').style.display='none';

       	alert('ok');

 document.getElementById('slidescontenu').innerHTML = xhr.responseText;
 $("#slidescontenu").show("slide", { direction: "up" }, 1000);	  
	  
	 
			// gros slide
			$('#slides').slides({
				preload: true,
				preloadImage: 'images2/loading.gif',
				play: 10000,
				pause: 5000,
				hoverPause: true,
				effect: 'fade'
				
			});
		
	  
	  
     }
   }
  xhr.open("POST",'_catalogue.asp',true);
  xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
  xhr.send(lister_champs(document.formrecherche));
  return false; // /!\il est important d'ajouter ça afin que la page ne soit pas rappelée par le post!!/!\
 }
// JavaScript Document