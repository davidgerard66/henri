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
   
   var reg=new RegExp(" ", "g"); // gere les espaces dans les valeurs
   var valeur = (theform.elements[i].value).replace(reg,"%20");
  
  //  reg=new RegExp("/", "g");
	//valeur = valeur.replace(reg,"%2f");
 
   if(theform.elements[i].type!='select-multiple'){  url+=theform.elements[i].name+'='+valeur}
           }
        }
return url;//onretourne le resultat vers la fonction appelée
}

function envoi_theform(theform)
 {
  getXhr();
  xhr.onreadystatechange = function()
   {
    if(xhr.readyState == 4 && xhr.status == 200)
     {
      // Nous remplacons le contenu du div mondiv par le retour de "ajax.php"
	
  
  
      var reponse = xhr.responseText;
	  //alert(reponse);
	  reponse = reponse.split("@");
	  
	  //alert(reponse[0]);
	 document.getElementById('qte').value = reponse[0];
	 document.getElementById('resultatdevis').innerHTML = reponse[1];
	$("#loaderdevis").hide();
	$("#lignedevis").fadeIn('slow');
	
	  
	  
     }
   }
  
  xhr.open("POST",'faire-part-devis-rapide-ajax.asp',true);
  xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
  xhr.send(lister_champs(document.formdevis));
  return false; // /!\il est important d'ajouter ça afin que la page ne soit pas rappelée par le post!!/!\
 }
// JavaScript Document
function requeteajax_synchrone(methode,url,laform) {
	
	
	  getXhr();
  
  xhr.onreadystatechange = function()
   {
    if(xhr.readyState == 4 && xhr.status == 200)
     {
      // Nous remplacons le contenu du div mondiv par le retour de "ajax.asp"
	 // uniquement en cas asynchrone

     }
   }
  if (methode=='GET') {
	  xhr.open('GET', url  , false);                  
	  xhr.send(null);
  } else { 
      // si c pas un GET  c un POST
	  xhr.open('POST', url, false);                  
	  xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	  xhr.send(lister_champs(laform));
	  
   }
     var reponse =  xhr.responseText;
	
	 return reponse;

	
	}