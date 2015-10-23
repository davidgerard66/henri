<table width="780"  align="center">
    <tr>
      <td width="400" align="center" valign="top"><img src="images2/pointille_compte.jpg" width="105" height="30"></td>
    <td width="320" height="230" align="center" valign="middle" style=" background-image:url(images2/fondboitecmpte.jpg); background-position:center; background-repeat:no-repeat;">
    <form name="formconnexion" method="post" action="faire-part-infos.asp?aff=connexion">
  
   
    <table width="300" border="0" cellpadding="6" style="font-size:12px;margin:8px;margin-right:12px;">
      <tr>
        <td align="center"><img src="images2/nouveau_compte.jpg" width="114" height="30"></td>
      </tr>
      <tr>
        <td align="right">email ou n&deg; de client : 
          <label for="comptepass"></label>
          <input name="compteemail" type="text" id="compteemail" value="<%=request.querystring("id_client")%>" size="20"></td>
      </tr>
      <tr>
        <td align="right">mot de passe :
<label for="textfield3"></label>
          <input name="comptepass" type="password" id="comptepass" size="20"></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center"><input type="image" name="imageField" id="imageField" src="images2/bt_client.jpg"></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
    </table> 
    </form></td>
    <td align="center" valign="top"><%if evenement<>"MARIAGE" then%><img src="images2/oiseau_compte.jpg" width="170" height="110"><% end if%></td>
    <td align="center" valign="middle" style="margin-top:14px;">
    
   
    <table width="240" border="0" cellpadding="6" style="font-size:12px;">
     
      <tr>
        <td align="center"><img src="images2/nouveau_client.jpg" width="150" height="30"></td>
      </tr>
      
      
      <tr>
        <td align="center">
        
        <a href="http://www.faire-part-creatif.com/faire-part-infos.asp?aff=creer">
        
        <img src="images2/bt_nouveauclient.jpg" alt="Cr&eacute;er un compte faire-part cr&eacute;atif" width="137" height="33" border="0"></a>
        </td>
      </tr>
      
      <tr>
        <td height="85" align="center">&nbsp;</td>
      </tr>
    </table>
    
    
    </td>
  </tr>
</table>