



$(document).ready(function(){
	//References
	var pages = $("ul li");
	
	var loading = $("#loading");
	var content = $("#content");
	
	
   // on desactive les liens classiques href quand on est sur la page catalogue --> on passe en ajax
  // $("#menu-nav a").removeAttr("href");
   // on laisse le lien sur accueil
  // $("#homeentete").attr('href','http:////www.faire-part-creatif.com');
	
	//show loading bar
	function showLoading(){
		
		loading
			.css({visibility:"visible"})
			.css({opacity:"1"})
			.css({display:"block"});
			
		content.fadeTo(300, 0);
		
	};
	//hide loading bar
	function hideLoading(){
		
				
		loading.fadeTo(1000, 0);
	};
	




	//Manage click events
	
	pages.click(function(){
				//show the loading bar
		showLoading();
		
		
		// decalage des numeros de pages
		 lid = $(this).attr('id');
		decal = (lid)*25;
		//decal = decal - 92;
		if (decal <0) {decal=0};
	
		 gauche = $("#liencontenu").css('left');
		
		gauche = gauche.replace("px","");
		 positionactuel = parseInt(gauche);
		
		limite = parseInt(document.getElementById("menu").style.width)-40;
		if (positionactuel < -(limite)) {positionactuel  = -limite};
		
		decal = decal - ( - positionactuel + 92) ;
		
				
		//alert(decal);
		
	      decalstring = '-=' + decal + '';
		
			 $('#liencontenu').animate({
	  'left' : decalstring
		  
	  },300); 
		
		
		
		//( $("#liencontenu").css('left','-'+decal) );
		
		
		
		//Highlight current page number
		pages.css({'font-size' : '11px'});
		pages.css({'color' : '#735b71'});
		pages.css({'font-weight' : 'normal'});
		//pages.css({'background-image' : 'url(images2/bulle.gif)'});
		pages.css({'padding-bottom' : '0px'});
		pages.css({'background-color' : '#fff'});
		
		//fdf1fc
		
		//$(this).css({'background-color' : 'yellow'});
		$(this).css({'font-size' : '11px'});
		$(this).css({'color' : 'white'});		
		$(this).css({'font-weight' : 'bold'});
		$(this).css({'padding-bottom' : '0px'});
		$(this).css({'background-color' : '#cab6c2'});
		
		

     
	  var i = $(this).attr('id');
	  i = parseInt(i);
	  

		

		//Load content
		var pageNum = this.id;
		var targetUrl = "_ajax_catalogue_content.asp?page=" + pageNum + "&" + $("#myForm").serialize() + " #content";
	targetUrl = targetUrl.replace("%C3%A9","é");
	targetUrl = targetUrl.replace("%C3%A9","é");
	targetUrl = targetUrl.replace("%C3%A8","è");
	targetUrl = targetUrl.replace("%C3%A8","è");
	targetUrl = targetUrl.replace("%C3%A0","à");
	targetUrl = targetUrl.replace("%C3%A0","à");
	targetUrl = targetUrl.replace("%C3%AA","ê");
			targetUrl = targetUrl.replace("%C3%A7","ç");

		content.load(targetUrl, hideLoading);
		content.fadeTo(450, 100);
	});
	
	//default - 1st page
	$("#1").css({'font-size' : '11px'});
		$("#1").css({'color' : 'white'});
			$("#1").css({'font-weight' : 'bold'});
			$("#1").css({'padding-bottom' : '0px'});
			$("#1").css({'background-color' : '#cab6c2'});
	//$("#1").css({'background-image' : 'url(images2/bulle_on.gif)'});
	
	var targetUrl = "_ajax_catalogue_content.asp?page=1&" + $("#myForm").serialize() + " #content";
	targetUrl = targetUrl.replace("%C3%A9","é");
	targetUrl = targetUrl.replace("%C3%A9","é");
	targetUrl = targetUrl.replace("%C3%A8","è");
	targetUrl = targetUrl.replace("%C3%A8","è");
	targetUrl = targetUrl.replace("%C3%A0","à");
	targetUrl = targetUrl.replace("%C3%A0","à");
		targetUrl = targetUrl.replace("%C3%AA","ê");
			targetUrl = targetUrl.replace("%C3%A7","ç");

	//alert(targetUrl);
	showLoading();
	content.load(targetUrl, hideLoading);
	//alert(content.html());
	content.fadeTo(300, 100);
});